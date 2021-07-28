unit AWS.SES.Transform.ListReceiptFiltersRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ListReceiptFiltersRequest, 
  AWS.Internal.DefaultRequest;

type
  IListReceiptFiltersRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListReceiptFiltersRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListReceiptFiltersRequest>, IListReceiptFiltersRequestMarshaller)
  strict private
    class var FInstance: IListReceiptFiltersRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListReceiptFiltersRequest): IRequest; overload;
    class function Instance: IListReceiptFiltersRequestMarshaller; static;
  end;
  
implementation

{ TListReceiptFiltersRequestMarshaller }

function TListReceiptFiltersRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListReceiptFiltersRequest(AInput));
end;

function TListReceiptFiltersRequestMarshaller.Marshall(PublicRequest: TListReceiptFiltersRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'ListReceiptFilters');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
  end;
  Result := Request;
end;

class constructor TListReceiptFiltersRequestMarshaller.Create;
begin
  FInstance := TListReceiptFiltersRequestMarshaller.Create;
end;

class function TListReceiptFiltersRequestMarshaller.Instance: IListReceiptFiltersRequestMarshaller;
begin
  Result := FInstance;
end;

end.
