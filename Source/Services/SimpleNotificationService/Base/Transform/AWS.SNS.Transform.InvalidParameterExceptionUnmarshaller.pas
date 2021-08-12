unit AWS.SNS.Transform.InvalidParameterExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.InvalidParameterException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidParameterExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidParameterException, TXmlUnmarshallerContext>;
  
  TInvalidParameterExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidParameterException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidParameterExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidParameterException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterException; overload;
    class function Instance: IInvalidParameterExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidParameterExceptionUnmarshaller }

function TInvalidParameterExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidParameterException;
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

function TInvalidParameterExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidParameterException;
begin
  Response := EInvalidParameterException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidParameterExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidParameterExceptionUnmarshaller.Create;
end;

class function TInvalidParameterExceptionUnmarshaller.Instance: IInvalidParameterExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
