unit AWS.SNS.Transform.InvalidParameterValueExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.InvalidParameterValueException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidParameterValueExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidParameterValueException, TXmlUnmarshallerContext>;
  
  TInvalidParameterValueExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidParameterValueException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidParameterValueExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidParameterValueException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterValueException; overload;
    class function Instance: IInvalidParameterValueExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidParameterValueExceptionUnmarshaller }

function TInvalidParameterValueExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidParameterValueException;
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

function TInvalidParameterValueExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterValueException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidParameterValueException;
begin
  Response := EInvalidParameterValueException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidParameterValueExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidParameterValueExceptionUnmarshaller.Create;
end;

class function TInvalidParameterValueExceptionUnmarshaller.Instance: IInvalidParameterValueExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
