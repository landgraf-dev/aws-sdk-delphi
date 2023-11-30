unit AWS.SNS.Model.SubscribeResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TSubscribeResponse = class;
  
  ISubscribeResponse = interface(IAmazonWebServiceResponse)
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function Obj: TSubscribeResponse;
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
  TSubscribeResponse = class(TAmazonWebServiceResponse, ISubscribeResponse)
  strict private
    FSubscriptionArn: Nullable<string>;
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
  strict protected
    function Obj: TSubscribeResponse;
  public
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
implementation

{ TSubscribeResponse }

function TSubscribeResponse.Obj: TSubscribeResponse;
begin
  Result := Self;
end;

function TSubscribeResponse.GetSubscriptionArn: string;
begin
  Result := FSubscriptionArn.ValueOrDefault;
end;

procedure TSubscribeResponse.SetSubscriptionArn(const Value: string);
begin
  FSubscriptionArn := Value;
end;

function TSubscribeResponse.IsSetSubscriptionArn: Boolean;
begin
  Result := FSubscriptionArn.HasValue;
end;

end.
