unit AWS.SNS.Transform.VerificationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.VerificationException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVerificationExceptionUnmarshaller = IErrorResponseUnmarshaller<EVerificationException, TXmlUnmarshallerContext>;
  
  TVerificationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EVerificationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IVerificationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EVerificationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EVerificationException; overload;
    class function Instance: IVerificationExceptionUnmarshaller; static;
  end;
  
implementation

{ TVerificationExceptionUnmarshaller }

function TVerificationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EVerificationException;
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

function TVerificationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EVerificationException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EVerificationException;
begin
  Response := EVerificationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TVerificationExceptionUnmarshaller.Create;
begin
  FInstance := TVerificationExceptionUnmarshaller.Create;
end;

class function TVerificationExceptionUnmarshaller.Instance: IVerificationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
