unit AWS.S3.Transform.NoSuchBucketExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.NoSuchBucketException, 
  AWS.Internal.ErrorResponse;

type
  INoSuchBucketExceptionUnmarshaller = IErrorResponseUnmarshaller<ENoSuchBucketException, TXmlUnmarshallerContext>;
  
  TNoSuchBucketExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ENoSuchBucketException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: INoSuchBucketExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchBucketException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchBucketException; overload;
    class function Instance: INoSuchBucketExceptionUnmarshaller; static;
  end;
  
implementation

{ TNoSuchBucketExceptionUnmarshaller }

function TNoSuchBucketExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ENoSuchBucketException;
begin
  raise ENotImplemented.Create('TNoSuchBucketExceptionUnmarshaller.Unmarshall');
end;

function TNoSuchBucketExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ENoSuchBucketException;
var
  Response: ENoSuchBucketException;
begin
  Response := ENoSuchBucketException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TNoSuchBucketExceptionUnmarshaller.Create;
begin
  FInstance := TNoSuchBucketExceptionUnmarshaller.Create;
end;

class function TNoSuchBucketExceptionUnmarshaller.Instance: INoSuchBucketExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
