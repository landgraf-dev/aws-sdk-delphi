unit AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable, 
  AWS.SES.Enums;

type
  TSetIdentityHeadersInNotificationsEnabledRequest = class;
  
  ISetIdentityHeadersInNotificationsEnabledRequest = interface
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetNotificationType: TNotificationType;
    procedure SetNotificationType(const Value: TNotificationType);
    function Obj: TSetIdentityHeadersInNotificationsEnabledRequest;
    function IsSetEnabled: Boolean;
    function IsSetIdentity: Boolean;
    function IsSetNotificationType: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Identity: string read GetIdentity write SetIdentity;
    property NotificationType: TNotificationType read GetNotificationType write SetNotificationType;
  end;
  
  TSetIdentityHeadersInNotificationsEnabledRequest = class(TAmazonSimpleEmailServiceRequest, ISetIdentityHeadersInNotificationsEnabledRequest)
  strict private
    FEnabled: Nullable<Boolean>;
    FIdentity: Nullable<string>;
    FNotificationType: Nullable<TNotificationType>;
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetNotificationType: TNotificationType;
    procedure SetNotificationType(const Value: TNotificationType);
  strict protected
    function Obj: TSetIdentityHeadersInNotificationsEnabledRequest;
  public
    function IsSetEnabled: Boolean;
    function IsSetIdentity: Boolean;
    function IsSetNotificationType: Boolean;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Identity: string read GetIdentity write SetIdentity;
    property NotificationType: TNotificationType read GetNotificationType write SetNotificationType;
  end;
  
implementation

{ TSetIdentityHeadersInNotificationsEnabledRequest }

function TSetIdentityHeadersInNotificationsEnabledRequest.Obj: TSetIdentityHeadersInNotificationsEnabledRequest;
begin
  Result := Self;
end;

function TSetIdentityHeadersInNotificationsEnabledRequest.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TSetIdentityHeadersInNotificationsEnabledRequest.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TSetIdentityHeadersInNotificationsEnabledRequest.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TSetIdentityHeadersInNotificationsEnabledRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TSetIdentityHeadersInNotificationsEnabledRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TSetIdentityHeadersInNotificationsEnabledRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

function TSetIdentityHeadersInNotificationsEnabledRequest.GetNotificationType: TNotificationType;
begin
  Result := FNotificationType.ValueOrDefault;
end;

procedure TSetIdentityHeadersInNotificationsEnabledRequest.SetNotificationType(const Value: TNotificationType);
begin
  FNotificationType := Value;
end;

function TSetIdentityHeadersInNotificationsEnabledRequest.IsSetNotificationType: Boolean;
begin
  Result := FNotificationType.HasValue;
end;

end.
