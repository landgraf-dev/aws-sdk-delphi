unit AWS.SNS.Transform.ThrottledExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.ThrottledException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IThrottledExceptionUnmarshaller = IErrorResponseUnmarshaller<EThrottledException, TXmlUnmarshallerContext>;
  
  TThrottledExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EThrottledException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IThrottledExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EThrottledException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EThrottledException; overload;
    class function Instance: IThrottledExceptionUnmarshaller; static;
  end;
  
implementation

{ TThrottledExceptionUnmarshaller }

function TThrottledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EThrottledException;
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

function TThrottledExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EThrottledException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EThrottledException;
begin
  Response := EThrottledException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TThrottledExceptionUnmarshaller.Create;
begin
  FInstance := TThrottledExceptionUnmarshaller.Create;
end;

class function TThrottledExceptionUnmarshaller.Instance: IThrottledExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
