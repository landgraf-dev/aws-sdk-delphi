unit AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TSetIdentityFeedbackForwardingEnabledRequest = class;
  
  ISetIdentityFeedbackForwardingEnabledRequest = interface
    function GetForwardingEnabled: Boolean;
    procedure SetForwardingEnabled(const Value: Boolean);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function Obj: TSetIdentityFeedbackForwardingEnabledRequest;
    function IsSetForwardingEnabled: Boolean;
    function IsSetIdentity: Boolean;
    property ForwardingEnabled: Boolean read GetForwardingEnabled write SetForwardingEnabled;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
  TSetIdentityFeedbackForwardingEnabledRequest = class(TAmazonSimpleEmailServiceRequest, ISetIdentityFeedbackForwardingEnabledRequest)
  strict private
    FForwardingEnabled: Nullable<Boolean>;
    FIdentity: Nullable<string>;
    function GetForwardingEnabled: Boolean;
    procedure SetForwardingEnabled(const Value: Boolean);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
  strict protected
    function Obj: TSetIdentityFeedbackForwardingEnabledRequest;
  public
    function IsSetForwardingEnabled: Boolean;
    function IsSetIdentity: Boolean;
    property ForwardingEnabled: Boolean read GetForwardingEnabled write SetForwardingEnabled;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
implementation

{ TSetIdentityFeedbackForwardingEnabledRequest }

function TSetIdentityFeedbackForwardingEnabledRequest.Obj: TSetIdentityFeedbackForwardingEnabledRequest;
begin
  Result := Self;
end;

function TSetIdentityFeedbackForwardingEnabledRequest.GetForwardingEnabled: Boolean;
begin
  Result := FForwardingEnabled.ValueOrDefault;
end;

procedure TSetIdentityFeedbackForwardingEnabledRequest.SetForwardingEnabled(const Value: Boolean);
begin
  FForwardingEnabled := Value;
end;

function TSetIdentityFeedbackForwardingEnabledRequest.IsSetForwardingEnabled: Boolean;
begin
  Result := FForwardingEnabled.HasValue;
end;

function TSetIdentityFeedbackForwardingEnabledRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TSetIdentityFeedbackForwardingEnabledRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TSetIdentityFeedbackForwardingEnabledRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

end.
