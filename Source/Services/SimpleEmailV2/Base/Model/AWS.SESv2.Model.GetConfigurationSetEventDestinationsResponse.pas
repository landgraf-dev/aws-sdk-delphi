unit AWS.SESv2.Model.GetConfigurationSetEventDestinationsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.EventDestination;

type
  TGetConfigurationSetEventDestinationsResponse = class;
  
  IGetConfigurationSetEventDestinationsResponse = interface(IAmazonWebServiceResponse)
    function GetEventDestinations: TObjectList<TEventDestination>;
    procedure SetEventDestinations(const Value: TObjectList<TEventDestination>);
    function GetKeepEventDestinations: Boolean;
    procedure SetKeepEventDestinations(const Value: Boolean);
    function Obj: TGetConfigurationSetEventDestinationsResponse;
    function IsSetEventDestinations: Boolean;
    property EventDestinations: TObjectList<TEventDestination> read GetEventDestinations write SetEventDestinations;
    property KeepEventDestinations: Boolean read GetKeepEventDestinations write SetKeepEventDestinations;
  end;
  
  TGetConfigurationSetEventDestinationsResponse = class(TAmazonWebServiceResponse, IGetConfigurationSetEventDestinationsResponse)
  strict private
    FEventDestinations: TObjectList<TEventDestination>;
    FKeepEventDestinations: Boolean;
    function GetEventDestinations: TObjectList<TEventDestination>;
    procedure SetEventDestinations(const Value: TObjectList<TEventDestination>);
    function GetKeepEventDestinations: Boolean;
    procedure SetKeepEventDestinations(const Value: Boolean);
  strict protected
    function Obj: TGetConfigurationSetEventDestinationsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEventDestinations: Boolean;
    property EventDestinations: TObjectList<TEventDestination> read GetEventDestinations write SetEventDestinations;
    property KeepEventDestinations: Boolean read GetKeepEventDestinations write SetKeepEventDestinations;
  end;
  
implementation

{ TGetConfigurationSetEventDestinationsResponse }

constructor TGetConfigurationSetEventDestinationsResponse.Create;
begin
  inherited;
  FEventDestinations := TObjectList<TEventDestination>.Create;
end;

destructor TGetConfigurationSetEventDestinationsResponse.Destroy;
begin
  EventDestinations := nil;
  inherited;
end;

function TGetConfigurationSetEventDestinationsResponse.Obj: TGetConfigurationSetEventDestinationsResponse;
begin
  Result := Self;
end;

function TGetConfigurationSetEventDestinationsResponse.GetEventDestinations: TObjectList<TEventDestination>;
begin
  Result := FEventDestinations;
end;

procedure TGetConfigurationSetEventDestinationsResponse.SetEventDestinations(const Value: TObjectList<TEventDestination>);
begin
  if FEventDestinations <> Value then
  begin
    if not KeepEventDestinations then
      FEventDestinations.Free;
    FEventDestinations := Value;
  end;
end;

function TGetConfigurationSetEventDestinationsResponse.GetKeepEventDestinations: Boolean;
begin
  Result := FKeepEventDestinations;
end;

procedure TGetConfigurationSetEventDestinationsResponse.SetKeepEventDestinations(const Value: Boolean);
begin
  FKeepEventDestinations := Value;
end;

function TGetConfigurationSetEventDestinationsResponse.IsSetEventDestinations: Boolean;
begin
  Result := (FEventDestinations <> nil) and (FEventDestinations.Count > 0);
end;

end.
