unit AWS.SES.Model.DescribeConfigurationSetResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ConfigurationSet, 
  AWS.SES.Model.DeliveryOptions, 
  AWS.SES.Model.EventDestination, 
  AWS.SES.Model.ReputationOptions, 
  AWS.SES.Model.TrackingOptions;

type
  TDescribeConfigurationSetResponse = class;
  
  IDescribeConfigurationSetResponse = interface(IAmazonWebServiceResponse)
    function GetConfigurationSet: TConfigurationSet;
    procedure SetConfigurationSet(const Value: TConfigurationSet);
    function GetKeepConfigurationSet: Boolean;
    procedure SetKeepConfigurationSet(const Value: Boolean);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetKeepDeliveryOptions: Boolean;
    procedure SetKeepDeliveryOptions(const Value: Boolean);
    function GetEventDestinations: TObjectList<TEventDestination>;
    procedure SetEventDestinations(const Value: TObjectList<TEventDestination>);
    function GetKeepEventDestinations: Boolean;
    procedure SetKeepEventDestinations(const Value: Boolean);
    function GetReputationOptions: TReputationOptions;
    procedure SetReputationOptions(const Value: TReputationOptions);
    function GetKeepReputationOptions: Boolean;
    procedure SetKeepReputationOptions(const Value: Boolean);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function GetKeepTrackingOptions: Boolean;
    procedure SetKeepTrackingOptions(const Value: Boolean);
    function Obj: TDescribeConfigurationSetResponse;
    function IsSetConfigurationSet: Boolean;
    function IsSetDeliveryOptions: Boolean;
    function IsSetEventDestinations: Boolean;
    function IsSetReputationOptions: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
    property KeepConfigurationSet: Boolean read GetKeepConfigurationSet write SetKeepConfigurationSet;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property KeepDeliveryOptions: Boolean read GetKeepDeliveryOptions write SetKeepDeliveryOptions;
    property EventDestinations: TObjectList<TEventDestination> read GetEventDestinations write SetEventDestinations;
    property KeepEventDestinations: Boolean read GetKeepEventDestinations write SetKeepEventDestinations;
    property ReputationOptions: TReputationOptions read GetReputationOptions write SetReputationOptions;
    property KeepReputationOptions: Boolean read GetKeepReputationOptions write SetKeepReputationOptions;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
    property KeepTrackingOptions: Boolean read GetKeepTrackingOptions write SetKeepTrackingOptions;
  end;
  
  TDescribeConfigurationSetResponse = class(TAmazonWebServiceResponse, IDescribeConfigurationSetResponse)
  strict private
    FConfigurationSet: TConfigurationSet;
    FKeepConfigurationSet: Boolean;
    FDeliveryOptions: TDeliveryOptions;
    FKeepDeliveryOptions: Boolean;
    FEventDestinations: TObjectList<TEventDestination>;
    FKeepEventDestinations: Boolean;
    FReputationOptions: TReputationOptions;
    FKeepReputationOptions: Boolean;
    FTrackingOptions: TTrackingOptions;
    FKeepTrackingOptions: Boolean;
    function GetConfigurationSet: TConfigurationSet;
    procedure SetConfigurationSet(const Value: TConfigurationSet);
    function GetKeepConfigurationSet: Boolean;
    procedure SetKeepConfigurationSet(const Value: Boolean);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetKeepDeliveryOptions: Boolean;
    procedure SetKeepDeliveryOptions(const Value: Boolean);
    function GetEventDestinations: TObjectList<TEventDestination>;
    procedure SetEventDestinations(const Value: TObjectList<TEventDestination>);
    function GetKeepEventDestinations: Boolean;
    procedure SetKeepEventDestinations(const Value: Boolean);
    function GetReputationOptions: TReputationOptions;
    procedure SetReputationOptions(const Value: TReputationOptions);
    function GetKeepReputationOptions: Boolean;
    procedure SetKeepReputationOptions(const Value: Boolean);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function GetKeepTrackingOptions: Boolean;
    procedure SetKeepTrackingOptions(const Value: Boolean);
  strict protected
    function Obj: TDescribeConfigurationSetResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSet: Boolean;
    function IsSetDeliveryOptions: Boolean;
    function IsSetEventDestinations: Boolean;
    function IsSetReputationOptions: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
    property KeepConfigurationSet: Boolean read GetKeepConfigurationSet write SetKeepConfigurationSet;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property KeepDeliveryOptions: Boolean read GetKeepDeliveryOptions write SetKeepDeliveryOptions;
    property EventDestinations: TObjectList<TEventDestination> read GetEventDestinations write SetEventDestinations;
    property KeepEventDestinations: Boolean read GetKeepEventDestinations write SetKeepEventDestinations;
    property ReputationOptions: TReputationOptions read GetReputationOptions write SetReputationOptions;
    property KeepReputationOptions: Boolean read GetKeepReputationOptions write SetKeepReputationOptions;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
    property KeepTrackingOptions: Boolean read GetKeepTrackingOptions write SetKeepTrackingOptions;
  end;
  
