unit AWS.SESv2.Transform.GetAccountRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetAccountRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils;

type
  IGetAccountRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetAccountRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetAccountRequest>, IGetAccountRequestMarshaller)
  strict private
    class var FInstance: IGetAccountRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetAccountRequest): IRequest; overload;
    class function Instance: IGetAccountRequestMarshaller; static;
  end;
  
implementation

{ TGetAccountRequestMarshaller }

function TGetAccountRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetAccountRequest(AInput));
end;

function TGetAccountRequestMarshaller.Marshall(PublicRequest: TGetAccountRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  Request.ResourcePath := '/v2/email/account';
  Result := Request;
end;

class constructor TGetAccountRequestMarshaller.Create;
begin
  FInstance := TGetAccountRequestMarshaller.Create;
end;

class function TGetAccountRequestMarshaller.Instance: IGetAccountRequestMarshaller;
begin
  Result := FInstance;
end;

end.
