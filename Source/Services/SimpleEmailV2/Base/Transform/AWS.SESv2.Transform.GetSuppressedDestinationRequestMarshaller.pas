unit AWS.SESv2.Transform.GetSuppressedDestinationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetSuppressedDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetSuppressedDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSuppressedDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSuppressedDestinationRequest>, IGetSuppressedDestinationRequestMarshaller)
  strict private
    class var FInstance: IGetSuppressedDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSuppressedDestinationRequest): IRequest; overload;
    class function Instance: IGetSuppressedDestinationRequestMarshaller; static;
  end;
  
implementation

{ TGetSuppressedDestinationRequestMarshaller }

function TGetSuppressedDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSuppressedDestinationRequest(AInput));
end;

function TGetSuppressedDestinationRequestMarshaller.Marshall(PublicRequest: TGetSuppressedDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetEmailAddress then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailAddress set');
  Request.AddPathResource('{EmailAddress}', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Request.ResourcePath := '/v2/email/suppression/addresses/{EmailAddress}';
  Result := Request;
end;

class constructor TGetSuppressedDestinationRequestMarshaller.Create;
begin
  FInstance := TGetSuppressedDestinationRequestMarshaller.Create;
end;

class function TGetSuppressedDestinationRequestMarshaller.Instance: IGetSuppressedDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
