unit AWS.SESv2.Model.EventDestinationDefinition;

interface

uses
  System.Generics.Collections, 
  AWS.SESv2.Model.CloudWatchDestination, 
  AWS.Nullable, 
  AWS.SESv2.Model.KinesisFirehoseDestination, 
  AWS.SESv2.Model.PinpointDestination, 
  AWS.SESv2.Model.SnsDestination;

type
  TEventDestinationDefinition = class;
  
  IEventDestinationDefinition = interface
    function GetCloudWatchDestination: TCloudWatchDestination;
    procedure SetCloudWatchDestination(const Value: TCloudWatchDestination);
    function GetKeepCloudWatchDestination: Boolean;
    procedure SetKeepCloudWatchDestination(const Value: Boolean);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetKinesisFirehoseDestination: TKinesisFirehoseDestination;
    procedure SetKinesisFirehoseDestination(const Value: TKinesisFirehoseDestination);
    function GetKeepKinesisFirehoseDestination: Boolean;
    procedure SetKeepKinesisFirehoseDestination(const Value: Boolean);
    function GetMatchingEventTypes: TList<string>;
    procedure SetMatchingEventTypes(const Value: TList<string>);
    function GetKeepMatchingEventTypes: Boolean;
    procedure SetKeepMatchingEventTypes(const Value: Boolean);
    function GetPinpointDestination: TPinpointDestination;
    procedure SetPinpointDestination(const Value: TPinpointDestination);
    function GetKeepPinpointDestination: Boolean;
    procedure SetKeepPinpointDestination(const Value: Boolean);
    function GetSnsDestination: TSnsDestination;
    procedure SetSnsDestination(const Value: TSnsDestination);
    function GetKeepSnsDestination: Boolean;
    procedure SetKeepSnsDestination(const Value: Boolean);
    function Obj: TEventDestinationDefinition;
    function IsSetCloudWatchDestination: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetKinesisFirehoseDestination: Boolean;
    function IsSetMatchingEventTypes: Boolean;
    function IsSetPinpointDestination: Boolean;
    function IsSetSnsDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property KeepCloudWatchDestination: Boolean read GetKeepCloudWatchDestination write SetKeepCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property KeepKinesisFirehoseDestination: Boolean read GetKeepKinesisFirehoseDestination write SetKeepKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property KeepMatchingEventTypes: Boolean read GetKeepMatchingEventTypes write SetKeepMatchingEventTypes;
    property PinpointDestination: TPinpointDestination read GetPinpointDestination write SetPinpointDestination;
    property KeepPinpointDestination: Boolean read GetKeepPinpointDestination write SetKeepPinpointDestination;
    property SnsDestination: TSnsDestination read GetSnsDestination write SetSnsDestination;
    property KeepSnsDestination: Boolean read GetKeepSnsDestination write SetKeepSnsDestination;
  end;
  
  TEventDestinationDefinition = class
  strict private
    FCloudWatchDestination: TCloudWatchDestination;
    FKeepCloudWatchDestination: Boolean;
    FEnabled: Nullable<Boolean>;
    FKinesisFirehoseDestination: TKinesisFirehoseDestination;
    FKeepKinesisFirehoseDestination: Boolean;
    FMatchingEventTypes: TList<string>;
    FKeepMatchingEventTypes: Boolean;
    FPinpointDestination: TPinpointDestination;
    FKeepPinpointDestination: Boolean;
    FSnsDestination: TSnsDestination;
    FKeepSnsDestination: Boolean;
    function GetCloudWatchDestination: TCloudWatchDestination;
    procedure SetCloudWatchDestination(const Value: TCloudWatchDestination);
    function GetKeepCloudWatchDestination: Boolean;
    procedure SetKeepCloudWatchDestination(const Value: Boolean);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetKinesisFirehoseDestination: TKinesisFirehoseDestination;
    procedure SetKinesisFirehoseDestination(const Value: TKinesisFirehoseDestination);
    function GetKeepKinesisFirehoseDestination: Boolean;
    procedure SetKeepKinesisFirehoseDestination(const Value: Boolean);
    function GetMatchingEventTypes: TList<string>;
    procedure SetMatchingEventTypes(const Value: TList<string>);
    function GetKeepMatchingEventTypes: Boolean;
    procedure SetKeepMatchingEventTypes(const Value: Boolean);
    function GetPinpointDestination: TPinpointDestination;
    procedure SetPinpointDestination(const Value: TPinpointDestination);
    function GetKeepPinpointDestination: Boolean;
    procedure SetKeepPinpointDestination(const Value: Boolean);
    function GetSnsDestination: TSnsDestination;
    procedure SetSnsDestination(const Value: TSnsDestination);
    function GetKeepSnsDestination: Boolean;
    procedure SetKeepSnsDestination(const Value: Boolean);
  strict protected
    function Obj: TEventDestinationDefinition;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCloudWatchDestination: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetKinesisFirehoseDestination: Boolean;
    function IsSetMatchingEventTypes: Boolean;
    function IsSetPinpointDestination: Boolean;
    function IsSetSnsDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property KeepCloudWatchDestination: Boolean read GetKeepCloudWatchDestination write SetKeepCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property KeepKinesisFirehoseDestination: Boolean read GetKeepKinesisFirehoseDestination write SetKeepKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property KeepMatchingEventTypes: Boolean read GetKeepMatchingEventTypes write SetKeepMatchingEventTypes;
    property PinpointDestination: TPinpointDestination read GetPinpointDestination write SetPinpointDestination;
    property KeepPinpointDestination: Boolean read GetKeepPinpointDestination write SetKeepPinpointDestination;
    property SnsDestination: TSnsDestination read GetSnsDestination write SetSnsDestination;
    property KeepSnsDestination: Boolean read GetKeepSnsDestination write SetKeepSnsDestination;
  end;
  
