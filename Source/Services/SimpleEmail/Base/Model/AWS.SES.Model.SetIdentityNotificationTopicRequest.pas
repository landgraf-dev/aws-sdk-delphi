unit AWS.SES.Model.SetIdentityNotificationTopicRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Enums;

type
  TSetIdentityNotificationTopicRequest = class;
  
  ISetIdentityNotificationTopicRequest = interface
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetNotificationType: TNotificationType;
    procedure SetNotificationType(const Value: TNotificationType);
    function GetSnsTopic: string;
    procedure SetSnsTopic(const Value: string);
    function Obj: TSetIdentityNotificationTopicRequest;
    function IsSetIdentity: Boolean;
    function IsSetNotificationType: Boolean;
    function IsSetSnsTopic: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property NotificationType: TNotificationType read GetNotificationType write SetNotificationType;
    property SnsTopic: string read GetSnsTopic write SetSnsTopic;
  end;
  
  TSetIdentityNotificationTopicRequest = class(TAmazonSimpleEmailServiceRequest, ISetIdentityNotificationTopicRequest)
  strict private
    FIdentity: Nullable<string>;
    FNotificationType: Nullable<TNotificationType>;
    FSnsTopic: Nullable<string>;
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetNotificationType: TNotificationType;
    procedure SetNotificationType(const Value: TNotificationType);
    function GetSnsTopic: string;
    procedure SetSnsTopic(const Value: string);
  strict protected
    function Obj: TSetIdentityNotificationTopicRequest;
  public
    function IsSetIdentity: Boolean;
    function IsSetNotificationType: Boolean;
    function IsSetSnsTopic: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property NotificationType: TNotificationType read GetNotificationType write SetNotificationType;
    property SnsTopic: string read GetSnsTopic write SetSnsTopic;
  end;
  
implementation

{ TSetIdentityNotificationTopicRequest }

function TSetIdentityNotificationTopicRequest.Obj: TSetIdentityNotificationTopicRequest;
begin
  Result := Self;
end;

function TSetIdentityNotificationTopicRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TSetIdentityNotificationTopicRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TSetIdentityNotificationTopicRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

function TSetIdentityNotificationTopicRequest.GetNotificationType: TNotificationType;
begin
  Result := FNotificationType.ValueOrDefault;
end;

procedure TSetIdentityNotificationTopicRequest.SetNotificationType(const Value: TNotificationType);
begin
  FNotificationType := Value;
end;

function TSetIdentityNotificationTopicRequest.IsSetNotificationType: Boolean;
begin
  Result := FNotificationType.HasValue;
end;

function TSetIdentityNotificationTopicRequest.GetSnsTopic: string;
begin
  Result := FSnsTopic.ValueOrDefault;
end;

procedure TSetIdentityNotificationTopicRequest.SetSnsTopic(const Value: string);
begin
  FSnsTopic := Value;
end;

function TSetIdentityNotificationTopicRequest.IsSetSnsTopic: Boolean;
begin
  Result := FSnsTopic.HasValue;
end;

end.
