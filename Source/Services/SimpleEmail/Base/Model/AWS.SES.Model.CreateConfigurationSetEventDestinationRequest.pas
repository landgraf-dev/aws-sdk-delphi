unit AWS.SES.Model.CreateConfigurationSetEventDestinationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.EventDestination;

type
  TCreateConfigurationSetEventDestinationRequest = class;
  
  ICreateConfigurationSetEventDestinationRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestination;
    procedure SetEventDestination(const Value: TEventDestination);
    function Obj: TCreateConfigurationSetEventDestinationRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestination read GetEventDestination write SetEventDestination;
  end;
  
  TCreateConfigurationSetEventDestinationRequest = class(TAmazonSimpleEmailServiceRequest, ICreateConfigurationSetEventDestinationRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEventDestination: TEventDestination;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestination;
    procedure SetEventDestination(const Value: TEventDestination);
  strict protected
    function Obj: TCreateConfigurationSetEventDestinationRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestination read GetEventDestination write SetEventDestination;
  end;
  
implementation

{ TCreateConfigurationSetEventDestinationRequest }

destructor TCreateConfigurationSetEventDestinationRequest.Destroy;
begin
  FEventDestination.Free;
  inherited;
end;

function TCreateConfigurationSetEventDestinationRequest.Obj: TCreateConfigurationSetEventDestinationRequest;
begin
  Result := Self;
end;

function TCreateConfigurationSetEventDestinationRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TCreateConfigurationSetEventDestinationRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TCreateConfigurationSetEventDestinationRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TCreateConfigurationSetEventDestinationRequest.GetEventDestination: TEventDestination;
begin
  Result := FEventDestination;
end;

procedure TCreateConfigurationSetEventDestinationRequest.SetEventDestination(const Value: TEventDestination);
begin
  if FEventDestination <> Value then
  begin
    FEventDestination.Free;
    FEventDestination := Value;
  end;
end;

function TCreateConfigurationSetEventDestinationRequest.IsSetEventDestination: Boolean;
begin
  Result := FEventDestination <> nil;
end;

end.
