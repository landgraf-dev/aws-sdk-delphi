unit AWS.S3.Model.StorageClassAnalysis;

interface

uses
  AWS.S3.Model.StorageClassAnalysisDataExport;

type
  TStorageClassAnalysis = class;
  
  IStorageClassAnalysis = interface
    function GetDataExport: TStorageClassAnalysisDataExport;
    procedure SetDataExport(const Value: TStorageClassAnalysisDataExport);
    function GetKeepDataExport: Boolean;
    procedure SetKeepDataExport(const Value: Boolean);
    function Obj: TStorageClassAnalysis;
    function IsSetDataExport: Boolean;
    property DataExport: TStorageClassAnalysisDataExport read GetDataExport write SetDataExport;
    property KeepDataExport: Boolean read GetKeepDataExport write SetKeepDataExport;
  end;
  
  TStorageClassAnalysis = class
  strict private
    FDataExport: TStorageClassAnalysisDataExport;
    FKeepDataExport: Boolean;
    function GetDataExport: TStorageClassAnalysisDataExport;
    procedure SetDataExport(const Value: TStorageClassAnalysisDataExport);
    function GetKeepDataExport: Boolean;
    procedure SetKeepDataExport(const Value: Boolean);
  strict protected
    function Obj: TStorageClassAnalysis;
  public
    destructor Destroy; override;
    function IsSetDataExport: Boolean;
    property DataExport: TStorageClassAnalysisDataExport read GetDataExport write SetDataExport;
    property KeepDataExport: Boolean read GetKeepDataExport write SetKeepDataExport;
  end;
  
implementation

{ TStorageClassAnalysis }

destructor TStorageClassAnalysis.Destroy;
begin
  DataExport := nil;
  inherited;
end;

function TStorageClassAnalysis.Obj: TStorageClassAnalysis;
begin
  Result := Self;
end;

function TStorageClassAnalysis.GetDataExport: TStorageClassAnalysisDataExport;
begin
  Result := FDataExport;
end;

procedure TStorageClassAnalysis.SetDataExport(const Value: TStorageClassAnalysisDataExport);
begin
  if FDataExport <> Value then
  begin
    if not KeepDataExport then
      FDataExport.Free;
    FDataExport := Value;
  end;
end;

function TStorageClassAnalysis.GetKeepDataExport: Boolean;
begin
  Result := FKeepDataExport;
end;

procedure TStorageClassAnalysis.SetKeepDataExport(const Value: Boolean);
begin
  FKeepDataExport := Value;
end;

function TStorageClassAnalysis.IsSetDataExport: Boolean;
begin
  Result := FDataExport <> nil;
end;

end.
