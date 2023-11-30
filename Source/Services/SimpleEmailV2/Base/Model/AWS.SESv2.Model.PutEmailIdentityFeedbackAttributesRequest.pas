unit AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TPutEmailIdentityFeedbackAttributesRequest = class;
  
  IPutEmailIdentityFeedbackAttributesRequest = interface
    function GetEmailForwardingEnabled: Boolean;
    procedure SetEmailForwardingEnabled(const Value: Boolean);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function Obj: TPutEmailIdentityFeedbackAttributesRequest;
    function IsSetEmailForwardingEnabled: Boolean;
    function IsSetEmailIdentity: Boolean;
    property EmailForwardingEnabled: Boolean read GetEmailForwardingEnabled write SetEmailForwardingEnabled;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
  TPutEmailIdentityFeedbackAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutEmailIdentityFeedbackAttributesRequest)
  strict private
    FEmailForwardingEnabled: Nullable<Boolean>;
    FEmailIdentity: Nullable<string>;
    function GetEmailForwardingEnabled: Boolean;
    procedure SetEmailForwardingEnabled(const Value: Boolean);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
  strict protected
    function Obj: TPutEmailIdentityFeedbackAttributesRequest;
  public
    function IsSetEmailForwardingEnabled: Boolean;
    function IsSetEmailIdentity: Boolean;
    property EmailForwardingEnabled: Boolean read GetEmailForwardingEnabled write SetEmailForwardingEnabled;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
implementation

{ TPutEmailIdentityFeedbackAttributesRequest }

function TPutEmailIdentityFeedbackAttributesRequest.Obj: TPutEmailIdentityFeedbackAttributesRequest;
begin
  Result := Self;
end;

function TPutEmailIdentityFeedbackAttributesRequest.GetEmailForwardingEnabled: Boolean;
begin
  Result := FEmailForwardingEnabled.ValueOrDefault;
end;

procedure TPutEmailIdentityFeedbackAttributesRequest.SetEmailForwardingEnabled(const Value: Boolean);
begin
  FEmailForwardingEnabled := Value;
end;

function TPutEmailIdentityFeedbackAttributesRequest.IsSetEmailForwardingEnabled: Boolean;
begin
  Result := FEmailForwardingEnabled.HasValue;
end;

function TPutEmailIdentityFeedbackAttributesRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TPutEmailIdentityFeedbackAttributesRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TPutEmailIdentityFeedbackAttributesRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

end.
