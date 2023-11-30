unit AWS.SES.Model.CreateConfigurationSetEventDestinationRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable, 
  AWS.SES.Model.EventDestination;

type
  TCreateConfigurationSetEventDestinationRequest = class;
  
  ICreateConfigurationSetEventDestinationRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEventDestination: TEventDestination;
    procedure SetEventDestination(const Value: TEventDestination);
    function GetKeepEventDestination: Boolean;
    procedure SetKeepEventDestination(const Value: Boolean);
    function Obj: TCreateConfigurationSetEventDestinationRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestination read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
  end;
  
  TCreateConfigurationSetEventDestinationRequest = class(TAmazonSimpleEmailServiceRequest, ICreateConfigurationSetEventDestinationRequest)
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
    function Obj: TCreateConfigurationSetEventDestinationRequest;
  public
    destructor Destroy; override;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEventDestination: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EventDestination: TEventDestination read GetEventDestination write SetEventDestination;
    property KeepEventDestination: Boolean read GetKeepEventDestination write SetKeepEventDestination;
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

function TCreateConfigurationSetEventDestinationRequest.GetEventDestination: TEventDestination;
begin
  Result := FEventDestination;
end;

procedure TCreateConfigurationSetEventDestinationRequest.SetEventDestination(const Value: TEventDestination);
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

end.