implementation

{ TEventDestinationDefinition }

constructor TEventDestinationDefinition.Create;
begin
  inherited;
  FMatchingEventTypes := TList<string>.Create;
end;

destructor TEventDestinationDefinition.Destroy;
begin
  SnsDestination := nil;
  PinpointDestination := nil;
  MatchingEventTypes := nil;
  KinesisFirehoseDestination := nil;
  CloudWatchDestination := nil;
  inherited;
end;

function TEventDestinationDefinition.Obj: TEventDestinationDefinition;
begin
  Result := Self;
end;

function TEventDestinationDefinition.GetCloudWatchDestination: TCloudWatchDestination;
begin
  Result := FCloudWatchDestination;
end;

procedure TEventDestinationDefinition.SetCloudWatchDestination(const Value: TCloudWatchDestination);
begin
  if FCloudWatchDestination <> Value then
  begin
    if not KeepCloudWatchDestination then
      FCloudWatchDestination.Free;
    FCloudWatchDestination := Value;
  end;
end;

function TEventDestinationDefinition.GetKeepCloudWatchDestination: Boolean;
begin
  Result := FKeepCloudWatchDestination;
end;

procedure TEventDestinationDefinition.SetKeepCloudWatchDestination(const Value: Boolean);
begin
  FKeepCloudWatchDestination := Value;
end;

function TEventDestinationDefinition.IsSetCloudWatchDestination: Boolean;
begin
  Result := FCloudWatchDestination <> nil;
end;

function TEventDestinationDefinition.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TEventDestinationDefinition.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TEventDestinationDefinition.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TEventDestinationDefinition.GetKinesisFirehoseDestination: TKinesisFirehoseDestination;
begin
  Result := FKinesisFirehoseDestination;
end;

procedure TEventDestinationDefinition.SetKinesisFirehoseDestination(const Value: TKinesisFirehoseDestination);
begin
  if FKinesisFirehoseDestination <> Value then
  begin
    if not KeepKinesisFirehoseDestination then
      FKinesisFirehoseDestination.Free;
    FKinesisFirehoseDestination := Value;
  end;
end;

function TEventDestinationDefinition.GetKeepKinesisFirehoseDestination: Boolean;
begin
  Result := FKeepKinesisFirehoseDestination;
end;

procedure TEventDestinationDefinition.SetKeepKinesisFirehoseDestination(const Value: Boolean);
begin
  FKeepKinesisFirehoseDestination := Value;
end;

function TEventDestinationDefinition.IsSetKinesisFirehoseDestination: Boolean;
begin
  Result := FKinesisFirehoseDestination <> nil;
end;

function TEventDestinationDefinition.GetMatchingEventTypes: TList<string>;
begin
  Result := FMatchingEventTypes;
end;

procedure TEventDestinationDefinition.SetMatchingEventTypes(const Value: TList<string>);
begin
  if FMatchingEventTypes <> Value then
  begin
    if not KeepMatchingEventTypes then
      FMatchingEventTypes.Free;
    FMatchingEventTypes := Value;
  end;
end;

function TEventDestinationDefinition.GetKeepMatchingEventTypes: Boolean;
begin
  Result := FKeepMatchingEventTypes;
end;

procedure TEventDestinationDefinition.SetKeepMatchingEventTypes(const Value: Boolean);
begin
  FKeepMatchingEventTypes := Value;
end;

function TEventDestinationDefinition.IsSetMatchingEventTypes: Boolean;
begin
  Result := (FMatchingEventTypes <> nil) and (FMatchingEventTypes.Count > 0);
end;

function TEventDestinationDefinition.GetPinpointDestination: TPinpointDestination;
begin
  Result := FPinpointDestination;
end;

procedure TEventDestinationDefinition.SetPinpointDestination(const Value: TPinpointDestination);
begin
  if FPinpointDestination <> Value then
  begin
    if not KeepPinpointDestination then
      FPinpointDestination.Free;
    FPinpointDestination := Value;
  end;
end;

function TEventDestinationDefinition.GetKeepPinpointDestination: Boolean;
begin
  Result := FKeepPinpointDestination;
end;

procedure TEventDestinationDefinition.SetKeepPinpointDestination(const Value: Boolean);
begin
  FKeepPinpointDestination := Value;
end;

function TEventDestinationDefinition.IsSetPinpointDestination: Boolean;
begin
  Result := FPinpointDestination <> nil;
end;

function TEventDestinationDefinition.GetSnsDestination: TSnsDestination;
begin
  Result := FSnsDestination;
end;

procedure TEventDestinationDefinition.SetSnsDestination(const Value: TSnsDestination);
begin
  if FSnsDestination <> Value then
  begin
    if not KeepSnsDestination then
      FSnsDestination.Free;
    FSnsDestination := Value;
  end;
end;

function TEventDestinationDefinition.GetKeepSnsDestination: Boolean;
begin
  Result := FKeepSnsDestination;
end;

procedure TEventDestinationDefinition.SetKeepSnsDestination(const Value: Boolean);
begin
  FKeepSnsDestination := Value;
end;

function TEventDestinationDefinition.IsSetSnsDestination: Boolean;
begin
  Result := FSnsDestination <> nil;
end;

end.