implementation

{ TDescribeConfigurationSetResponse }

constructor TDescribeConfigurationSetResponse.Create;
begin
  inherited;
  FEventDestinations := TObjectList<TEventDestination>.Create;
end;

destructor TDescribeConfigurationSetResponse.Destroy;
begin
  TrackingOptions := nil;
  ReputationOptions := nil;
  EventDestinations := nil;
  DeliveryOptions := nil;
  ConfigurationSet := nil;
  inherited;
end;

function TDescribeConfigurationSetResponse.Obj: TDescribeConfigurationSetResponse;
begin
  Result := Self;
end;

function TDescribeConfigurationSetResponse.GetConfigurationSet: TConfigurationSet;
begin
  Result := FConfigurationSet;
end;

procedure TDescribeConfigurationSetResponse.SetConfigurationSet(const Value: TConfigurationSet);
begin
  if FConfigurationSet <> Value then
  begin
    if not KeepConfigurationSet then
      FConfigurationSet.Free;
    FConfigurationSet := Value;
  end;
end;

function TDescribeConfigurationSetResponse.GetKeepConfigurationSet: Boolean;
begin
  Result := FKeepConfigurationSet;
end;

procedure TDescribeConfigurationSetResponse.SetKeepConfigurationSet(const Value: Boolean);
begin
  FKeepConfigurationSet := Value;
end;

function TDescribeConfigurationSetResponse.IsSetConfigurationSet: Boolean;
begin
  Result := FConfigurationSet <> nil;
end;

function TDescribeConfigurationSetResponse.GetDeliveryOptions: TDeliveryOptions;
begin
  Result := FDeliveryOptions;
end;

procedure TDescribeConfigurationSetResponse.SetDeliveryOptions(const Value: TDeliveryOptions);
begin
  if FDeliveryOptions <> Value then
  begin
    if not KeepDeliveryOptions then
      FDeliveryOptions.Free;
    FDeliveryOptions := Value;
  end;
end;

function TDescribeConfigurationSetResponse.GetKeepDeliveryOptions: Boolean;
begin
  Result := FKeepDeliveryOptions;
end;

procedure TDescribeConfigurationSetResponse.SetKeepDeliveryOptions(const Value: Boolean);
begin
  FKeepDeliveryOptions := Value;
end;

function TDescribeConfigurationSetResponse.IsSetDeliveryOptions: Boolean;
begin
  Result := FDeliveryOptions <> nil;
end;

function TDescribeConfigurationSetResponse.GetEventDestinations: TObjectList<TEventDestination>;
begin
  Result := FEventDestinations;
end;

procedure TDescribeConfigurationSetResponse.SetEventDestinations(const Value: TObjectList<TEventDestination>);
begin
  if FEventDestinations <> Value then
  begin
    if not KeepEventDestinations then
      FEventDestinations.Free;
    FEventDestinations := Value;
  end;
end;

function TDescribeConfigurationSetResponse.GetKeepEventDestinations: Boolean;
begin
  Result := FKeepEventDestinations;
end;

procedure TDescribeConfigurationSetResponse.SetKeepEventDestinations(const Value: Boolean);
begin
  FKeepEventDestinations := Value;
end;

function TDescribeConfigurationSetResponse.IsSetEventDestinations: Boolean;
begin
  Result := (FEventDestinations <> nil) and (FEventDestinations.Count > 0);
end;

function TDescribeConfigurationSetResponse.GetReputationOptions: TReputationOptions;
begin
  Result := FReputationOptions;
end;

procedure TDescribeConfigurationSetResponse.SetReputationOptions(const Value: TReputationOptions);
begin
  if FReputationOptions <> Value then
  begin
    if not KeepReputationOptions then
      FReputationOptions.Free;
    FReputationOptions := Value;
  end;
end;

function TDescribeConfigurationSetResponse.GetKeepReputationOptions: Boolean;
begin
  Result := FKeepReputationOptions;
end;

procedure TDescribeConfigurationSetResponse.SetKeepReputationOptions(const Value: Boolean);
begin
  FKeepReputationOptions := Value;
end;

function TDescribeConfigurationSetResponse.IsSetReputationOptions: Boolean;
begin
  Result := FReputationOptions <> nil;
end;

function TDescribeConfigurationSetResponse.GetTrackingOptions: TTrackingOptions;
begin
  Result := FTrackingOptions;
end;

procedure TDescribeConfigurationSetResponse.SetTrackingOptions(const Value: TTrackingOptions);
begin
  if FTrackingOptions <> Value then
  begin
    if not KeepTrackingOptions then
      FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TDescribeConfigurationSetResponse.GetKeepTrackingOptions: Boolean;
begin
  Result := FKeepTrackingOptions;
end;

procedure TDescribeConfigurationSetResponse.SetKeepTrackingOptions(const Value: Boolean);
begin
  FKeepTrackingOptions := Value;
end;

function TDescribeConfigurationSetResponse.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
