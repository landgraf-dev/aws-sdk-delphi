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
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetEventDestinations: TObjectList<TEventDestination>;
    procedure SetEventDestinations(const Value: TObjectList<TEventDestination>);
    function GetReputationOptions: TReputationOptions;
    procedure SetReputationOptions(const Value: TReputationOptions);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
    function Obj: TDescribeConfigurationSetResponse;
    function IsSetConfigurationSet: Boolean;
    function IsSetDeliveryOptions: Boolean;
    function IsSetEventDestinations: Boolean;
    function IsSetReputationOptions: Boolean;
    function IsSetTrackingOptions: Boolean;
    property ConfigurationSet: TConfigurationSet read GetConfigurationSet write SetConfigurationSet;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property EventDestinations: TObjectList<TEventDestination> read GetEventDestinations write SetEventDestinations;
    property ReputationOptions: TReputationOptions read GetReputationOptions write SetReputationOptions;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
  end;
  
  TDescribeConfigurationSetResponse = class(TAmazonWebServiceResponse, IDescribeConfigurationSetResponse)
  strict private
    FConfigurationSet: TConfigurationSet;
    FDeliveryOptions: TDeliveryOptions;
    FEventDestinations: TObjectList<TEventDestination>;
    FReputationOptions: TReputationOptions;
    FTrackingOptions: TTrackingOptions;
    function GetConfigurationSet: TConfigurationSet;
    procedure SetConfigurationSet(const Value: TConfigurationSet);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetEventDestinations: TObjectList<TEventDestination>;
    procedure SetEventDestinations(const Value: TObjectList<TEventDestination>);
    function GetReputationOptions: TReputationOptions;
    procedure SetReputationOptions(const Value: TReputationOptions);
    function GetTrackingOptions: TTrackingOptions;
    procedure SetTrackingOptions(const Value: TTrackingOptions);
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
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property EventDestinations: TObjectList<TEventDestination> read GetEventDestinations write SetEventDestinations;
    property ReputationOptions: TReputationOptions read GetReputationOptions write SetReputationOptions;
    property TrackingOptions: TTrackingOptions read GetTrackingOptions write SetTrackingOptions;
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
    FConfigurationSet.Free;
    FConfigurationSet := Value;
  end;
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
    FDeliveryOptions.Free;
    FDeliveryOptions := Value;
  end;
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
    FEventDestinations.Free;
    FEventDestinations := Value;
  end;
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
    FReputationOptions.Free;
    FReputationOptions := Value;
  end;
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
    FTrackingOptions.Free;
    FTrackingOptions := Value;
  end;
end;

function TDescribeConfigurationSetResponse.IsSetTrackingOptions: Boolean;
begin
  Result := FTrackingOptions <> nil;
end;

end.
