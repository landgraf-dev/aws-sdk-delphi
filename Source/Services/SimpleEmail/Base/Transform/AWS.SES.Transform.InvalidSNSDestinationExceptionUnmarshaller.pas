unit AWS.SES.Transform.InvalidSNSDestinationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidSNSDestinationException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidSNSDestinationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidSNSDestinationException, TXmlUnmarshallerContext>;
  
  TInvalidSNSDestinationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidSNSDestinationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidSNSDestinationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidSNSDestinationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSNSDestinationException; overload;
    class function Instance: IInvalidSNSDestinationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidSNSDestinationExceptionUnmarshaller }

function TInvalidSNSDestinationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidSNSDestinationException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TInvalidSNSDestinationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSNSDestinationException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidSNSDestinationException;
begin
  Response := EInvalidSNSDestinationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ConfigurationSetName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.ConfigurationSetName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('EventDestinationName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.EventDestinationName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidSNSDestinationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidSNSDestinationExceptionUnmarshaller.Create;
end;

class function TInvalidSNSDestinationExceptionUnmarshaller.Instance: IInvalidSNSDestinationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
