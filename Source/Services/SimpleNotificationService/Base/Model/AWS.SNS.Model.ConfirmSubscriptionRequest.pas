unit AWS.SNS.Model.ConfirmSubscriptionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TConfirmSubscriptionRequest = class;
  
  IConfirmSubscriptionRequest = interface
    function GetAuthenticateOnUnsubscribe: string;
    procedure SetAuthenticateOnUnsubscribe(const Value: string);
    function GetToken: string;
    procedure SetToken(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TConfirmSubscriptionRequest;
    function IsSetAuthenticateOnUnsubscribe: Boolean;
    function IsSetToken: Boolean;
    function IsSetTopicArn: Boolean;
    property AuthenticateOnUnsubscribe: string read GetAuthenticateOnUnsubscribe write SetAuthenticateOnUnsubscribe;
    property Token: string read GetToken write SetToken;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TConfirmSubscriptionRequest = class(TAmazonSimpleNotificationServiceRequest, IConfirmSubscriptionRequest)
  strict private
    FAuthenticateOnUnsubscribe: Nullable<string>;
    FToken: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetAuthenticateOnUnsubscribe: string;
    procedure SetAuthenticateOnUnsubscribe(const Value: string);
    function GetToken: string;
    procedure SetToken(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TConfirmSubscriptionRequest;
  public
    constructor Create(const ATopicArn: string; const AToken: string); overload;
    constructor Create(const ATopicArn: string; const AToken: string; const AAuthenticateOnUnsubscribe: string); overload;
    function IsSetAuthenticateOnUnsubscribe: Boolean;
    function IsSetToken: Boolean;
    function IsSetTopicArn: Boolean;
    property AuthenticateOnUnsubscribe: string read GetAuthenticateOnUnsubscribe write SetAuthenticateOnUnsubscribe;
    property Token: string read GetToken write SetToken;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TConfirmSubscriptionRequest }

function TConfirmSubscriptionRequest.Obj: TConfirmSubscriptionRequest;
begin
  Result := Self;
end;

constructor TConfirmSubscriptionRequest.Create(const ATopicArn: string; const AToken: string);
begin
  Create;
  TopicArn := ATopicArn;
  Token := AToken;
end;

constructor TConfirmSubscriptionRequest.Create(const ATopicArn: string; const AToken: string; const AAuthenticateOnUnsubscribe: string);
begin
  Create;
  TopicArn := ATopicArn;
  Token := AToken;
  AuthenticateOnUnsubscribe := AAuthenticateOnUnsubscribe;
end;

function TConfirmSubscriptionRequest.GetAuthenticateOnUnsubscribe: string;
begin
  Result := FAuthenticateOnUnsubscribe.ValueOrDefault;
end;

procedure TConfirmSubscriptionRequest.SetAuthenticateOnUnsubscribe(const Value: string);
begin
  FAuthenticateOnUnsubscribe := Value;
end;

function TConfirmSubscriptionRequest.IsSetAuthenticateOnUnsubscribe: Boolean;
begin
  Result := FAuthenticateOnUnsubscribe.HasValue;
end;

function TConfirmSubscriptionRequest.GetToken: string;
begin
  Result := FToken.ValueOrDefault;
end;

procedure TConfirmSubscriptionRequest.SetToken(const Value: string);
begin
  FToken := Value;
end;

function TConfirmSubscriptionRequest.IsSetToken: Boolean;
begin
  Result := FToken.HasValue;
end;

function TConfirmSubscriptionRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TConfirmSubscriptionRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TConfirmSubscriptionRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
