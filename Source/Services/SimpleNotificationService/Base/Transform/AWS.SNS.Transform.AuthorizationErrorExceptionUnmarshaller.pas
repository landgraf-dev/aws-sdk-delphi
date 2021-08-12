unit AWS.SNS.Transform.AuthorizationErrorExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.AuthorizationErrorException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAuthorizationErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<EAuthorizationErrorException, TXmlUnmarshallerContext>;
  
  TAuthorizationErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAuthorizationErrorException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAuthorizationErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EAuthorizationErrorException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EAuthorizationErrorException; overload;
    class function Instance: IAuthorizationErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TAuthorizationErrorExceptionUnmarshaller }

function TAuthorizationErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EAuthorizationErrorException;
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

function TAuthorizationErrorExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EAuthorizationErrorException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EAuthorizationErrorException;
begin
  Response := EAuthorizationErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TAuthorizationErrorExceptionUnmarshaller.Create;
begin
  FInstance := TAuthorizationErrorExceptionUnmarshaller.Create;
end;

class function TAuthorizationErrorExceptionUnmarshaller.Instance: IAuthorizationErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
