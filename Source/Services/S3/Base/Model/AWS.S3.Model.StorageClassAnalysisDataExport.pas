unit AWS.S3.Model.StorageClassAnalysisDataExport;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.AnalyticsExportDestination, 
  AWS.S3.Enums;

type
  TStorageClassAnalysisDataExport = class;
  
  IStorageClassAnalysisDataExport = interface
    function GetDestination: TAnalyticsExportDestination;
    procedure SetDestination(const Value: TAnalyticsExportDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetOutputSchemaVersion: TStorageClassAnalysisSchemaVersion;
    procedure SetOutputSchemaVersion(const Value: TStorageClassAnalysisSchemaVersion);
    function Obj: TStorageClassAnalysisDataExport;
    function IsSetDestination: Boolean;
    function IsSetOutputSchemaVersion: Boolean;
    property Destination: TAnalyticsExportDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property OutputSchemaVersion: TStorageClassAnalysisSchemaVersion read GetOutputSchemaVersion write SetOutputSchemaVersion;
  end;
  
  TStorageClassAnalysisDataExport = class
  strict private
    FDestination: TAnalyticsExportDestination;
    FKeepDestination: Boolean;
    FOutputSchemaVersion: Nullable<TStorageClassAnalysisSchemaVersion>;
    function GetDestination: TAnalyticsExportDestination;
    procedure SetDestination(const Value: TAnalyticsExportDestination);
    function GetKeepDestination: Boolean;
    procedure SetKeepDestination(const Value: Boolean);
    function GetOutputSchemaVersion: TStorageClassAnalysisSchemaVersion;
    procedure SetOutputSchemaVersion(const Value: TStorageClassAnalysisSchemaVersion);
  strict protected
    function Obj: TStorageClassAnalysisDataExport;
  public
    destructor Destroy; override;
    function IsSetDestination: Boolean;
    function IsSetOutputSchemaVersion: Boolean;
    property Destination: TAnalyticsExportDestination read GetDestination write SetDestination;
    property KeepDestination: Boolean read GetKeepDestination write SetKeepDestination;
    property OutputSchemaVersion: TStorageClassAnalysisSchemaVersion read GetOutputSchemaVersion write SetOutputSchemaVersion;
  end;
  
implementation

{ TStorageClassAnalysisDataExport }

destructor TStorageClassAnalysisDataExport.Destroy;
begin
  Destination := nil;
  inherited;
end;

function TStorageClassAnalysisDataExport.Obj: TStorageClassAnalysisDataExport;
begin
  Result := Self;
end;

function TStorageClassAnalysisDataExport.GetDestination: TAnalyticsExportDestination;
begin
  Result := FDestination;
end;

procedure TStorageClassAnalysisDataExport.SetDestination(const Value: TAnalyticsExportDestination);
begin
  if FDestination <> Value then
  begin
    if not KeepDestination then
      FDestination.Free;
    FDestination := Value;
  end;
end;

function TStorageClassAnalysisDataExport.GetKeepDestination: Boolean;
begin
  Result := FKeepDestination;
end;

procedure TStorageClassAnalysisDataExport.SetKeepDestination(const Value: Boolean);
begin
  FKeepDestination := Value;
end;

function TStorageClassAnalysisDataExport.IsSetDestination: Boolean;
begin
  Result := FDestination <> nil;
end;

function TStorageClassAnalysisDataExport.GetOutputSchemaVersion: TStorageClassAnalysisSchemaVersion;
begin
  Result := FOutputSchemaVersion.ValueOrDefault;
end;

procedure TStorageClassAnalysisDataExport.SetOutputSchemaVersion(const Value: TStorageClassAnalysisSchemaVersion);
begin
  FOutputSchemaVersion := Value;
end;

function TStorageClassAnalysisDataExport.IsSetOutputSchemaVersion: Boolean;
begin
  Result := FOutputSchemaVersion.HasValue;
end;

end.
