unit AWS.SNS.Model.Subscription;

interface

uses
  AWS.Nullable;

type
  TSubscription = class;
  
  ISubscription = interface
    function GetEndpoint: string;
    procedure SetEndpoint(const Value: string);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetProtocol: string;
    procedure SetProtocol(const Value: string);
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TSubscription;
    function IsSetEndpoint: Boolean;
    function IsSetOwner: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetSubscriptionArn: Boolean;
    function IsSetTopicArn: Boolean;
    property Endpoint: string read GetEndpoint write SetEndpoint;
    property Owner: string read GetOwner write SetOwner;
    property Protocol: string read GetProtocol write SetProtocol;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TSubscription = class
  strict private
    FEndpoint: Nullable<string>;
    FOwner: Nullable<string>;
    FProtocol: Nullable<string>;
    FSubscriptionArn: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetEndpoint: string;
    procedure SetEndpoint(const Value: string);
    function GetOwner: string;
    procedure SetOwner(const Value: string);
    function GetProtocol: string;
    procedure SetProtocol(const Value: string);
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TSubscription;
  public
    function IsSetEndpoint: Boolean;
    function IsSetOwner: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetSubscriptionArn: Boolean;
    function IsSetTopicArn: Boolean;
    property Endpoint: string read GetEndpoint write SetEndpoint;
    property Owner: string read GetOwner write SetOwner;
    property Protocol: string read GetProtocol write SetProtocol;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TSubscription }

function TSubscription.Obj: TSubscription;
begin
  Result := Self;
end;

function TSubscription.GetEndpoint: string;
begin
  Result := FEndpoint.ValueOrDefault;
end;

procedure TSubscription.SetEndpoint(const Value: string);
begin
  FEndpoint := Value;
end;

function TSubscription.IsSetEndpoint: Boolean;
begin
  Result := FEndpoint.HasValue;
end;

function TSubscription.GetOwner: string;
begin
  Result := FOwner.ValueOrDefault;
end;

procedure TSubscription.SetOwner(const Value: string);
begin
  FOwner := Value;
end;

function TSubscription.IsSetOwner: Boolean;
begin
  Result := FOwner.HasValue;
end;

function TSubscription.GetProtocol: string;
begin
  Result := FProtocol.ValueOrDefault;
end;

procedure TSubscription.SetProtocol(const Value: string);
begin
  FProtocol := Value;
end;

function TSubscription.IsSetProtocol: Boolean;
begin
  Result := FProtocol.HasValue;
end;

function TSubscription.GetSubscriptionArn: string;
begin
  Result := FSubscriptionArn.ValueOrDefault;
end;

procedure TSubscription.SetSubscriptionArn(const Value: string);
begin
  FSubscriptionArn := Value;
end;

function TSubscription.IsSetSubscriptionArn: Boolean;
begin
  Result := FSubscriptionArn.HasValue;
end;

function TSubscription.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TSubscription.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TSubscription.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
