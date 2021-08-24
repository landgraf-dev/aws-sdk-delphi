unit AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TPutConfigurationSetTrackingOptionsRequest = class;
  
  IPutConfigurationSetTrackingOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetCustomRedirectDomain: string;
    procedure SetCustomRedirectDomain(const Value: string);
    function Obj: TPutConfigurationSetTrackingOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetCustomRedirectDomain: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property CustomRedirectDomain: string read GetCustomRedirectDomain write SetCustomRedirectDomain;
  end;
  
  TPutConfigurationSetTrackingOptionsRequest = class(TAmazonSimpleEmailServiceV2Request, IPutConfigurationSetTrackingOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FCustomRedirectDomain: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetCustomRedirectDomain: string;
    procedure SetCustomRedirectDomain(const Value: string);
  strict protected
    function Obj: TPutConfigurationSetTrackingOptionsRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetCustomRedirectDomain: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property CustomRedirectDomain: string read GetCustomRedirectDomain write SetCustomRedirectDomain;
  end;
  
implementation

{ TPutConfigurationSetTrackingOptionsRequest }

function TPutConfigurationSetTrackingOptionsRequest.Obj: TPutConfigurationSetTrackingOptionsRequest;
begin
  Result := Self;
end;

function TPutConfigurationSetTrackingOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TPutConfigurationSetTrackingOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TPutConfigurationSetTrackingOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TPutConfigurationSetTrackingOptionsRequest.GetCustomRedirectDomain: string;
begin
  Result := FCustomRedirectDomain.ValueOrDefault;
end;

procedure TPutConfigurationSetTrackingOptionsRequest.SetCustomRedirectDomain(const Value: string);
begin
  FCustomRedirectDomain := Value;
end;

function TPutConfigurationSetTrackingOptionsRequest.IsSetCustomRedirectDomain: Boolean;
begin
  Result := FCustomRedirectDomain.HasValue;
end;

end.
