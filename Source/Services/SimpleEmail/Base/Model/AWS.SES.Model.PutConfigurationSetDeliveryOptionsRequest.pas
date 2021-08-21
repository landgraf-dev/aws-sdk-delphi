unit AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.DeliveryOptions;

type
  TPutConfigurationSetDeliveryOptionsRequest = class;
  
  IPutConfigurationSetDeliveryOptionsRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetKeepDeliveryOptions: Boolean;
    procedure SetKeepDeliveryOptions(const Value: Boolean);
    function Obj: TPutConfigurationSetDeliveryOptionsRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDeliveryOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property KeepDeliveryOptions: Boolean read GetKeepDeliveryOptions write SetKeepDeliveryOptions;
  end;
  
  TPutConfigurationSetDeliveryOptionsRequest = class(TAmazonSimpleEmailServiceRequest, IPutConfigurationSetDeliveryOptionsRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FDeliveryOptions: TDeliveryOptions;
    FKeepDeliveryOptions: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetDeliveryOptions: TDeliveryOptions;
    procedure SetDeliveryOptions(const Value: TDeliveryOptions);
    function GetKeepDeliveryOptions: Boolean;
    procedure SetKeepDeliveryOptions(const Value: Boolean);
  strict protected
    function Obj: TPutConfigurationSetDeliveryOptionsRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetDeliveryOptions: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property DeliveryOptions: TDeliveryOptions read GetDeliveryOptions write SetDeliveryOptions;
    property KeepDeliveryOptions: Boolean read GetKeepDeliveryOptions write SetKeepDeliveryOptions;
  end;
  
implementation

{ TPutConfigurationSetDeliveryOptionsRequest }

destructor TPutConfigurationSetDeliveryOptionsRequest.Destroy;
begin
  DeliveryOptions := nil;
  inherited;
end;

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

function TPutConfigurationSetDeliveryOptionsRequest.GetDeliveryOptions: TDeliveryOptions;
begin
  Result := FDeliveryOptions;
end;

procedure TPutConfigurationSetDeliveryOptionsRequest.SetDeliveryOptions(const Value: TDeliveryOptions);
begin
  if FDeliveryOptions <> Value then
  begin
    if not KeepDeliveryOptions then
      FDeliveryOptions.Free;
    FDeliveryOptions := Value;
  end;
end;

function TPutConfigurationSetDeliveryOptionsRequest.GetKeepDeliveryOptions: Boolean;
begin
  Result := FKeepDeliveryOptions;
end;

procedure TPutConfigurationSetDeliveryOptionsRequest.SetKeepDeliveryOptions(const Value: Boolean);
begin
  FKeepDeliveryOptions := Value;
end;

function TPutConfigurationSetDeliveryOptionsRequest.IsSetDeliveryOptions: Boolean;
begin
  Result := FDeliveryOptions <> nil;
end;

end.
