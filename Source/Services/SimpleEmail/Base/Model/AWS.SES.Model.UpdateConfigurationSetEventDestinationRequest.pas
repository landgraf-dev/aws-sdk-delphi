unit AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.EventDestination;

type
  TUpdateConfigurationSetEventDestinationRequest = class;
  
  IUpdateConfigurationSetEventDestinationRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestination;
    procedure SetEventDestination(const Value: TEventDestination);
    function GetKeepEventDestination: Boolean;
    procedure SetKeepEventDestination(const Value: Boolean);
    function Obj: TUpdateConfigurationSetEventDestinationRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestination read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
  end;
  
  TUpdateConfigurationSetEventDestinationRequest = class(TAmazonSimpleEmailServiceRequest, IUpdateConfigurationSetEventDestinationRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEventDestination: TEventDestination;
    FKeepEventDestination: Boolean;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestination;
    procedure SetEventDestination(const Value: TEventDestination);
    function GetKeepEventDestination: Boolean;
    procedure SetKeepEventDestination(const Value: Boolean);
  strict protected
    function Obj: TUpdateConfigurationSetEventDestinationRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestination read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
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

function TUpdateConfigurationSetEventDestinationRequest.GetEventDestination: TEventDestination;
begin
  Result := FEventDestination;
end;

procedure TUpdateConfigurationSetEventDestinationRequest.SetEventDestination(const Value: TEventDestination);
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

end.
