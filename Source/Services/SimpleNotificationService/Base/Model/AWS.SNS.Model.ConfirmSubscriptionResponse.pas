unit AWS.SNS.Model.ConfirmSubscriptionResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TConfirmSubscriptionResponse = class;
  
  IConfirmSubscriptionResponse = interface(IAmazonWebServiceResponse)
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
    function Obj: TConfirmSubscriptionResponse;
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
  TConfirmSubscriptionResponse = class(TAmazonWebServiceResponse, IConfirmSubscriptionResponse)
  strict private
    FSubscriptionArn: Nullable<string>;
    function GetSubscriptionArn: string;
    procedure SetSubscriptionArn(const Value: string);
  strict protected
    function Obj: TConfirmSubscriptionResponse;
  public
    function IsSetSubscriptionArn: Boolean;
    property SubscriptionArn: string read GetSubscriptionArn write SetSubscriptionArn;
  end;
  
implementation

{ TConfirmSubscriptionResponse }

function TConfirmSubscriptionResponse.Obj: TConfirmSubscriptionResponse;
begin
  Result := Self;
end;

function TConfirmSubscriptionResponse.GetSubscriptionArn: string;
begin
  Result := FSubscriptionArn.ValueOrDefault;
end;

procedure TConfirmSubscriptionResponse.SetSubscriptionArn(const Value: string);
begin
  FSubscriptionArn := Value;
end;

function TConfirmSubscriptionResponse.IsSetSubscriptionArn: Boolean;
begin
  Result := FSubscriptionArn.HasValue;
end;

end.
