unit AWS.SESv2.Model.EventDestination;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SESv2.Model.CloudWatchDestination, 
  AWS.SESv2.Model.KinesisFirehoseDestination, 
  AWS.SESv2.Model.PinpointDestination, 
  AWS.SESv2.Model.SnsDestination;

type
  TEventDestination = class;
  
  IEventDestination = interface
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
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPinpointDestination: TPinpointDestination;
    procedure SetPinpointDestination(const Value: TPinpointDestination);
    function GetKeepPinpointDestination: Boolean;
    procedure SetKeepPinpointDestination(const Value: Boolean);
    function GetSnsDestination: TSnsDestination;
    procedure SetSnsDestination(const Value: TSnsDestination);
    function GetKeepSnsDestination: Boolean;
    procedure SetKeepSnsDestination(const Value: Boolean);
    function Obj: TEventDestination;
    function IsSetCloudWatchDestination: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetKinesisFirehoseDestination: Boolean;
    function IsSetMatchingEventTypes: Boolean;
    function IsSetName: Boolean;
    function IsSetPinpointDestination: Boolean;
    function IsSetSnsDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property KeepCloudWatchDestination: Boolean read GetKeepCloudWatchDestination write SetKeepCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property KeepKinesisFirehoseDestination: Boolean read GetKeepKinesisFirehoseDestination write SetKeepKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property KeepMatchingEventTypes: Boolean read GetKeepMatchingEventTypes write SetKeepMatchingEventTypes;
    property Name: string read GetName write SetName;
    property PinpointDestination: TPinpointDestination read GetPinpointDestination write SetPinpointDestination;
    property KeepPinpointDestination: Boolean read GetKeepPinpointDestination write SetKeepPinpointDestination;
    property SnsDestination: TSnsDestination read GetSnsDestination write SetSnsDestination;
    property KeepSnsDestination: Boolean read GetKeepSnsDestination write SetKeepSnsDestination;
  end;
  
  TEventDestination = class
  strict private
    FCloudWatchDestination: TCloudWatchDestination;
    FKeepCloudWatchDestination: Boolean;
    FEnabled: Nullable<Boolean>;
    FKinesisFirehoseDestination: TKinesisFirehoseDestination;
    FKeepKinesisFirehoseDestination: Boolean;
    FMatchingEventTypes: TList<string>;
    FKeepMatchingEventTypes: Boolean;
    FName: Nullable<string>;
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
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPinpointDestination: TPinpointDestination;
    procedure SetPinpointDestination(const Value: TPinpointDestination);
    function GetKeepPinpointDestination: Boolean;
    procedure SetKeepPinpointDestination(const Value: Boolean);
    function GetSnsDestination: TSnsDestination;
    procedure SetSnsDestination(const Value: TSnsDestination);
    function GetKeepSnsDestination: Boolean;
    procedure SetKeepSnsDestination(const Value: Boolean);
  strict protected
    function Obj: TEventDestination;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCloudWatchDestination: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetKinesisFirehoseDestination: Boolean;
    function IsSetMatchingEventTypes: Boolean;
    function IsSetName: Boolean;
    function IsSetPinpointDestination: Boolean;
    function IsSetSnsDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property KeepCloudWatchDestination: Boolean read GetKeepCloudWatchDestination write SetKeepCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property KeepKinesisFirehoseDestination: Boolean read GetKeepKinesisFirehoseDestination write SetKeepKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property KeepMatchingEventTypes: Boolean read GetKeepMatchingEventTypes write SetKeepMatchingEventTypes;
    property Name: string read GetName write SetName;
    property PinpointDestination: TPinpointDestination read GetPinpointDestination write SetPinpointDestination;
    property KeepPinpointDestination: Boolean read GetKeepPinpointDestination write SetKeepPinpointDestination;
    property SnsDestination: TSnsDestination read GetSnsDestination write SetSnsDestination;
    property KeepSnsDestination: Boolean read GetKeepSnsDestination write SetKeepSnsDestination;
  end;
  
implementation

{ TEventDestination }

constructor TEventDestination.Create;
begin
  inherited;
  FMatchingEventTypes := TList<string>.Create;
end;

destructor TEventDestination.Destroy;
begin
  SnsDestination := nil;
  PinpointDestination := nil;
  MatchingEventTypes := nil;
  KinesisFirehoseDestination := nil;
  CloudWatchDestination := nil;
  inherited;
end;

function TEventDestination.Obj: TEventDestination;
begin
  Result := Self;
