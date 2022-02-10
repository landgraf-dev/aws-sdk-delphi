unit AWS.SNS.Model.SubscribeRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TSubscribeRequest = class;
  
  ISubscribeRequest = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetEndpoint: string;
    procedure SetEndpoint(const Value: string);
    function GetProtocol: string;
    procedure SetProtocol(const Value: string);
    function GetReturnSubscriptionArn: Boolean;
    procedure SetReturnSubscriptionArn(const Value: Boolean);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TSubscribeRequest;
    function IsSetAttributes: Boolean;
    function IsSetEndpoint: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetReturnSubscriptionArn: Boolean;
    function IsSetTopicArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property Endpoint: string read GetEndpoint write SetEndpoint;
    property Protocol: string read GetProtocol write SetProtocol;
    property ReturnSubscriptionArn: Boolean read GetReturnSubscriptionArn write SetReturnSubscriptionArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TSubscribeRequest = class(TAmazonSimpleNotificationServiceRequest, ISubscribeRequest)
  strict private
    FAttributes: TDictionary<string, string>;
    FKeepAttributes: Boolean;
    FEndpoint: Nullable<string>;
    FProtocol: Nullable<string>;
    FReturnSubscriptionArn: Nullable<Boolean>;
    FTopicArn: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetKeepAttributes: Boolean;
    procedure SetKeepAttributes(const Value: Boolean);
    function GetEndpoint: string;
    procedure SetEndpoint(const Value: string);
    function GetProtocol: string;
    procedure SetProtocol(const Value: string);
    function GetReturnSubscriptionArn: Boolean;
    procedure SetReturnSubscriptionArn(const Value: Boolean);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TSubscribeRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const ATopicArn: string; const AProtocol: string; const AEndpoint: string); overload;
    function IsSetAttributes: Boolean;
    function IsSetEndpoint: Boolean;
    function IsSetProtocol: Boolean;
    function IsSetReturnSubscriptionArn: Boolean;
    function IsSetTopicArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property KeepAttributes: Boolean read GetKeepAttributes write SetKeepAttributes;
    property Endpoint: string read GetEndpoint write SetEndpoint;
    property Protocol: string read GetProtocol write SetProtocol;
    property ReturnSubscriptionArn: Boolean read GetReturnSubscriptionArn write SetReturnSubscriptionArn;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TSubscribeRequest }

constructor TSubscribeRequest.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TSubscribeRequest.Destroy;
begin
  Attributes := nil;
  inherited;
end;

function TSubscribeRequest.Obj: TSubscribeRequest;
begin
  Result := Self;
end;

constructor TSubscribeRequest.Create(const ATopicArn: string; const AProtocol: string; const AEndpoint: string);
begin
  Create;
  TopicArn := ATopicArn;
  Protocol := AProtocol;
  Endpoint := AEndpoint;
end;

function TSubscribeRequest.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TSubscribeRequest.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    if not KeepAttributes then
      FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TSubscribeRequest.GetKeepAttributes: Boolean;
begin
  Result := FKeepAttributes;
end;

procedure TSubscribeRequest.SetKeepAttributes(const Value: Boolean);
begin
  FKeepAttributes := Value;
end;

function TSubscribeRequest.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TSubscribeRequest.GetEndpoint: string;
begin
  Result := FEndpoint.ValueOrDefault;
end;

procedure TSubscribeRequest.SetEndpoint(const Value: string);
begin
  FEndpoint := Value;
end;

function TSubscribeRequest.IsSetEndpoint: Boolean;
begin
  Result := FEndpoint.HasValue;
end;

function TSubscribeRequest.GetProtocol: string;
begin
  Result := FProtocol.ValueOrDefault;
end;

procedure TSubscribeRequest.SetProtocol(const Value: string);
begin
  FProtocol := Value;
end;

function TSubscribeRequest.IsSetProtocol: Boolean;
begin
  Result := FProtocol.HasValue;
end;

function TSubscribeRequest.GetReturnSubscriptionArn: Boolean;
begin
  Result := FReturnSubscriptionArn.ValueOrDefault;
end;

procedure TSubscribeRequest.SetReturnSubscriptionArn(const Value: Boolean);
begin
  FReturnSubscriptionArn := Value;
end;

function TSubscribeRequest.IsSetReturnSubscriptionArn: Boolean;
begin
  Result := FReturnSubscriptionArn.HasValue;
end;

function TSubscribeRequest.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TSubscribeRequest.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TSubscribeRequest.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
