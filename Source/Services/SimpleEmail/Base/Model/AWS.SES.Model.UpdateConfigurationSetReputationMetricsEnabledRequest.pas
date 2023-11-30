unit AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TUpdateConfigurationSetReputationMetricsEnabledRequest = class;
  
  IUpdateConfigurationSetReputationMetricsEnabledRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function Obj: TUpdateConfigurationSetReputationMetricsEnabledRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
  TUpdateConfigurationSetReputationMetricsEnabledRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateConfigurationSetReputationMetricsEnabledRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEnabled: Nullable<Boolean>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
  strict protected
    function Obj: TUpdateConfigurationSetReputationMetricsEnabledRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
implementation

{ TUpdateConfigurationSetReputationMetricsEnabledRequest }

function TUpdateConfigurationSetReputationMetricsEnabledRequest.Obj: TUpdateConfigurationSetReputationMetricsEnabledRequest;
begin
  Result := Self;
end;

function TUpdateConfigurationSetReputationMetricsEnabledRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TUpdateConfigurationSetReputationMetricsEnabledRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TUpdateConfigurationSetReputationMetricsEnabledRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TUpdateConfigurationSetReputationMetricsEnabledRequest.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TUpdateConfigurationSetReputationMetricsEnabledRequest.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TUpdateConfigurationSetReputationMetricsEnabledRequest.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

end.
