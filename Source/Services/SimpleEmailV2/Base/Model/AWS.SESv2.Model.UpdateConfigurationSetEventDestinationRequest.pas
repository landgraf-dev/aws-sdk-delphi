unit AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable, 
  AWS.SESv2.Model.EventDestinationDefinition;

type
  TUpdateConfigurationSetEventDestinationRequest = class;
  
  IUpdateConfigurationSetEventDestinationRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestinationDefinition;
    procedure SetEventDestination(const Value: TEventDestinationDefinition);
    function GetKeepEventDestination: Boolean;
    procedure SetKeepEventDestination(const Value: Boolean);
    function GetEventDestinationName: string;
    procedure SetEventDestinationName(const Value: string);
    function Obj: TUpdateConfigurationSetEventDestinationRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    function IsSetEventDestinationName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestinationDefinition read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
    property EventDestinationName: string read GetEventDestinationName write SetEventDestinationName;
  end;
  
  TUpdateConfigurationSetEventDestinationRequest = class(TAmazonSimpleEmailServiceV2Request, IUpdateConfigurationSetEventDestinationRequest)
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
    function Obj: TUpdateConfigurationSetEventDestinationRequest;
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

{ TUpdateConfigurationSetEventDestinationRequest }

destructor TUpdateConfigurationSetEventDestinationRequest.Destroy;
begin
  EventDestination := nil;
  inherited;
end;

function TUpdateConfigurationSetEventDestinationRequest.Obj: TUpdateConfigurationSetEventDestinationRequest;
begin
  Result := Self;
end;

function TUpdateConfigurationSetEventDestinationRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TUpdateConfigurationSetEventDestinationRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TUpdateConfigurationSetEventDestinationRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TUpdateConfigurationSetEventDestinationRequest.GetEventDestination: TEventDestinationDefinition;
begin
  Result := FEventDestination;
end;

procedure TUpdateConfigurationSetEventDestinationRequest.SetEventDestination(const Value: TEventDestinationDefinition);
begin
  if FEventDestination <> Value then
  begin
    if not KeepEventDestination then
      FEventDestination.Free;
    FEventDestination := Value;
  end;
end;

function TUpdateConfigurationSetEventDestinationRequest.GetKeepEventDestination: Boolean;
begin
  Result := FKeepEventDestination;
end;

procedure TUpdateConfigurationSetEventDestinationRequest.SetKeepEventDestination(const Value: Boolean);
begin
  FKeepEventDestination := Value;
end;

function TUpdateConfigurationSetEventDestinationRequest.IsSetEventDestination: Boolean;
begin
  Result := FEventDestination <> nil;
end;

function TUpdateConfigurationSetEventDestinationRequest.GetEventDestinationName: string;
begin
  Result := FEventDestinationName.ValueOrDefault;
end;

procedure TUpdateConfigurationSetEventDestinationRequest.SetEventDestinationName(const Value: string);
begin
  FEventDestinationName := Value;
end;

function TUpdateConfigurationSetEventDestinationRequest.IsSetEventDestinationName: Boolean;
begin
  Result := FEventDestinationName.HasValue;
end;

end.
