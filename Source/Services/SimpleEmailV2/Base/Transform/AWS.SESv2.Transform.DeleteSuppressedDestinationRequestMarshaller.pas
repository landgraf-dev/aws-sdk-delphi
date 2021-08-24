unit AWS.SESv2.Transform.DeleteSuppressedDestinationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteSuppressedDestinationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteSuppressedDestinationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteSuppressedDestinationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteSuppressedDestinationRequest>, IDeleteSuppressedDestinationRequestMarshaller)
  strict private
    class var FInstance: IDeleteSuppressedDestinationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteSuppressedDestinationRequest): IRequest; overload;
    class function Instance: IDeleteSuppressedDestinationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteSuppressedDestinationRequestMarshaller }

function TDeleteSuppressedDestinationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteSuppressedDestinationRequest(AInput));
end;

function TDeleteSuppressedDestinationRequestMarshaller.Marshall(PublicRequest: TDeleteSuppressedDestinationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetEmailAddress then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailAddress set');
  Request.AddPathResource('{EmailAddress}', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Request.ResourcePath := '/v2/email/suppression/addresses/{EmailAddress}';
  Result := Request;
end;

class constructor TDeleteSuppressedDestinationRequestMarshaller.Create;
begin
  FInstance := TDeleteSuppressedDestinationRequestMarshaller.Create;
end;

class function TDeleteSuppressedDestinationRequestMarshaller.Instance: IDeleteSuppressedDestinationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
