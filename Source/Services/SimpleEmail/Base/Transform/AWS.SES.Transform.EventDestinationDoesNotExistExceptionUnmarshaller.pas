unit AWS.SES.Transform.EventDestinationDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.EventDestinationDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEventDestinationDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EEventDestinationDoesNotExistException, TXmlUnmarshallerContext>;
  
  TEventDestinationDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EEventDestinationDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEventDestinationDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EEventDestinationDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEventDestinationDoesNotExistException; overload;
    class function Instance: IEventDestinationDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TEventDestinationDoesNotExistExceptionUnmarshaller }

function TEventDestinationDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EEventDestinationDoesNotExistException;
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

function TEventDestinationDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEventDestinationDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EEventDestinationDoesNotExistException;
begin
  Response := EEventDestinationDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TEventDestinationDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TEventDestinationDoesNotExistExceptionUnmarshaller.Create;
end;

class function TEventDestinationDoesNotExistExceptionUnmarshaller.Instance: IEventDestinationDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
