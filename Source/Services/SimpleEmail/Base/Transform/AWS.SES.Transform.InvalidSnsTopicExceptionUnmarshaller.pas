unit AWS.SES.Transform.InvalidSnsTopicExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidSnsTopicException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInvalidSnsTopicExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidSnsTopicException, TXmlUnmarshallerContext>;
  
  TInvalidSnsTopicExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidSnsTopicException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidSnsTopicExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidSnsTopicException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSnsTopicException; overload;
    class function Instance: IInvalidSnsTopicExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidSnsTopicExceptionUnmarshaller }

function TInvalidSnsTopicExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidSnsTopicException;
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

function TInvalidSnsTopicExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSnsTopicException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EInvalidSnsTopicException;
begin
  Response := EInvalidSnsTopicException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Topic', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Topic := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TInvalidSnsTopicExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidSnsTopicExceptionUnmarshaller.Create;
end;

class function TInvalidSnsTopicExceptionUnmarshaller.Instance: IInvalidSnsTopicExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
