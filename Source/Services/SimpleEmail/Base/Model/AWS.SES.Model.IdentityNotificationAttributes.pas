unit AWS.SES.Model.IdentityNotificationAttributes;

interface

uses
  Bcl.Types.Nullable;

type
  TIdentityNotificationAttributes = class;
  
  IIdentityNotificationAttributes = interface
    function GetBounceTopic: string;
    procedure SetBounceTopic(const Value: string);
    function GetComplaintTopic: string;
    procedure SetComplaintTopic(const Value: string);
    function GetDeliveryTopic: string;
    procedure SetDeliveryTopic(const Value: string);
    function GetForwardingEnabled: Boolean;
    procedure SetForwardingEnabled(const Value: Boolean);
    function GetHeadersInBounceNotificationsEnabled: Boolean;
    procedure SetHeadersInBounceNotificationsEnabled(const Value: Boolean);
    function GetHeadersInComplaintNotificationsEnabled: Boolean;
    procedure SetHeadersInComplaintNotificationsEnabled(const Value: Boolean);
    function GetHeadersInDeliveryNotificationsEnabled: Boolean;
    procedure SetHeadersInDeliveryNotificationsEnabled(const Value: Boolean);
    function Obj: TIdentityNotificationAttributes;
    function IsSetBounceTopic: Boolean;
    function IsSetComplaintTopic: Boolean;
    function IsSetDeliveryTopic: Boolean;
    function IsSetForwardingEnabled: Boolean;
    function IsSetHeadersInBounceNotificationsEnabled: Boolean;
    function IsSetHeadersInComplaintNotificationsEnabled: Boolean;
    function IsSetHeadersInDeliveryNotificationsEnabled: Boolean;
    property BounceTopic: string read GetBounceTopic write SetBounceTopic;
    property ComplaintTopic: string read GetComplaintTopic write SetComplaintTopic;
    property DeliveryTopic: string read GetDeliveryTopic write SetDeliveryTopic;
    property ForwardingEnabled: Boolean read GetForwardingEnabled write SetForwardingEnabled;
    property HeadersInBounceNotificationsEnabled: Boolean read GetHeadersInBounceNotificationsEnabled write SetHeadersInBounceNotificationsEnabled;
    property HeadersInComplaintNotificationsEnabled: Boolean read GetHeadersInComplaintNotificationsEnabled write SetHeadersInComplaintNotificationsEnabled;
    property HeadersInDeliveryNotificationsEnabled: Boolean read GetHeadersInDeliveryNotificationsEnabled write SetHeadersInDeliveryNotificationsEnabled;
  end;
  
  TIdentityNotificationAttributes = class
  strict private
    FBounceTopic: Nullable<string>;
    FComplaintTopic: Nullable<string>;
    FDeliveryTopic: Nullable<string>;
    FForwardingEnabled: Nullable<Boolean>;
    FHeadersInBounceNotificationsEnabled: Nullable<Boolean>;
    FHeadersInComplaintNotificationsEnabled: Nullable<Boolean>;
    FHeadersInDeliveryNotificationsEnabled: Nullable<Boolean>;
    function GetBounceTopic: string;
    procedure SetBounceTopic(const Value: string);
    function GetComplaintTopic: string;
    procedure SetComplaintTopic(const Value: string);
    function GetDeliveryTopic: string;
    procedure SetDeliveryTopic(const Value: string);
    function GetForwardingEnabled: Boolean;
    procedure SetForwardingEnabled(const Value: Boolean);
    function GetHeadersInBounceNotificationsEnabled: Boolean;
    procedure SetHeadersInBounceNotificationsEnabled(const Value: Boolean);
    function GetHeadersInComplaintNotificationsEnabled: Boolean;
    procedure SetHeadersInComplaintNotificationsEnabled(const Value: Boolean);
    function GetHeadersInDeliveryNotificationsEnabled: Boolean;
    procedure SetHeadersInDeliveryNotificationsEnabled(const Value: Boolean);
  strict protected
    function Obj: TIdentityNotificationAttributes;
  public
    function IsSetBounceTopic: Boolean;
    function IsSetComplaintTopic: Boolean;
    function IsSetDeliveryTopic: Boolean;
    function IsSetForwardingEnabled: Boolean;
    function IsSetHeadersInBounceNotificationsEnabled: Boolean;
    function IsSetHeadersInComplaintNotificationsEnabled: Boolean;
    function IsSetHeadersInDeliveryNotificationsEnabled: Boolean;
    property BounceTopic: string read GetBounceTopic write SetBounceTopic;
    property ComplaintTopic: string read GetComplaintTopic write SetComplaintTopic;
    property DeliveryTopic: string read GetDeliveryTopic write SetDeliveryTopic;
    property ForwardingEnabled: Boolean read GetForwardingEnabled write SetForwardingEnabled;
    property HeadersInBounceNotificationsEnabled: Boolean read GetHeadersInBounceNotificationsEnabled write SetHeadersInBounceNotificationsEnabled;
    property HeadersInComplaintNotificationsEnabled: Boolean read GetHeadersInComplaintNotificationsEnabled write SetHeadersInComplaintNotificationsEnabled;
    property HeadersInDeliveryNotificationsEnabled: Boolean read GetHeadersInDeliveryNotificationsEnabled write SetHeadersInDeliveryNotificationsEnabled;
  end;
  
