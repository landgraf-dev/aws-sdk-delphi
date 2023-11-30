unit AWS.SES.Model.EventDestination;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.CloudWatchDestination, 
  AWS.Nullable, 
  AWS.SES.Model.KinesisFirehoseDestination, 
  AWS.SES.Model.SNSDestination;

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
    function GetSNSDestination: TSNSDestination;
    procedure SetSNSDestination(const Value: TSNSDestination);
    function GetKeepSNSDestination: Boolean;
    procedure SetKeepSNSDestination(const Value: Boolean);
    function Obj: TEventDestination;
    function IsSetCloudWatchDestination: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetKinesisFirehoseDestination: Boolean;
    function IsSetMatchingEventTypes: Boolean;
    function IsSetName: Boolean;
    function IsSetSNSDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property KeepCloudWatchDestination: Boolean read GetKeepCloudWatchDestination write SetKeepCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property KeepKinesisFirehoseDestination: Boolean read GetKeepKinesisFirehoseDestination write SetKeepKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property KeepMatchingEventTypes: Boolean read GetKeepMatchingEventTypes write SetKeepMatchingEventTypes;
    property Name: string read GetName write SetName;
    property SNSDestination: TSNSDestination read GetSNSDestination write SetSNSDestination;
    property KeepSNSDestination: Boolean read GetKeepSNSDestination write SetKeepSNSDestination;
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
    FSNSDestination: TSNSDestination;
    FKeepSNSDestination: Boolean;
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
    function GetSNSDestination: TSNSDestination;
    procedure SetSNSDestination(const Value: TSNSDestination);
    function GetKeepSNSDestination: Boolean;
    procedure SetKeepSNSDestination(const Value: Boolean);
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
    function IsSetSNSDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property KeepCloudWatchDestination: Boolean read GetKeepCloudWatchDestination write SetKeepCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property KeepKinesisFirehoseDestination: Boolean read GetKeepKinesisFirehoseDestination write SetKeepKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property KeepMatchingEventTypes: Boolean read GetKeepMatchingEventTypes write SetKeepMatchingEventTypes;
    property Name: string read GetName write SetName;
    property SNSDestination: TSNSDestination read GetSNSDestination write SetSNSDestination;
    property KeepSNSDestination: Boolean read GetKeepSNSDestination write SetKeepSNSDestination;
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
  SNSDestination := nil;
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

function TEventDestination.GetSNSDestination: TSNSDestination;
begin
  Result := FSNSDestination;
end;

procedure TEventDestination.SetSNSDestination(const Value: TSNSDestination);
begin
  if FSNSDestination <> Value then
  begin
    if not KeepSNSDestination then
      FSNSDestination.Free;
    FSNSDestination := Value;
  end;
end;

function TEventDestination.GetKeepSNSDestination: Boolean;
begin
  Result := FKeepSNSDestination;
end;

procedure TEventDestination.SetKeepSNSDestination(const Value: Boolean);
begin
  FKeepSNSDestination := Value;
end;

function TEventDestination.IsSetSNSDestination: Boolean;
begin
  Result := FSNSDestination <> nil;
end;

end.
