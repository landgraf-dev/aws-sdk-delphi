unit AWS.SES.Transform.InvalidRenderingParameterExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidRenderingParameterException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidRenderingParameterExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidRenderingParameterException, TXmlUnmarshallerContext>;
  
  TInvalidRenderingParameterExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidRenderingParameterException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidRenderingParameterExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidRenderingParameterException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRenderingParameterException; overload;
    class function Instance: IInvalidRenderingParameterExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidRenderingParameterExceptionUnmarshaller }

function TInvalidRenderingParameterExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidRenderingParameterException;
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

function TInvalidRenderingParameterExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRenderingParameterException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidRenderingParameterException;
begin
  Response := EInvalidRenderingParameterException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('TemplateName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.TemplateName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidRenderingParameterExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidRenderingParameterExceptionUnmarshaller.Create;
end;

class function TInvalidRenderingParameterExceptionUnmarshaller.Instance: IInvalidRenderingParameterExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
