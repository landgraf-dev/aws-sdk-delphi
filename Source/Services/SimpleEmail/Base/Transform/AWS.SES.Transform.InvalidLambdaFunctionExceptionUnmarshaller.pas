unit AWS.SES.Transform.InvalidLambdaFunctionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidLambdaFunctionException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidLambdaFunctionExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidLambdaFunctionException, TXmlUnmarshallerContext>;
  
  TInvalidLambdaFunctionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidLambdaFunctionException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidLambdaFunctionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidLambdaFunctionException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidLambdaFunctionException; overload;
    class function Instance: IInvalidLambdaFunctionExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidLambdaFunctionExceptionUnmarshaller }

function TInvalidLambdaFunctionExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidLambdaFunctionException;
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

function TInvalidLambdaFunctionExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidLambdaFunctionException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidLambdaFunctionException;
begin
  Response := EInvalidLambdaFunctionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('FunctionArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.FunctionArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidLambdaFunctionExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidLambdaFunctionExceptionUnmarshaller.Create;
end;

class function TInvalidLambdaFunctionExceptionUnmarshaller.Instance: IInvalidLambdaFunctionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
