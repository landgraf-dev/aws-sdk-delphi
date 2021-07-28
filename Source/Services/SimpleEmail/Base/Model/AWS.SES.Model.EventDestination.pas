unit AWS.SES.Model.EventDestination;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.SES.Model.CloudWatchDestination, 
  AWS.SES.Model.KinesisFirehoseDestination, 
  AWS.SES.Model.SNSDestination;

type
  TEventDestination = class;
  
  IEventDestination = interface
    function GetCloudWatchDestination: TCloudWatchDestination;
    procedure SetCloudWatchDestination(const Value: TCloudWatchDestination);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetKinesisFirehoseDestination: TKinesisFirehoseDestination;
    procedure SetKinesisFirehoseDestination(const Value: TKinesisFirehoseDestination);
    function GetMatchingEventTypes: TList<string>;
    procedure SetMatchingEventTypes(const Value: TList<string>);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSNSDestination: TSNSDestination;
    procedure SetSNSDestination(const Value: TSNSDestination);
    function Obj: TEventDestination;
    function IsSetCloudWatchDestination: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetKinesisFirehoseDestination: Boolean;
    function IsSetMatchingEventTypes: Boolean;
    function IsSetName: Boolean;
    function IsSetSNSDestination: Boolean;
    property CloudWatchDestination: TCloudWatchDestination read GetCloudWatchDestination write SetCloudWatchDestination;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property Name: string read GetName write SetName;
    property SNSDestination: TSNSDestination read GetSNSDestination write SetSNSDestination;
  end;
  
  TEventDestination = class
  strict private
    FCloudWatchDestination: TCloudWatchDestination;
    FEnabled: Nullable<Boolean>;
    FKinesisFirehoseDestination: TKinesisFirehoseDestination;
    FMatchingEventTypes: TList<string>;
    FName: Nullable<string>;
    FSNSDestination: TSNSDestination;
    function GetCloudWatchDestination: TCloudWatchDestination;
    procedure SetCloudWatchDestination(const Value: TCloudWatchDestination);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetKinesisFirehoseDestination: TKinesisFirehoseDestination;
    procedure SetKinesisFirehoseDestination(const Value: TKinesisFirehoseDestination);
    function GetMatchingEventTypes: TList<string>;
    procedure SetMatchingEventTypes(const Value: TList<string>);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSNSDestination: TSNSDestination;
    procedure SetSNSDestination(const Value: TSNSDestination);
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
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property KinesisFirehoseDestination: TKinesisFirehoseDestination read GetKinesisFirehoseDestination write SetKinesisFirehoseDestination;
    property MatchingEventTypes: TList<string> read GetMatchingEventTypes write SetMatchingEventTypes;
    property Name: string read GetName write SetName;
    property SNSDestination: TSNSDestination read GetSNSDestination write SetSNSDestination;
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
  FSNSDestination.Free;
  FMatchingEventTypes.Free;
  FKinesisFirehoseDestination.Free;
  FCloudWatchDestination.Free;
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
    FCloudWatchDestination.Free;
    FCloudWatchDestination := Value;
  end;
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
    FKinesisFirehoseDestination.Free;
    FKinesisFirehoseDestination := Value;
  end;
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
    FMatchingEventTypes.Free;
    FMatchingEventTypes := Value;
  end;
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
    FSNSDestination.Free;
    FSNSDestination := Value;
  end;
end;

function TEventDestination.IsSetSNSDestination: Boolean;
begin
  Result := FSNSDestination <> nil;
end;

end.
