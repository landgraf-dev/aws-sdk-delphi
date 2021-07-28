unit AWS.SES.Transform.ConfigurationSetAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.ConfigurationSetAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IConfigurationSetAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EConfigurationSetAlreadyExistsException, TXmlUnmarshallerContext>;
  
  TConfigurationSetAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EConfigurationSetAlreadyExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IConfigurationSetAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EConfigurationSetAlreadyExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EConfigurationSetAlreadyExistsException; overload;
    class function Instance: IConfigurationSetAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TConfigurationSetAlreadyExistsExceptionUnmarshaller }

function TConfigurationSetAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EConfigurationSetAlreadyExistsException;
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

function TConfigurationSetAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EConfigurationSetAlreadyExistsException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: EConfigurationSetAlreadyExistsException;
begin
  Response := EConfigurationSetAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TConfigurationSetAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TConfigurationSetAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TConfigurationSetAlreadyExistsExceptionUnmarshaller.Instance: IConfigurationSetAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
