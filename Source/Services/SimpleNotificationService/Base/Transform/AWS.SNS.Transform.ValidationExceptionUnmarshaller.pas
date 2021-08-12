unit AWS.SNS.Transform.ValidationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.ValidationException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IValidationExceptionUnmarshaller = IErrorResponseUnmarshaller<EValidationException, TXmlUnmarshallerContext>;
  
  TValidationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EValidationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IValidationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EValidationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EValidationException; overload;
    class function Instance: IValidationExceptionUnmarshaller; static;
  end;
  
implementation

{ TValidationExceptionUnmarshaller }

function TValidationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EValidationException;
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

function TValidationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EValidationException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EValidationException;
begin
  Response := EValidationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Message', TargetDepth) then
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

class constructor TValidationExceptionUnmarshaller.Create;
begin
  FInstance := TValidationExceptionUnmarshaller.Create;
end;

class function TValidationExceptionUnmarshaller.Instance: IValidationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