implementation

{ TIdentityNotificationAttributes }

function TIdentityNotificationAttributes.Obj: TIdentityNotificationAttributes;
begin
  Result := Self;
end;

function TIdentityNotificationAttributes.GetBounceTopic: string;
begin
  Result := FBounceTopic.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetBounceTopic(const Value: string);
begin
  FBounceTopic := Value;
end;

function TIdentityNotificationAttributes.IsSetBounceTopic: Boolean;
begin
  Result := FBounceTopic.HasValue;
end;

function TIdentityNotificationAttributes.GetComplaintTopic: string;
begin
  Result := FComplaintTopic.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetComplaintTopic(const Value: string);
begin
  FComplaintTopic := Value;
end;

function TIdentityNotificationAttributes.IsSetComplaintTopic: Boolean;
begin
  Result := FComplaintTopic.HasValue;
end;

function TIdentityNotificationAttributes.GetDeliveryTopic: string;
begin
  Result := FDeliveryTopic.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetDeliveryTopic(const Value: string);
begin
  FDeliveryTopic := Value;
end;

function TIdentityNotificationAttributes.IsSetDeliveryTopic: Boolean;
begin
  Result := FDeliveryTopic.HasValue;
end;

function TIdentityNotificationAttributes.GetForwardingEnabled: Boolean;
begin
  Result := FForwardingEnabled.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetForwardingEnabled(const Value: Boolean);
begin
  FForwardingEnabled := Value;
end;

function TIdentityNotificationAttributes.IsSetForwardingEnabled: Boolean;
begin
  Result := FForwardingEnabled.HasValue;
end;

function TIdentityNotificationAttributes.GetHeadersInBounceNotificationsEnabled: Boolean;
begin
  Result := FHeadersInBounceNotificationsEnabled.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetHeadersInBounceNotificationsEnabled(const Value: Boolean);
begin
  FHeadersInBounceNotificationsEnabled := Value;
end;

function TIdentityNotificationAttributes.IsSetHeadersInBounceNotificationsEnabled: Boolean;
begin
  Result := FHeadersInBounceNotificationsEnabled.HasValue;
end;

function TIdentityNotificationAttributes.GetHeadersInComplaintNotificationsEnabled: Boolean;
begin
  Result := FHeadersInComplaintNotificationsEnabled.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetHeadersInComplaintNotificationsEnabled(const Value: Boolean);
begin
  FHeadersInComplaintNotificationsEnabled := Value;
end;

function TIdentityNotificationAttributes.IsSetHeadersInComplaintNotificationsEnabled: Boolean;
begin
  Result := FHeadersInComplaintNotificationsEnabled.HasValue;
end;

function TIdentityNotificationAttributes.GetHeadersInDeliveryNotificationsEnabled: Boolean;
begin
  Result := FHeadersInDeliveryNotificationsEnabled.ValueOrDefault;
end;

procedure TIdentityNotificationAttributes.SetHeadersInDeliveryNotificationsEnabled(const Value: Boolean);
begin
  FHeadersInDeliveryNotificationsEnabled := Value;
end;

function TIdentityNotificationAttributes.IsSetHeadersInDeliveryNotificationsEnabled: Boolean;
begin
  Result := FHeadersInDeliveryNotificationsEnabled.HasValue;
end;

end.
