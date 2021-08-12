unit AWS.SNS.Model.ListSubscriptionsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.Subscription;

type
  TListSubscriptionsResponse = class;
  
  IListSubscriptionsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSubscriptions: TObjectList<TSubscription>;
    procedure SetSubscriptions(const Value: TObjectList<TSubscription>);
    function Obj: TListSubscriptionsResponse;
    function IsSetNextToken: Boolean;
    function IsSetSubscriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Subscriptions: TObjectList<TSubscription> read GetSubscriptions write SetSubscriptions;
  end;
  
  TListSubscriptionsResponse = class(TAmazonWebServiceResponse, IListSubscriptionsResponse)
  strict private
    FNextToken: Nullable<string>;
    FSubscriptions: TObjectList<TSubscription>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSubscriptions: TObjectList<TSubscription>;
    procedure SetSubscriptions(const Value: TObjectList<TSubscription>);
  strict protected
    function Obj: TListSubscriptionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSubscriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Subscriptions: TObjectList<TSubscription> read GetSubscriptions write SetSubscriptions;
  end;
  
implementation

{ TListSubscriptionsResponse }

constructor TListSubscriptionsResponse.Create;
begin
  inherited;
  FSubscriptions := TObjectList<TSubscription>.Create;
end;

destructor TListSubscriptionsResponse.Destroy;
begin
  FSubscriptions.Free;
  inherited;
end;

function TListSubscriptionsResponse.Obj: TListSubscriptionsResponse;
begin
  Result := Self;
end;

function TListSubscriptionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListSubscriptionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListSubscriptionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListSubscriptionsResponse.GetSubscriptions: TObjectList<TSubscription>;
begin
  Result := FSubscriptions;
end;

procedure TListSubscriptionsResponse.SetSubscriptions(const Value: TObjectList<TSubscription>);
begin
  if FSubscriptions <> Value then
  begin
    FSubscriptions.Free;
    FSubscriptions := Value;
  end;
end;

function TListSubscriptionsResponse.IsSetSubscriptions: Boolean;
begin
  Result := (FSubscriptions <> nil) and (FSubscriptions.Count > 0);
end;

end.
