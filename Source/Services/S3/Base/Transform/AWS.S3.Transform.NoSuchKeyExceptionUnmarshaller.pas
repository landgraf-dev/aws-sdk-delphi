unit AWS.S3.Transform.NoSuchKeyExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.NoSuchKeyException, 
  AWS.Internal.ErrorResponse;

type
  INoSuchKeyExceptionUnmarshaller = IErrorResponseUnmarshaller<ENoSuchKeyException, TXmlUnmarshallerContext>;
  
  TNoSuchKeyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENoSuchKeyException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INoSuchKeyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchKeyException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchKeyException; overload;
    class function Instance: INoSuchKeyExceptionUnmarshaller; static;
  end;
  
implementation

{ TNoSuchKeyExceptionUnmarshaller }

function TNoSuchKeyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchKeyException;
begin
  raise ENotImplemented.Create('TNoSuchKeyExceptionUnmarshaller.Unmarshall');
end;

function TNoSuchKeyExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchKeyException;
var
  Response: ENoSuchKeyException;
begin
  Response := ENoSuchKeyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNoSuchKeyExceptionUnmarshaller.Create;
begin
  FInstance := TNoSuchKeyExceptionUnmarshaller.Create;
end;

class function TNoSuchKeyExceptionUnmarshaller.Instance: INoSuchKeyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
