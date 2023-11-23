unit AWS.S3Control.Transform.NoSuchPublicAccessBlockConfigurationExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.NoSuchPublicAccessBlockConfigurationException, 
  AWS.Internal.ErrorResponse;

type
  INoSuchPublicAccessBlockConfigurationExceptionUnmarshaller = IErrorResponseUnmarshaller<ENoSuchPublicAccessBlockConfigurationException, TXmlUnmarshallerContext>;
  
  TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENoSuchPublicAccessBlockConfigurationException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INoSuchPublicAccessBlockConfigurationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchPublicAccessBlockConfigurationException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchPublicAccessBlockConfigurationException; overload;
    class function Instance: INoSuchPublicAccessBlockConfigurationExceptionUnmarshaller; static;
  end;
  
implementation

{ TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller }

function TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchPublicAccessBlockConfigurationException;
begin
  raise ENotImplemented.Create('TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Unmarshall');
end;

function TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchPublicAccessBlockConfigurationException;
var
  Response: ENoSuchPublicAccessBlockConfigurationException;
begin
  Response := ENoSuchPublicAccessBlockConfigurationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Create;
begin
  FInstance := TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Create;
end;

class function TNoSuchPublicAccessBlockConfigurationExceptionUnmarshaller.Instance: INoSuchPublicAccessBlockConfigurationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
