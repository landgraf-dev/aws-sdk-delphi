unit AWS.SSM.Model.ResourceDataSyncSource;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource, 
  AWS.Nullable;

type
  TResourceDataSyncSource = class;
  
  IResourceDataSyncSource = interface
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
    function Obj: TResourceDataSyncSource;
    function IsSetAwsOrganizationsSource: Boolean;
    function IsSetEnableAllOpsDataSources: Boolean;
    function IsSetIncludeFutureRegions: Boolean;
    function IsSetSourceRegions: Boolean;
    function IsSetSourceType: Boolean;
    property AwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource read GetAwsOrganizationsSource write SetAwsOrganizationsSource;
    property KeepAwsOrganizationsSource: Boolean read GetKeepAwsOrganizationsSource write SetKeepAwsOrganizationsSource;
    property EnableAllOpsDataSources: Boolean read GetEnableAllOpsDataSources write SetEnableAllOpsDataSources;
    property IncludeFutureRegions: Boolean read GetIncludeFutureRegions write SetIncludeFutureRegions;
    property SourceRegions: TList<string> read GetSourceRegions write SetSourceRegions;
    property KeepSourceRegions: Boolean read GetKeepSourceRegions write SetKeepSourceRegions;
    property SourceType: string read GetSourceType write SetSourceType;
  end;
  
  TResourceDataSyncSource = class
  strict private
    FAwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource;
    FKeepAwsOrganizationsSource: Boolean;
    FEnableAllOpsDataSources: Nullable<Boolean>;
    FIncludeFutureRegions: Nullable<Boolean>;
    FSourceRegions: TList<string>;
    FKeepSourceRegions: Boolean;
    FSourceType: Nullable<string>;
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
  strict protected
    function Obj: TResourceDataSyncSource;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAwsOrganizationsSource: Boolean;
    function IsSetEnableAllOpsDataSources: Boolean;
    function IsSetIncludeFutureRegions: Boolean;
    function IsSetSourceRegions: Boolean;
    function IsSetSourceType: Boolean;
    property AwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource read GetAwsOrganizationsSource write SetAwsOrganizationsSource;
    property KeepAwsOrganizationsSource: Boolean read GetKeepAwsOrganizationsSource write SetKeepAwsOrganizationsSource;
    property EnableAllOpsDataSources: Boolean read GetEnableAllOpsDataSources write SetEnableAllOpsDataSources;
    property IncludeFutureRegions: Boolean read GetIncludeFutureRegions write SetIncludeFutureRegions;
    property SourceRegions: TList<string> read GetSourceRegions write SetSourceRegions;
    property KeepSourceRegions: Boolean read GetKeepSourceRegions write SetKeepSourceRegions;
    property SourceType: string read GetSourceType write SetSourceType;
  end;
  
implementation

{ TResourceDataSyncSource }

constructor TResourceDataSyncSource.Create;
begin
  inherited;
  FSourceRegions := TList<string>.Create;
end;

destructor TResourceDataSyncSource.Destroy;
begin
  SourceRegions := nil;
  AwsOrganizationsSource := nil;
  inherited;
end;

function TResourceDataSyncSource.Obj: TResourceDataSyncSource;
begin
  Result := Self;
end;

function TResourceDataSyncSource.GetAwsOrganizationsSource: TResourceDataSyncAwsOrganizationsSource;
begin
  Result := FAwsOrganizationsSource;
end;

procedure TResourceDataSyncSource.SetAwsOrganizationsSource(const Value: TResourceDataSyncAwsOrganizationsSource);
begin
  if FAwsOrganizationsSource <> Value then
  begin
    if not KeepAwsOrganizationsSource then
      FAwsOrganizationsSource.Free;
    FAwsOrganizationsSource := Value;
  end;
end;

function TResourceDataSyncSource.GetKeepAwsOrganizationsSource: Boolean;
begin
  Result := FKeepAwsOrganizationsSource;
end;

procedure TResourceDataSyncSource.SetKeepAwsOrganizationsSource(const Value: Boolean);
begin
  FKeepAwsOrganizationsSource := Value;
end;

function TResourceDataSyncSource.IsSetAwsOrganizationsSource: Boolean;
begin
  Result := FAwsOrganizationsSource <> nil;
end;

function TResourceDataSyncSource.GetEnableAllOpsDataSources: Boolean;
begin
  Result := FEnableAllOpsDataSources.ValueOrDefault;
end;

procedure TResourceDataSyncSource.SetEnableAllOpsDataSources(const Value: Boolean);
begin
  FEnableAllOpsDataSources := Value;
end;

function TResourceDataSyncSource.IsSetEnableAllOpsDataSources: Boolean;
begin
  Result := FEnableAllOpsDataSources.HasValue;
end;

function TResourceDataSyncSource.GetIncludeFutureRegions: Boolean;
begin
  Result := FIncludeFutureRegions.ValueOrDefault;
end;

procedure TResourceDataSyncSource.SetIncludeFutureRegions(const Value: Boolean);
begin
  FIncludeFutureRegions := Value;
end;

function TResourceDataSyncSource.IsSetIncludeFutureRegions: Boolean;
begin
  Result := FIncludeFutureRegions.HasValue;
end;

function TResourceDataSyncSource.GetSourceRegions: TList<string>;
begin
  Result := FSourceRegions;
end;

procedure TResourceDataSyncSource.SetSourceRegions(const Value: TList<string>);
begin
  if FSourceRegions <> Value then
  begin
    if not KeepSourceRegions then
      FSourceRegions.Free;
    FSourceRegions := Value;
  end;
end;

function TResourceDataSyncSource.GetKeepSourceRegions: Boolean;
begin
  Result := FKeepSourceRegions;
end;

procedure TResourceDataSyncSource.SetKeepSourceRegions(const Value: Boolean);
begin
  FKeepSourceRegions := Value;
end;

function TResourceDataSyncSource.IsSetSourceRegions: Boolean;
begin
  Result := (FSourceRegions <> nil) and (FSourceRegions.Count > 0);
end;

function TResourceDataSyncSource.GetSourceType: string;
begin
  Result := FSourceType.ValueOrDefault;
end;

procedure TResourceDataSyncSource.SetSourceType(const Value: string);
begin
  FSourceType := Value;
end;

function TResourceDataSyncSource.IsSetSourceType: Boolean;
begin
  Result := FSourceType.HasValue;
end;

end.
