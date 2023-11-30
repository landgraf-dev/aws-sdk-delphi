unit AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TPutConfigurationSetSendingOptionsRequest = class;
  
  IPutConfigurationSetSendingOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
    function Obj: TPutConfigurationSetSendingOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetSendingEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
  TPutConfigurationSetSendingOptionsRequest = class(TAmazonSimpleEmailServiceV2Request, IPutConfigurationSetSendingOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FSendingEnabled: Nullable<Boolean>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetSendingEnabled: Boolean;
    procedure SetSendingEnabled(const Value: Boolean);
  strict protected
    function Obj: TPutConfigurationSetSendingOptionsRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetSendingEnabled: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property SendingEnabled: Boolean read GetSendingEnabled write SetSendingEnabled;
  end;
  
implementation

{ TPutConfigurationSetSendingOptionsRequest }

function TPutConfigurationSetSendingOptionsRequest.Obj: TPutConfigurationSetSendingOptionsRequest;
begin
  Result := Self;
end;

function TPutConfigurationSetSendingOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TPutConfigurationSetSendingOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TPutConfigurationSetSendingOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TPutConfigurationSetSendingOptionsRequest.GetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.ValueOrDefault;
end;

procedure TPutConfigurationSetSendingOptionsRequest.SetSendingEnabled(const Value: Boolean);
begin
  FSendingEnabled := Value;
end;

function TPutConfigurationSetSendingOptionsRequest.IsSetSendingEnabled: Boolean;
begin
  Result := FSendingEnabled.HasValue;
end;

end.
