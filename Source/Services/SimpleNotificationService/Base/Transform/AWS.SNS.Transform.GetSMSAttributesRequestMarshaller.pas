unit AWS.SNS.Transform.GetSMSAttributesRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.GetSMSAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetSMSAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSMSAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSMSAttributesRequest>, IGetSMSAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetSMSAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSMSAttributesRequest): IRequest; overload;
    class function Instance: IGetSMSAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetSMSAttributesRequestMarshaller }

function TGetSMSAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSMSAttributesRequest(AInput));
end;

function TGetSMSAttributesRequestMarshaller.Marshall(PublicRequest: TGetSMSAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'GetSMSAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetAttributes then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.Attributes do
      begin
        Request.Parameters.Add('attributes' + '.' + 'member' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
  Result := Request;
end;

class constructor TGetSMSAttributesRequestMarshaller.Create;
begin
  FInstance := TGetSMSAttributesRequestMarshaller.Create;
end;

class function TGetSMSAttributesRequestMarshaller.Instance: IGetSMSAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
