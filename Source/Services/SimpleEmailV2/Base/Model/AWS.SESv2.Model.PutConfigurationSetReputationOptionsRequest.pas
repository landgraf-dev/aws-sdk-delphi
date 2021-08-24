unit AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TPutConfigurationSetReputationOptionsRequest = class;
  
  IPutConfigurationSetReputationOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetReputationMetricsEnabled: Boolean;
    procedure SetReputationMetricsEnabled(const Value: Boolean);
    function Obj: TPutConfigurationSetReputationOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetReputationMetricsEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property ReputationMetricsEnabled: Boolean read GetReputationMetricsEnabled write SetReputationMetricsEnabled;
  end;
  
  TPutConfigurationSetReputationOptionsRequest = class(TAmazonSimpleEmailServiceV2Request, IPutConfigurationSetReputationOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FReputationMetricsEnabled: Nullable<Boolean>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetReputationMetricsEnabled: Boolean;
    procedure SetReputationMetricsEnabled(const Value: Boolean);
  strict protected
    function Obj: TPutConfigurationSetReputationOptionsRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetReputationMetricsEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property ReputationMetricsEnabled: Boolean read GetReputationMetricsEnabled write SetReputationMetricsEnabled;
  end;
  
implementation

{ TPutConfigurationSetReputationOptionsRequest }

function TPutConfigurationSetReputationOptionsRequest.Obj: TPutConfigurationSetReputationOptionsRequest;
begin
  Result := Self;
end;

function TPutConfigurationSetReputationOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TPutConfigurationSetReputationOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TPutConfigurationSetReputationOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TPutConfigurationSetReputationOptionsRequest.GetReputationMetricsEnabled: Boolean;
begin
  Result := FReputationMetricsEnabled.ValueOrDefault;
end;

procedure TPutConfigurationSetReputationOptionsRequest.SetReputationMetricsEnabled(const Value: Boolean);
begin
  FReputationMetricsEnabled := Value;
end;

function TPutConfigurationSetReputationOptionsRequest.IsSetReputationMetricsEnabled: Boolean;
begin
  Result := FReputationMetricsEnabled.HasValue;
end;

end.
