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
    function GetKeepSubscriptions: Boolean;
    procedure SetKeepSubscriptions(const Value: Boolean);
    function Obj: TListSubscriptionsResponse;
    function IsSetNextToken: Boolean;
    function IsSetSubscriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Subscriptions: TObjectList<TSubscription> read GetSubscriptions write SetSubscriptions;
    property KeepSubscriptions: Boolean read GetKeepSubscriptions write SetKeepSubscriptions;
  end;
  
  TListSubscriptionsResponse = class(TAmazonWebServiceResponse, IListSubscriptionsResponse)
  strict private
    FNextToken: Nullable<string>;
    FSubscriptions: TObjectList<TSubscription>;
    FKeepSubscriptions: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSubscriptions: TObjectList<TSubscription>;
    procedure SetSubscriptions(const Value: TObjectList<TSubscription>);
    function GetKeepSubscriptions: Boolean;
    procedure SetKeepSubscriptions(const Value: Boolean);
  strict protected
    function Obj: TListSubscriptionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSubscriptions: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Subscriptions: TObjectList<TSubscription> read GetSubscriptions write SetSubscriptions;
    property KeepSubscriptions: Boolean read GetKeepSubscriptions write SetKeepSubscriptions;
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
  Subscriptions := nil;
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
    if not KeepSubscriptions then
      FSubscriptions.Free;
    FSubscriptions := Value;
  end;
end;

function TListSubscriptionsResponse.GetKeepSubscriptions: Boolean;
begin
  Result := FKeepSubscriptions;
end;

procedure TListSubscriptionsResponse.SetKeepSubscriptions(const Value: Boolean);
begin
  FKeepSubscriptions := Value;
end;

function TListSubscriptionsResponse.IsSetSubscriptions: Boolean;
begin
  Result := (FSubscriptions <> nil) and (FSubscriptions.Count > 0);
end;

end.
