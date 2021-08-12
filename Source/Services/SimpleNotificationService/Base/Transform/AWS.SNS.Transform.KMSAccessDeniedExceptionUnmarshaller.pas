unit AWS.SNS.Transform.KMSAccessDeniedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSAccessDeniedException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKMSAccessDeniedExceptionUnmarshaller = IErrorResponseUnmarshaller<EKMSAccessDeniedException, TXmlUnmarshallerContext>;
  
  TKMSAccessDeniedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EKMSAccessDeniedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKMSAccessDeniedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EKMSAccessDeniedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSAccessDeniedException; overload;
    class function Instance: IKMSAccessDeniedExceptionUnmarshaller; static;
  end;
  
implementation

{ TKMSAccessDeniedExceptionUnmarshaller }

function TKMSAccessDeniedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EKMSAccessDeniedException;
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

function TKMSAccessDeniedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSAccessDeniedException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EKMSAccessDeniedException;
begin
  Response := EKMSAccessDeniedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TKMSAccessDeniedExceptionUnmarshaller.Create;
begin
  FInstance := TKMSAccessDeniedExceptionUnmarshaller.Create;
end;

class function TKMSAccessDeniedExceptionUnmarshaller.Instance: IKMSAccessDeniedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