end;

function TEventDestination.GetCloudWatchDestination: TCloudWatchDestination;
begin
  Result := FCloudWatchDestination;
end;

procedure TEventDestination.SetCloudWatchDestination(const Value: TCloudWatchDestination);
begin
  if FCloudWatchDestination <> Value then
  begin
    if not KeepCloudWatchDestination then
      FCloudWatchDestination.Free;
    FCloudWatchDestination := Value;
  end;
end;

function TEventDestination.GetKeepCloudWatchDestination: Boolean;
begin
  Result := FKeepCloudWatchDestination;
end;

procedure TEventDestination.SetKeepCloudWatchDestination(const Value: Boolean);
begin
  FKeepCloudWatchDestination := Value;
end;

function TEventDestination.IsSetCloudWatchDestination: Boolean;
begin
  Result := FCloudWatchDestination <> nil;
end;

function TEventDestination.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TEventDestination.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TEventDestination.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TEventDestination.GetKinesisFirehoseDestination: TKinesisFirehoseDestination;
begin
  Result := FKinesisFirehoseDestination;
end;

procedure TEventDestination.SetKinesisFirehoseDestination(const Value: TKinesisFirehoseDestination);
begin
  if FKinesisFirehoseDestination <> Value then
  begin
    if not KeepKinesisFirehoseDestination then
      FKinesisFirehoseDestination.Free;
    FKinesisFirehoseDestination := Value;
  end;
end;

function TEventDestination.GetKeepKinesisFirehoseDestination: Boolean;
begin
  Result := FKeepKinesisFirehoseDestination;
end;

procedure TEventDestination.SetKeepKinesisFirehoseDestination(const Value: Boolean);
begin
  FKeepKinesisFirehoseDestination := Value;
end;

function TEventDestination.IsSetKinesisFirehoseDestination: Boolean;
begin
  Result := FKinesisFirehoseDestination <> nil;
end;

function TEventDestination.GetMatchingEventTypes: TList<string>;
begin
  Result := FMatchingEventTypes;
end;

procedure TEventDestination.SetMatchingEventTypes(const Value: TList<string>);
begin
  if FMatchingEventTypes <> Value then
  begin
    if not KeepMatchingEventTypes then
      FMatchingEventTypes.Free;
    FMatchingEventTypes := Value;
  end;
end;

function TEventDestination.GetKeepMatchingEventTypes: Boolean;
begin
  Result := FKeepMatchingEventTypes;
end;

procedure TEventDestination.SetKeepMatchingEventTypes(const Value: Boolean);
begin
  FKeepMatchingEventTypes := Value;
end;

function TEventDestination.IsSetMatchingEventTypes: Boolean;
begin
  Result := (FMatchingEventTypes <> nil) and (FMatchingEventTypes.Count > 0);
end;

function TEventDestination.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TEventDestination.SetName(const Value: string);
begin
  FName := Value;
end;

function TEventDestination.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TEventDestination.GetPinpointDestination: TPinpointDestination;
begin
  Result := FPinpointDestination;
end;

procedure TEventDestination.SetPinpointDestination(const Value: TPinpointDestination);
begin
  if FPinpointDestination <> Value then
  begin
    if not KeepPinpointDestination then
      FPinpointDestination.Free;
    FPinpointDestination := Value;
  end;
end;

function TEventDestination.GetKeepPinpointDestination: Boolean;
begin
  Result := FKeepPinpointDestination;
end;

procedure TEventDestination.SetKeepPinpointDestination(const Value: Boolean);
begin
  FKeepPinpointDestination := Value;
end;

function TEventDestination.IsSetPinpointDestination: Boolean;
begin
  Result := FPinpointDestination <> nil;
end;

function TEventDestination.GetSnsDestination: TSnsDestination;
begin
  Result := FSnsDestination;
end;

procedure TEventDestination.SetSnsDestination(const Value: TSnsDestination);
begin
  if FSnsDestination <> Value then
  begin
    if not KeepSnsDestination then
      FSnsDestination.Free;
    FSnsDestination := Value;
  end;
end;

function TEventDestination.GetKeepSnsDestination: Boolean;
begin
  Result := FKeepSnsDestination;
end;

procedure TEventDestination.SetKeepSnsDestination(const Value: Boolean);
begin
  FKeepSnsDestination := Value;
end;

function TEventDestination.IsSetSnsDestination: Boolean;
begin
  Result := FSnsDestination <> nil;
end;

end.
