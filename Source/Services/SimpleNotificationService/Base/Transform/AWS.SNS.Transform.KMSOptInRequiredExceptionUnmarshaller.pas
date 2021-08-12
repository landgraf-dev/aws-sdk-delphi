unit AWS.SNS.Transform.KMSOptInRequiredExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSOptInRequiredException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKMSOptInRequiredExceptionUnmarshaller = IErrorResponseUnmarshaller<EKMSOptInRequiredException, TXmlUnmarshallerContext>;
  
  TKMSOptInRequiredExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EKMSOptInRequiredException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKMSOptInRequiredExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EKMSOptInRequiredException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSOptInRequiredException; overload;
    class function Instance: IKMSOptInRequiredExceptionUnmarshaller; static;
  end;
  
implementation

{ TKMSOptInRequiredExceptionUnmarshaller }

function TKMSOptInRequiredExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EKMSOptInRequiredException;
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

function TKMSOptInRequiredExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSOptInRequiredException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EKMSOptInRequiredException;
begin
  Response := EKMSOptInRequiredException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TKMSOptInRequiredExceptionUnmarshaller.Create;
begin
  FInstance := TKMSOptInRequiredExceptionUnmarshaller.Create;
end;

class function TKMSOptInRequiredExceptionUnmarshaller.Instance: IKMSOptInRequiredExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
