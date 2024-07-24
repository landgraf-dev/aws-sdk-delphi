unit AWS.SSM.Model.ResourceDataSyncSourceWithState;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource, 
  AWS.Nullable;

type
  TResourceDataSyncSourceWithState = class;
  
  IResourceDataSyncSourceWithState = interface
    function GetAwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource;
    procedure SetAwsOrganizationsSource(const Value: TResourceDataSyncAwsOrganizationsSource);
    function GetKeepAwsOrganizationsSource: Boolean;
    procedure SetKeepAwsOrganizationsSource(const Value: Boolean);
    function GetEnableAllOpsDataSources: Boolean;
    procedure SetEnableAllOpsDataSources(const Value: Boolean);
    function GetIncludeFutureRegions: Boolean;
    procedure SetIncludeFutureRegions(const Value: Boolean);
    function GetSourceRegions: TList<string>;
    procedure SetSourceRegions(const Value: TList<string>);
    function GetKeepSourceRegions: Boolean;
    procedure SetKeepSourceRegions(const Value: Boolean);
    function GetSourceType: string;
    procedure SetSourceType(const Value: string);
    function GetState: string;
    procedure SetState(const Value: string);
    function Obj: TResourceDataSyncSourceWithState;
    function IsSetAwsOrganizationsSource: Boolean;
    function IsSetEnableAllOpsDataSources: Boolean;
    function IsSetIncludeFutureRegions: Boolean;
    function IsSetSourceRegions: Boolean;
    function IsSetSourceType: Boolean;
    function IsSetState: Boolean;
    property AwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource read GetAwsOrganizationsSource write SetAwsOrganizationsSource;
    property KeepAwsOrganizationsSource: Boolean read GetKeepAwsOrganizationsSource write SetKeepAwsOrganizationsSource;
    property EnableAllOpsDataSources: Boolean read GetEnableAllOpsDataSources write SetEnableAllOpsDataSources;
    property IncludeFutureRegions: Boolean read GetIncludeFutureRegions write SetIncludeFutureRegions;
    property SourceRegions: TList<string> read GetSourceRegions write SetSourceRegions;
    property KeepSourceRegions: Boolean read GetKeepSourceRegions write SetKeepSourceRegions;
    property SourceType: string read GetSourceType write SetSourceType;
    property State: string read GetState write SetState;
  end;
  
  TResourceDataSyncSourceWithState = class
  strict private
    FAwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource;
    FKeepAwsOrganizationsSource: Boolean;
    FEnableAllOpsDataSources: Nullable<Boolean>;
    FIncludeFutureRegions: Nullable<Boolean>;
    FSourceRegions: TList<string>;
    FKeepSourceRegions: Boolean;
    FSourceType: Nullable<string>;
    FState: Nullable<string>;
    function GetAwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource;
    procedure SetAwsOrganizationsSource(const Value: TResourceDataSyncAwsOrganizationsSource);
    function GetKeepAwsOrganizationsSource: Boolean;
    procedure SetKeepAwsOrganizationsSource(const Value: Boolean);
    function GetEnableAllOpsDataSources: Boolean;
    procedure SetEnableAllOpsDataSources(const Value: Boolean);
    function GetIncludeFutureRegions: Boolean;
    procedure SetIncludeFutureRegions(const Value: Boolean);
    function GetSourceRegions: TList<string>;
    procedure SetSourceRegions(const Value: TList<string>);
    function GetKeepSourceRegions: Boolean;
    procedure SetKeepSourceRegions(const Value: Boolean);
    function GetSourceType: string;
    procedure SetSourceType(const Value: string);
    function GetState: string;
    procedure SetState(const Value: string);
  strict protected
    function Obj: TResourceDataSyncSourceWithState;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAwsOrganizationsSource: Boolean;
    function IsSetEnableAllOpsDataSources: Boolean;
    function IsSetIncludeFutureRegions: Boolean;
    function IsSetSourceRegions: Boolean;
    function IsSetSourceType: Boolean;
    function IsSetState: Boolean;
    property AwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource read GetAwsOrganizationsSource write SetAwsOrganizationsSource;
    property KeepAwsOrganizationsSource: Boolean read GetKeepAwsOrganizationsSource write SetKeepAwsOrganizationsSource;
    property EnableAllOpsDataSources: Boolean read GetEnableAllOpsDataSources write SetEnableAllOpsDataSources;
    property IncludeFutureRegions: Boolean read GetIncludeFutureRegions write SetIncludeFutureRegions;
    property SourceRegions: TList<string> read GetSourceRegions write SetSourceRegions;
    property KeepSourceRegions: Boolean read GetKeepSourceRegions write SetKeepSourceRegions;
    property SourceType: string read GetSourceType write SetSourceType;
    property State: string read GetState write SetState;
  end;
  
