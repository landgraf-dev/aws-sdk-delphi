unit AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TUpdateConfigurationSetSendingEnabledRequest = class;
  
  IUpdateConfigurationSetSendingEnabledRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function Obj: TUpdateConfigurationSetSendingEnabledRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
  TUpdateConfigurationSetSendingEnabledRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateConfigurationSetSendingEnabledRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEnabled: Nullable<Boolean>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
  strict protected
    function Obj: TUpdateConfigurationSetSendingEnabledRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property Enabled: Boolean read GetEnabled write SetEnabled;
  end;
  
implementation

{ TUpdateConfigurationSetSendingEnabledRequest }

function TUpdateConfigurationSetSendingEnabledRequest.Obj: TUpdateConfigurationSetSendingEnabledRequest;
begin
  Result := Self;
end;

function TUpdateConfigurationSetSendingEnabledRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TUpdateConfigurationSetSendingEnabledRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TUpdateConfigurationSetSendingEnabledRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TUpdateConfigurationSetSendingEnabledRequest.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TUpdateConfigurationSetSendingEnabledRequest.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TUpdateConfigurationSetSendingEnabledRequest.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

end.
