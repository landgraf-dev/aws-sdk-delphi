unit AWS.S3.Transform.BucketAlreadyOwnedByYouExceptionUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Model.BucketAlreadyOwnedByYouException, 
  AWS.Internal.ErrorResponse;

type
  IBucketAlreadyOwnedByYouExceptionUnmarshaller = IErrorResponseUnmarshaller<EBucketAlreadyOwnedByYouException, TXmlUnmarshallerContext>;
  
  TBucketAlreadyOwnedByYouExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBucketAlreadyOwnedByYouException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBucketAlreadyOwnedByYouExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EBucketAlreadyOwnedByYouException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBucketAlreadyOwnedByYouException; overload;
    class function Instance: IBucketAlreadyOwnedByYouExceptionUnmarshaller; static;
  end;
  
implementation

{ TBucketAlreadyOwnedByYouExceptionUnmarshaller }

function TBucketAlreadyOwnedByYouExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EBucketAlreadyOwnedByYouException;
begin
  raise ENotImplemented.Create('TBucketAlreadyOwnedByYouExceptionUnmarshaller.Unmarshall');
end;

function TBucketAlreadyOwnedByYouExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBucketAlreadyOwnedByYouException;
var
  Response: EBucketAlreadyOwnedByYouException;
begin
  Response := EBucketAlreadyOwnedByYouException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBucketAlreadyOwnedByYouExceptionUnmarshaller.Create;
begin
  FInstance := TBucketAlreadyOwnedByYouExceptionUnmarshaller.Create;
end;

class function TBucketAlreadyOwnedByYouExceptionUnmarshaller.Instance: IBucketAlreadyOwnedByYouExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