implementation

{ TResourceDataSyncSourceWithState }

constructor TResourceDataSyncSourceWithState.Create;
begin
  inherited;
  FSourceRegions := TList<string>.Create;
end;

destructor TResourceDataSyncSourceWithState.Destroy;
begin
  SourceRegions := nil;
  AwsOrganizationsSource := nil;
  inherited;
end;

function TResourceDataSyncSourceWithState.Obj: TResourceDataSyncSourceWithState;
begin
  Result := Self;
end;

function TResourceDataSyncSourceWithState.GetAwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource;
begin
  Result := FAwsOrganizationsSource;
end;

procedure TResourceDataSyncSourceWithState.SetAwsOrganizationsSource(const Value: TResourceDataSyncAwsOrganizationsSource);
begin
  if FAwsOrganizationsSource <> Value then
  begin
    if not KeepAwsOrganizationsSource then
      FAwsOrganizationsSource.Free;
    FAwsOrganizationsSource := Value;
  end;
end;

function TResourceDataSyncSourceWithState.GetKeepAwsOrganizationsSource: Boolean;
begin
  Result := FKeepAwsOrganizationsSource;
end;

procedure TResourceDataSyncSourceWithState.SetKeepAwsOrganizationsSource(const Value: Boolean);
begin
  FKeepAwsOrganizationsSource := Value;
end;

function TResourceDataSyncSourceWithState.IsSetAwsOrganizationsSource: Boolean;
begin
  Result := FAwsOrganizationsSource <> nil;
end;

function TResourceDataSyncSourceWithState.GetEnableAllOpsDataSources: Boolean;
begin
  Result := FEnableAllOpsDataSources.ValueOrDefault;
end;

procedure TResourceDataSyncSourceWithState.SetEnableAllOpsDataSources(const Value: Boolean);
begin
  FEnableAllOpsDataSources := Value;
end;

function TResourceDataSyncSourceWithState.IsSetEnableAllOpsDataSources: Boolean;
begin
  Result := FEnableAllOpsDataSources.HasValue;
end;

function TResourceDataSyncSourceWithState.GetIncludeFutureRegions: Boolean;
begin
  Result := FIncludeFutureRegions.ValueOrDefault;
end;

procedure TResourceDataSyncSourceWithState.SetIncludeFutureRegions(const Value: Boolean);
begin
  FIncludeFutureRegions := Value;
end;

function TResourceDataSyncSourceWithState.IsSetIncludeFutureRegions: Boolean;
begin
  Result := FIncludeFutureRegions.HasValue;
end;

function TResourceDataSyncSourceWithState.GetSourceRegions: TList<string>;
begin
  Result := FSourceRegions;
end;

procedure TResourceDataSyncSourceWithState.SetSourceRegions(const Value: TList<string>);
begin
  if FSourceRegions <> Value then
  begin
    if not KeepSourceRegions then
      FSourceRegions.Free;
    FSourceRegions := Value;
  end;
end;

function TResourceDataSyncSourceWithState.GetKeepSourceRegions: Boolean;
begin
  Result := FKeepSourceRegions;
end;

procedure TResourceDataSyncSourceWithState.SetKeepSourceRegions(const Value: Boolean);
begin
  FKeepSourceRegions := Value;
end;

function TResourceDataSyncSourceWithState.IsSetSourceRegions: Boolean;
begin
  Result := (FSourceRegions <> nil) and (FSourceRegions.Count > 0);
end;

function TResourceDataSyncSourceWithState.GetSourceType: string;
begin
  Result := FSourceType.ValueOrDefault;
end;

procedure TResourceDataSyncSourceWithState.SetSourceType(const Value: string);
begin
  FSourceType := Value;
end;

function TResourceDataSyncSourceWithState.IsSetSourceType: Boolean;
begin
  Result := FSourceType.HasValue;
end;

function TResourceDataSyncSourceWithState.GetState: string;
begin
  Result := FState.ValueOrDefault;
end;

procedure TResourceDataSyncSourceWithState.SetState(const Value: string);
begin
  FState := Value;
end;

function TResourceDataSyncSourceWithState.IsSetState: Boolean;
begin
  Result := FState.HasValue;
end;

end.
