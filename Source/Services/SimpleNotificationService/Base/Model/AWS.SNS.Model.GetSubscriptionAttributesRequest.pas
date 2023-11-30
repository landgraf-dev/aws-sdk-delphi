unit AWS.SNS.Model.GetSubscriptionAttributesRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TGetSubscriptionAttributesRequest = class;
  
  IGetSubscriptionAttributesRequest = interface
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function Obj: TGetSubscriptionAttributesRequest;
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
  TGetSubscriptionAttributesRequest = class(TAmazonSimpleNotificationServiceRequest, IGetSubscriptionAttributesRequest)
  strict private
    FSubscriptionArn: Nullable<string>;
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
  strict protected
    function Obj: TGetSubscriptionAttributesRequest;
  public
    constructor Create(const ASubscriptionArn: string); overload;
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
implementation

{ TGetSubscriptionAttributesRequest }

function TGetSubscriptionAttributesRequest.Obj: TGetSubscriptionAttributesRequest;
begin
  Result := Self;
end;

constructor TGetSubscriptionAttributesRequest.Create(const ASubscriptionArn: string);
begin
  Create;
  SubscriptionArn := ASubscriptionArn;
end;

function TGetSubscriptionAttributesRequest.GetSubscriptionArn: string;
begin
  Result := FSubscriptionArn.ValueOrDefault;
end;

procedure TGetSubscriptionAttributesRequest.SetSubscriptionArn(const Value: string);
begin
  FSubscriptionArn := Value;
end;

function TGetSubscriptionAttributesRequest.IsSetSubscriptionArn: Boolean;
begin
  Result := FSubscriptionArn.HasValue;
end;

end.
