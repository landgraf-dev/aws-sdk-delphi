unit AWS.SESv2.Model.TopicPreference;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TTopicPreference = class;
  
  ITopicPreference = interface
    function GetSubscriptionStatus: TSubscriptionStatus;
    procedure SetSubscriptionStatus(const Value: TSubscriptionStatus);
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
    function Obj: TTopicPreference;
    function IsSetSubscriptionStatus: Boolean;
    function IsSetTopicName: Boolean;
    property SubscriptionStatus: TSubscriptionStatus read GetSubscriptionStatus write SetSubscriptionStatus;
    property TopicName: string read GetTopicName write SetTopicName;
  end;
  
  TTopicPreference = class
  strict private
    FSubscriptionStatus: Nullable<TSubscriptionStatus>;
    FTopicName: Nullable<string>;
    function GetSubscriptionStatus: TSubscriptionStatus;
    procedure SetSubscriptionStatus(const Value: TSubscriptionStatus);
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
  strict protected
    function Obj: TTopicPreference;
  public
    function IsSetSubscriptionStatus: Boolean;
    function IsSetTopicName: Boolean;
    property SubscriptionStatus: TSubscriptionStatus read GetSubscriptionStatus write SetSubscriptionStatus;
    property TopicName: string read GetTopicName write SetTopicName;
  end;
  
implementation

{ TTopicPreference }

function TTopicPreference.Obj: TTopicPreference;
begin
  Result := Self;
end;

function TTopicPreference.GetSubscriptionStatus: TSubscriptionStatus;
begin
  Result := FSubscriptionStatus.ValueOrDefault;
end;

procedure TTopicPreference.SetSubscriptionStatus(const Value: TSubscriptionStatus);
begin
  FSubscriptionStatus := Value;
end;

function TTopicPreference.IsSetSubscriptionStatus: Boolean;
begin
  Result := FSubscriptionStatus.HasValue;
end;

function TTopicPreference.GetTopicName: string;
begin
  Result := FTopicName.ValueOrDefault;
end;

procedure TTopicPreference.SetTopicName(const Value: string);
begin
  FTopicName := Value;
end;

function TTopicPreference.IsSetTopicName: Boolean;
begin
  Result := FTopicName.HasValue;
end;

end.
