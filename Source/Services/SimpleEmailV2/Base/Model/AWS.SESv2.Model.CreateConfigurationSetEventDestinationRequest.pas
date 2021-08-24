unit AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.EventDestinationDefinition;

type
  TCreateConfigurationSetEventDestinationRequest = class;
  
  ICreateConfigurationSetEventDestinationRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestinationDefinition;
    procedure SetEventDestination(const Value: TEventDestinationDefinition);
    function GetKeepEventDestination: Boolean;
    procedure SetKeepEventDestination(const Value: Boolean);
    function GetEventDestinationName: string;
    procedure SetEventDestinationName(const Value: string);
    function Obj: TCreateConfigurationSetEventDestinationRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    function IsSetEventDestinationName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestinationDefinition read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
    property EventDestinationName: string read GetEventDestinationName write SetEventDestinationName;
  end;
  
  TCreateConfigurationSetEventDestinationRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateConfigurationSetEventDestinationRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEventDestination: TEventDestinationDefinition;
    FKeepEventDestination: Boolean;
    FEventDestinationName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestinationDefinition;
    procedure SetEventDestination(const Value: TEventDestinationDefinition);
    function GetKeepEventDestination: Boolean;
    procedure SetKeepEventDestination(const Value: Boolean);
    function GetEventDestinationName: string;
    procedure SetEventDestinationName(const Value: string);
  strict protected
    function Obj: TCreateConfigurationSetEventDestinationRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    function IsSetEventDestinationName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestinationDefinition read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
    property EventDestinationName: string read GetEventDestinationName write SetEventDestinationName;
  end;
  
implementation

{ TCreateConfigurationSetEventDestinationRequest }

destructor TCreateConfigurationSetEventDestinationRequest.Destroy;
begin
  EventDestination := nil;
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

function TCreateConfigurationSetEventDestinationRequest.GetEventDestination: TEventDestinationDefinition;
begin
  Result := FEventDestination;
end;

procedure TCreateConfigurationSetEventDestinationRequest.SetEventDestination(const Value: TEventDestinationDefinition);
begin
  if FEventDestination <> Value then
  begin
    if not KeepEventDestination then
      FEventDestination.Free;
    FEventDestination := Value;
  end;
end;

function TCreateConfigurationSetEventDestinationRequest.GetKeepEventDestination: Boolean;
begin
  Result := FKeepEventDestination;
end;

procedure TCreateConfigurationSetEventDestinationRequest.SetKeepEventDestination(const Value: Boolean);
begin
  FKeepEventDestination := Value;
end;

function TCreateConfigurationSetEventDestinationRequest.IsSetEventDestination: Boolean;
begin
  Result := FEventDestination <> nil;
end;

function TCreateConfigurationSetEventDestinationRequest.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure TCreateConfigurationSetEventDestinationRequest.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function TCreateConfigurationSetEventDestinationRequest.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
