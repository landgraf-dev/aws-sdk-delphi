unit AWS.SES.Transform.EventDestinationAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.EventDestinationAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEventDestinationAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EEventDestinationAlreadyExistsException, TXmlUnmarshallerContext>;
  
  TEventDestinationAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EEventDestinationAlreadyExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEventDestinationAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EEventDestinationAlreadyExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEventDestinationAlreadyExistsException; overload;
    class function Instance: IEventDestinationAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TEventDestinationAlreadyExistsExceptionUnmarshaller }

function TEventDestinationAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EEventDestinationAlreadyExistsException;
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

function TEventDestinationAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEventDestinationAlreadyExistsException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EEventDestinationAlreadyExistsException;
begin
  Response := EEventDestinationAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TEventDestinationAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TEventDestinationAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TEventDestinationAlreadyExistsExceptionUnmarshaller.Instance: IEventDestinationAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
