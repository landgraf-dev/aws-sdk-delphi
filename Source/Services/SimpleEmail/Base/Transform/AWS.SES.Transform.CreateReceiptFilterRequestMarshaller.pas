unit AWS.SES.Transform.CreateReceiptFilterRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateReceiptFilterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateReceiptFilterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateReceiptFilterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateReceiptFilterRequest>, ICreateReceiptFilterRequestMarshaller)
  strict private
    class var FInstance: ICreateReceiptFilterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateReceiptFilterRequest): IRequest; overload;
    class function Instance: ICreateReceiptFilterRequestMarshaller; static;
  end;
  
implementation

{ TCreateReceiptFilterRequestMarshaller }

function TCreateReceiptFilterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateReceiptFilterRequest(AInput));
end;

function TCreateReceiptFilterRequestMarshaller.Marshall(PublicRequest: TCreateReceiptFilterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateReceiptFilter');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetFilter then
    begin
      if PublicRequest.Filter.IsSetIpFilter then
      begin
        if PublicRequest.Filter.IpFilter.IsSetCidr then
          Request.Parameters.Add('Filter' + '.' + 'IpFilter' + '.' + 'Cidr', TStringUtils.Fromstring(PublicRequest.Filter.IpFilter.Cidr));
        if PublicRequest.Filter.IpFilter.IsSetPolicy then
          Request.Parameters.Add('Filter' + '.' + 'IpFilter' + '.' + 'Policy', PublicRequest.Filter.IpFilter.Policy.Value);
      end;
      if PublicRequest.Filter.IsSetName then
        Request.Parameters.Add('Filter' + '.' + 'Name', TStringUtils.Fromstring(PublicRequest.Filter.Name));
    end;
  Result := Request;
end;

class constructor TCreateReceiptFilterRequestMarshaller.Create;
begin
  FInstance := TCreateReceiptFilterRequestMarshaller.Create;
end;

class function TCreateReceiptFilterRequestMarshaller.Instance: ICreateReceiptFilterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
