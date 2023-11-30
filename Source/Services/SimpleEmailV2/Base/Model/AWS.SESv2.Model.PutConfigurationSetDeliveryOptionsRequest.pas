unit AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TPutConfigurationSetDeliveryOptionsRequest = class;
  
  IPutConfigurationSetDeliveryOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetSendingPoolName: string;
    procedure SetSendingPoolName(const Value: string);
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
    function Obj: TPutConfigurationSetDeliveryOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetSendingPoolName: Boolean;
    function IsSetTlsPolicy: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property SendingPoolName: string read GetSendingPoolName write SetSendingPoolName;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
  TPutConfigurationSetDeliveryOptionsRequest = class(TAmazonSimpleEmailServiceV2Request, IPutConfigurationSetDeliveryOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FSendingPoolName: Nullable<string>;
    FTlsPolicy: Nullable<TTlsPolicy>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetSendingPoolName: string;
    procedure SetSendingPoolName(const Value: string);
    function GetTlsPolicy: TTlsPolicy;
    procedure SetTlsPolicy(const Value: TTlsPolicy);
  strict protected
    function Obj: TPutConfigurationSetDeliveryOptionsRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetSendingPoolName: Boolean;
    function IsSetTlsPolicy: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property SendingPoolName: string read GetSendingPoolName write SetSendingPoolName;
    property TlsPolicy: TTlsPolicy read GetTlsPolicy write SetTlsPolicy;
  end;
  
implementation

{ TPutConfigurationSetDeliveryOptionsRequest }

function TPutConfigurationSetDeliveryOptionsRequest.Obj: TPutConfigurationSetDeliveryOptionsRequest;
begin
  Result := Self;
end;

function TPutConfigurationSetDeliveryOptionsRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TPutConfigurationSetDeliveryOptionsRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TPutConfigurationSetDeliveryOptionsRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TPutConfigurationSetDeliveryOptionsRequest.GetSendingPoolName: string;
begin
  Result := FSendingPoolName.ValueOrDefault;
end;

procedure TPutConfigurationSetDeliveryOptionsRequest.SetSendingPoolName(const Value: string);
begin
  FSendingPoolName := Value;
end;

function TPutConfigurationSetDeliveryOptionsRequest.IsSetSendingPoolName: Boolean;
begin
  Result := FSendingPoolName.HasValue;
end;

function TPutConfigurationSetDeliveryOptionsRequest.GetTlsPolicy: TTlsPolicy;
begin
  Result := FTlsPolicy.ValueOrDefault;
end;

procedure TPutConfigurationSetDeliveryOptionsRequest.SetTlsPolicy(const Value: TTlsPolicy);
begin
  FTlsPolicy := Value;
end;

function TPutConfigurationSetDeliveryOptionsRequest.IsSetTlsPolicy: Boolean;
begin
  Result := FTlsPolicy.HasValue;
end;

end.
