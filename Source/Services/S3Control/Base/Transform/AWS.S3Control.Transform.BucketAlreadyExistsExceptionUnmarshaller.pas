unit AWS.S3Control.Transform.BucketAlreadyExistsExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3Control.Model.BucketAlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IBucketAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EBucketAlreadyExistsException, TXmlUnmarshallerContext>;
  
  TBucketAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBucketAlreadyExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBucketAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EBucketAlreadyExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBucketAlreadyExistsException; overload;
    class function Instance: IBucketAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TBucketAlreadyExistsExceptionUnmarshaller }

function TBucketAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EBucketAlreadyExistsException;
begin
  raise ENotImplemented.Create('TBucketAlreadyExistsExceptionUnmarshaller.Unmarshall');
end;

function TBucketAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBucketAlreadyExistsException;
var
  Response: EBucketAlreadyExistsException;
begin
  Response := EBucketAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBucketAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TBucketAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TBucketAlreadyExistsExceptionUnmarshaller.Instance: IBucketAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
