unit AWS.SESv2.Model.Topic;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TTopic = class;
  
  ITopic = interface
    function GetDefaultSubscriptionStatus: TSubscriptionStatus;
    procedure SetDefaultSubscriptionStatus(const Value: TSubscriptionStatus);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
    function Obj: TTopic;
    function IsSetDefaultSubscriptionStatus: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetTopicName: Boolean;
    property DefaultSubscriptionStatus: TSubscriptionStatus read GetDefaultSubscriptionStatus write SetDefaultSubscriptionStatus;
    property Description: string read GetDescription write SetDescription;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property TopicName: string read GetTopicName write SetTopicName;
  end;
  
  TTopic = class
  strict private
    FDefaultSubscriptionStatus: Nullable<TSubscriptionStatus>;
    FDescription: Nullable<string>;
    FDisplayName: Nullable<string>;
    FTopicName: Nullable<string>;
    function GetDefaultSubscriptionStatus: TSubscriptionStatus;
    procedure SetDefaultSubscriptionStatus(const Value: TSubscriptionStatus);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDisplayName: string;
    procedure SetDisplayName(const Value: string);
    function GetTopicName: string;
    procedure SetTopicName(const Value: string);
  strict protected
    function Obj: TTopic;
  public
    function IsSetDefaultSubscriptionStatus: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDisplayName: Boolean;
    function IsSetTopicName: Boolean;
    property DefaultSubscriptionStatus: TSubscriptionStatus read GetDefaultSubscriptionStatus write SetDefaultSubscriptionStatus;
    property Description: string read GetDescription write SetDescription;
    property DisplayName: string read GetDisplayName write SetDisplayName;
    property TopicName: string read GetTopicName write SetTopicName;
  end;
  
implementation

{ TTopic }

function TTopic.Obj: TTopic;
begin
  Result := Self;
end;

function TTopic.GetDefaultSubscriptionStatus: TSubscriptionStatus;
begin
  Result := FDefaultSubscriptionStatus.ValueOrDefault;
end;

procedure TTopic.SetDefaultSubscriptionStatus(const Value: TSubscriptionStatus);
begin
  FDefaultSubscriptionStatus := Value;
end;

function TTopic.IsSetDefaultSubscriptionStatus: Boolean;
begin
  Result := FDefaultSubscriptionStatus.HasValue;
end;

function TTopic.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TTopic.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TTopic.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TTopic.GetDisplayName: string;
begin
  Result := FDisplayName.ValueOrDefault;
end;

procedure TTopic.SetDisplayName(const Value: string);
begin
  FDisplayName := Value;
end;

function TTopic.IsSetDisplayName: Boolean;
begin
  Result := FDisplayName.HasValue;
end;

function TTopic.GetTopicName: string;
begin
  Result := FTopicName.ValueOrDefault;
end;

procedure TTopic.SetTopicName(const Value: string);
begin
  FTopicName := Value;
end;

function TTopic.IsSetTopicName: Boolean;
begin
  Result := FTopicName.HasValue;
end;

end.
