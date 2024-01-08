unit AWS.S3.Transform.ListBucketsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListBucketsRequest, 
  AWS.S3.Util.S3Constants,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.DefaultRequest;

type
  IListBucketsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListBucketsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListBucketsRequest>, IListBucketsRequestMarshaller)
  strict private
    class var FInstance: IListBucketsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListBucketsRequest): IRequest; overload;
    class function Instance: IListBucketsRequestMarshaller; static;
  end;
  
implementation

{ TListBucketsRequestMarshaller }

function TListBucketsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListBucketsRequest(AInput));
end;

function TListBucketsRequestMarshaller.Marshall(PublicRequest: TListBucketsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.ResourcePath := '/';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListBucketsRequestMarshaller.Create;
begin
  FInstance := TListBucketsRequestMarshaller.Create;
end;

class function TListBucketsRequestMarshaller.Instance: IListBucketsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
