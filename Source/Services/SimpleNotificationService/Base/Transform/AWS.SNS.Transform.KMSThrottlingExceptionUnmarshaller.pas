unit AWS.SNS.Transform.KMSThrottlingExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSThrottlingException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKMSThrottlingExceptionUnmarshaller = IErrorResponseUnmarshaller<EKMSThrottlingException, TXmlUnmarshallerContext>;
  
  TKMSThrottlingExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EKMSThrottlingException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKMSThrottlingExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EKMSThrottlingException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSThrottlingException; overload;
    class function Instance: IKMSThrottlingExceptionUnmarshaller; static;
  end;
  
implementation

{ TKMSThrottlingExceptionUnmarshaller }

function TKMSThrottlingExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EKMSThrottlingException;
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

function TKMSThrottlingExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSThrottlingException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EKMSThrottlingException;
begin
  Response := EKMSThrottlingException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TKMSThrottlingExceptionUnmarshaller.Create;
begin
  FInstance := TKMSThrottlingExceptionUnmarshaller.Create;
end;

class function TKMSThrottlingExceptionUnmarshaller.Instance: IKMSThrottlingExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
