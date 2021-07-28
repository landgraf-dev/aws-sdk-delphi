unit AWS.SES.Transform.SetIdentityFeedbackForwardingEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetIdentityFeedbackForwardingEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetIdentityFeedbackForwardingEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetIdentityFeedbackForwardingEnabledRequest>, ISetIdentityFeedbackForwardingEnabledRequestMarshaller)
  strict private
    class var FInstance: ISetIdentityFeedbackForwardingEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetIdentityFeedbackForwardingEnabledRequest): IRequest; overload;
    class function Instance: ISetIdentityFeedbackForwardingEnabledRequestMarshaller; static;
  end;
  
implementation

{ TSetIdentityFeedbackForwardingEnabledRequestMarshaller }

function TSetIdentityFeedbackForwardingEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetIdentityFeedbackForwardingEnabledRequest(AInput));
end;

function TSetIdentityFeedbackForwardingEnabledRequestMarshaller.Marshall(PublicRequest: TSetIdentityFeedbackForwardingEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetIdentityFeedbackForwardingEnabled');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetForwardingEnabled then
      Request.Parameters.Add('ForwardingEnabled', TStringUtils.FromBoolean(PublicRequest.ForwardingEnabled));
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
  end;
  Result := Request;
end;

class constructor TSetIdentityFeedbackForwardingEnabledRequestMarshaller.Create;
begin
  FInstance := TSetIdentityFeedbackForwardingEnabledRequestMarshaller.Create;
end;

class function TSetIdentityFeedbackForwardingEnabledRequestMarshaller.Instance: ISetIdentityFeedbackForwardingEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
