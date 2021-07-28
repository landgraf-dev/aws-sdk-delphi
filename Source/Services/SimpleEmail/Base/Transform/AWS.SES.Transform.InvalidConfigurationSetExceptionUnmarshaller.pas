unit AWS.SES.Transform.InvalidConfigurationSetExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.InvalidConfigurationSetException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidConfigurationSetExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidConfigurationSetException, TXmlUnmarshallerContext>;
  
  TInvalidConfigurationSetExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidConfigurationSetException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidConfigurationSetExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidConfigurationSetException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidConfigurationSetException; overload;
    class function Instance: IInvalidConfigurationSetExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidConfigurationSetExceptionUnmarshaller }

function TInvalidConfigurationSetExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidConfigurationSetException;
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

function TInvalidConfigurationSetExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidConfigurationSetException;
var
  OriginalDepth: Integer;
  Response: EInvalidConfigurationSetException;
begin
  Response := EInvalidConfigurationSetException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidConfigurationSetExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidConfigurationSetExceptionUnmarshaller.Create;
end;

class function TInvalidConfigurationSetExceptionUnmarshaller.Instance: IInvalidConfigurationSetExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
