unit AWS.SES.Transform.ListVerifiedEmailAddressesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListVerifiedEmailAddressesRequest, 
  AWS.Internal.DefaultRequest;

type
  IListVerifiedEmailAddressesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListVerifiedEmailAddressesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListVerifiedEmailAddressesRequest>, IListVerifiedEmailAddressesRequestMarshaller)
  strict private
    class var FInstance: IListVerifiedEmailAddressesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListVerifiedEmailAddressesRequest): IRequest; overload;
    class function Instance: IListVerifiedEmailAddressesRequestMarshaller; static;
  end;
  
implementation

{ TListVerifiedEmailAddressesRequestMarshaller }

function TListVerifiedEmailAddressesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListVerifiedEmailAddressesRequest(AInput));
end;

function TListVerifiedEmailAddressesRequestMarshaller.Marshall(PublicRequest: TListVerifiedEmailAddressesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListVerifiedEmailAddresses');
  Request.Parameters.Add('Version', '2010-12-01');
  Result := Request;
end;

class constructor TListVerifiedEmailAddressesRequestMarshaller.Create;
begin
  FInstance := TListVerifiedEmailAddressesRequestMarshaller.Create;
end;

class function TListVerifiedEmailAddressesRequestMarshaller.Instance: IListVerifiedEmailAddressesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
