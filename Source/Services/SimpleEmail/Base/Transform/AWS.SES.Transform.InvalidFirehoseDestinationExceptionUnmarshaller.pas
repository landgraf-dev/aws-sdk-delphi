unit AWS.SES.Transform.InvalidFirehoseDestinationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidFirehoseDestinationException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidFirehoseDestinationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidFirehoseDestinationException, TXmlUnmarshallerContext>;
  
  TInvalidFirehoseDestinationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidFirehoseDestinationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidFirehoseDestinationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidFirehoseDestinationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFirehoseDestinationException; overload;
    class function Instance: IInvalidFirehoseDestinationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidFirehoseDestinationExceptionUnmarshaller }

function TInvalidFirehoseDestinationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidFirehoseDestinationException;
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

function TInvalidFirehoseDestinationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidFirehoseDestinationException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidFirehoseDestinationException;
begin
  Response := EInvalidFirehoseDestinationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidFirehoseDestinationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidFirehoseDestinationExceptionUnmarshaller.Create;
end;

class function TInvalidFirehoseDestinationExceptionUnmarshaller.Instance: IInvalidFirehoseDestinationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
