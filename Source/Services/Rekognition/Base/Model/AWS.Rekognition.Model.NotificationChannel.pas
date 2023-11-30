unit AWS.Rekognition.Model.NotificationChannel;

interface

uses
  AWS.Nullable;

type
  TNotificationChannel = class;
  
  INotificationChannel = interface
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetSNSTopicArn: string;
    procedure SetSNSTopicArn(const Value: string);
    function Obj: TNotificationChannel;
    function IsSetRoleArn: Boolean;
    function IsSetSNSTopicArn: Boolean;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property SNSTopicArn: string read GetSNSTopicArn write SetSNSTopicArn;
  end;
  
  TNotificationChannel = class
  strict private
    FRoleArn: Nullable<string>;
    FSNSTopicArn: Nullable<string>;
    function GetRoleArn: string;
    procedure SetRoleArn(const Value: string);
    function GetSNSTopicArn: string;
    procedure SetSNSTopicArn(const Value: string);
  strict protected
    function Obj: TNotificationChannel;
  public
    function IsSetRoleArn: Boolean;
    function IsSetSNSTopicArn: Boolean;
    property RoleArn: string read GetRoleArn write SetRoleArn;
    property SNSTopicArn: string read GetSNSTopicArn write SetSNSTopicArn;
  end;
  
implementation

{ TNotificationChannel }

function TNotificationChannel.Obj: TNotificationChannel;
begin
  Result := Self;
end;

function TNotificationChannel.GetRoleArn: string;
begin
  Result := FRoleArn.ValueOrDefault;
end;

procedure TNotificationChannel.SetRoleArn(const Value: string);
begin
  FRoleArn := Value;
end;

function TNotificationChannel.IsSetRoleArn: Boolean;
begin
  Result := FRoleArn.HasValue;
end;

function TNotificationChannel.GetSNSTopicArn: string;
begin
  Result := FSNSTopicArn.ValueOrDefault;
end;

procedure TNotificationChannel.SetSNSTopicArn(const Value: string);
begin
  FSNSTopicArn := Value;
end;

function TNotificationChannel.IsSetSNSTopicArn: Boolean;
begin
  Result := FSNSTopicArn.HasValue;
end;

end.
