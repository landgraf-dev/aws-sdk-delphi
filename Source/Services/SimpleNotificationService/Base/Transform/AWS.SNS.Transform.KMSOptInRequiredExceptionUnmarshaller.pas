unit AWS.SNS.Transform.KMSOptInRequiredExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSOptInRequiredException, 
  AWS.Internal.ErrorResponse;

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
  Response: EKMSOptInRequiredException;
begin
  Response := EKMSOptInRequiredException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
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
