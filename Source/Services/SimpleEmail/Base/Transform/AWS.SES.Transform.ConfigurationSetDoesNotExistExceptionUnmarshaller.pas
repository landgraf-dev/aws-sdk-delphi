unit AWS.SES.Transform.ConfigurationSetDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.ConfigurationSetDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConfigurationSetDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<EConfigurationSetDoesNotExistException, TXmlUnmarshallerContext>;
  
  TConfigurationSetDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EConfigurationSetDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IConfigurationSetDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EConfigurationSetDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EConfigurationSetDoesNotExistException; overload;
    class function Instance: IConfigurationSetDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TConfigurationSetDoesNotExistExceptionUnmarshaller }

function TConfigurationSetDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EConfigurationSetDoesNotExistException;
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

function TConfigurationSetDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EConfigurationSetDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EConfigurationSetDoesNotExistException;
begin
  Response := EConfigurationSetDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TConfigurationSetDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TConfigurationSetDoesNotExistExceptionUnmarshaller.Create;
end;

class function TConfigurationSetDoesNotExistExceptionUnmarshaller.Instance: IConfigurationSetDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
