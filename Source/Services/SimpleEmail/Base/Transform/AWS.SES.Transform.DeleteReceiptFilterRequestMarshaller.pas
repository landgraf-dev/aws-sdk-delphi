unit AWS.SES.Transform.DeleteReceiptFilterRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteReceiptFilterRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteReceiptFilterRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteReceiptFilterRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteReceiptFilterRequest>, IDeleteReceiptFilterRequestMarshaller)
  strict private
    class var FInstance: IDeleteReceiptFilterRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteReceiptFilterRequest): IRequest; overload;
    class function Instance: IDeleteReceiptFilterRequestMarshaller; static;
  end;
  
implementation

{ TDeleteReceiptFilterRequestMarshaller }

function TDeleteReceiptFilterRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteReceiptFilterRequest(AInput));
end;

function TDeleteReceiptFilterRequestMarshaller.Marshall(PublicRequest: TDeleteReceiptFilterRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteReceiptFilter');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetFilterName then
      Request.Parameters.Add('FilterName', TStringUtils.Fromstring(PublicRequest.FilterName));
  Result := Request;
end;

class constructor TDeleteReceiptFilterRequestMarshaller.Create;
begin
  FInstance := TDeleteReceiptFilterRequestMarshaller.Create;
end;

class function TDeleteReceiptFilterRequestMarshaller.Instance: IDeleteReceiptFilterRequestMarshaller;
begin
  Result := FInstance;
end;

end.
