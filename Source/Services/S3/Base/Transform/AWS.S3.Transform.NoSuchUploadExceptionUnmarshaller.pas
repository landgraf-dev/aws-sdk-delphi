unit AWS.S3.Transform.NoSuchUploadExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.NoSuchUploadException, 
  AWS.Internal.ErrorResponse;

type
  INoSuchUploadExceptionUnmarshaller = IErrorResponseUnmarshaller<ENoSuchUploadException, TXmlUnmarshallerContext>;
  
  TNoSuchUploadExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENoSuchUploadException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INoSuchUploadExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchUploadException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchUploadException; overload;
    class function Instance: INoSuchUploadExceptionUnmarshaller; static;
  end;
  
implementation

{ TNoSuchUploadExceptionUnmarshaller }

function TNoSuchUploadExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchUploadException;
begin
  raise ENotImplemented.Create('TNoSuchUploadExceptionUnmarshaller.Unmarshall');
end;

function TNoSuchUploadExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchUploadException;
var
  Response: ENoSuchUploadException;
begin
  Response := ENoSuchUploadException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNoSuchUploadExceptionUnmarshaller.Create;
begin
  FInstance := TNoSuchUploadExceptionUnmarshaller.Create;
end;

class function TNoSuchUploadExceptionUnmarshaller.Instance: INoSuchUploadExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
