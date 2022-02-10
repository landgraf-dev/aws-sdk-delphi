unit AWS.SNS.Model.UnsubscribeRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TUnsubscribeRequest = class;
  
  IUnsubscribeRequest = interface
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function Obj: TUnsubscribeRequest;
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
  TUnsubscribeRequest = class(TAmazonSimpleNotificationServiceRequest, IUnsubscribeRequest)
  strict private
    FSubscriptionArn: Nullable<string>;
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
  strict protected
    function Obj: TUnsubscribeRequest;
  public
    constructor Create(const ASubscriptionArn: string); overload;
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
implementation

{ TUnsubscribeRequest }

function TUnsubscribeRequest.Obj: TUnsubscribeRequest;
begin
  Result := Self;
end;

constructor TUnsubscribeRequest.Create(const ASubscriptionArn: string);
begin
  Create;
  SubscriptionArn := ASubscriptionArn;
end;

function TUnsubscribeRequest.GetSubscriptionArn: string;
begin
  Result := FSubscriptionArn.ValueOrDefault;
end;

procedure TUnsubscribeRequest.SetSubscriptionArn(const Value: string);
begin
  FSubscriptionArn := Value;
end;

function TUnsubscribeRequest.IsSetSubscriptionArn: Boolean;
begin
  Result := FSubscriptionArn.HasValue;
end;

end.
