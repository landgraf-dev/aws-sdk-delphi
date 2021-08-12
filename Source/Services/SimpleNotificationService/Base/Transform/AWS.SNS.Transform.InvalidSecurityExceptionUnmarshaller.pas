unit AWS.SNS.Transform.InvalidSecurityExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.InvalidSecurityException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidSecurityExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidSecurityException, TXmlUnmarshallerContext>;
  
  TInvalidSecurityExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidSecurityException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidSecurityExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidSecurityException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSecurityException; overload;
    class function Instance: IInvalidSecurityExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidSecurityExceptionUnmarshaller }

function TInvalidSecurityExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidSecurityException;
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

function TInvalidSecurityExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSecurityException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidSecurityException;
begin
  Response := EInvalidSecurityException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidSecurityExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidSecurityExceptionUnmarshaller.Create;
end;

class function TInvalidSecurityExceptionUnmarshaller.Instance: IInvalidSecurityExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
