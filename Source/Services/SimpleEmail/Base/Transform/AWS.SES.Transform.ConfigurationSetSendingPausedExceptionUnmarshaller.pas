unit AWS.SES.Transform.ConfigurationSetSendingPausedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.ConfigurationSetSendingPausedException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConfigurationSetSendingPausedExceptionUnmarshaller = IErrorResponseUnmarshaller<EConfigurationSetSendingPausedException, TXmlUnmarshallerContext>;
  
  TConfigurationSetSendingPausedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EConfigurationSetSendingPausedException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IConfigurationSetSendingPausedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EConfigurationSetSendingPausedException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EConfigurationSetSendingPausedException; overload;
    class function Instance: IConfigurationSetSendingPausedExceptionUnmarshaller; static;
  end;
  
implementation

{ TConfigurationSetSendingPausedExceptionUnmarshaller }

function TConfigurationSetSendingPausedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EConfigurationSetSendingPausedException;
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

function TConfigurationSetSendingPausedExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EConfigurationSetSendingPausedException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EConfigurationSetSendingPausedException;
begin
  Response := EConfigurationSetSendingPausedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('ConfigurationSetName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.ConfigurationSetName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TConfigurationSetSendingPausedExceptionUnmarshaller.Create;
begin
  FInstance := TConfigurationSetSendingPausedExceptionUnmarshaller.Create;
end;

class function TConfigurationSetSendingPausedExceptionUnmarshaller.Instance: IConfigurationSetSendingPausedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
