unit AWS.Rekognition.Model.ProjectDescription;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.Rekognition.Model.DatasetMetadata, 
  AWS.Rekognition.Enums;

type
  TProjectDescription = class;
  
  IProjectDescription = interface
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDatasets: TObjectList<TDatasetMetadata>;
    procedure SetDatasets(const Value: TObjectList<TDatasetMetadata>);
    function GetKeepDatasets: Boolean;
    procedure SetKeepDatasets(const Value: Boolean);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetStatus: TProjectStatus;
    procedure SetStatus(const Value: TProjectStatus);
    function Obj: TProjectDescription;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDatasets: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetStatus: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property Datasets: TObjectList<TDatasetMetadata> read GetDatasets write SetDatasets;
    property KeepDatasets: Boolean read GetKeepDatasets write SetKeepDatasets;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property Status: TProjectStatus read GetStatus write SetStatus;
  end;
  
  TProjectDescription = class
  strict private
    FCreationTimestamp: Nullable<TDateTime>;
    FDatasets: TObjectList<TDatasetMetadata>;
    FKeepDatasets: Boolean;
    FProjectArn: Nullable<string>;
    FStatus: Nullable<TProjectStatus>;
    function GetCreationTimestamp: TDateTime;
    procedure SetCreationTimestamp(const Value: TDateTime);
    function GetDatasets: TObjectList<TDatasetMetadata>;
    procedure SetDatasets(const Value: TObjectList<TDatasetMetadata>);
    function GetKeepDatasets: Boolean;
    procedure SetKeepDatasets(const Value: Boolean);
    function GetProjectArn: string;
    procedure SetProjectArn(const Value: string);
    function GetStatus: TProjectStatus;
    procedure SetStatus(const Value: TProjectStatus);
  strict protected
    function Obj: TProjectDescription;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCreationTimestamp: Boolean;
    function IsSetDatasets: Boolean;
    function IsSetProjectArn: Boolean;
    function IsSetStatus: Boolean;
    property CreationTimestamp: TDateTime read GetCreationTimestamp write SetCreationTimestamp;
    property Datasets: TObjectList<TDatasetMetadata> read GetDatasets write SetDatasets;
    property KeepDatasets: Boolean read GetKeepDatasets write SetKeepDatasets;
    property ProjectArn: string read GetProjectArn write SetProjectArn;
    property Status: TProjectStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TProjectDescription }

constructor TProjectDescription.Create;
begin
  inherited;
  FDatasets := TObjectList<TDatasetMetadata>.Create;
end;

destructor TProjectDescription.Destroy;
begin
  Datasets := nil;
  inherited;
end;

function TProjectDescription.Obj: TProjectDescription;
begin
  Result := Self;
end;

function TProjectDescription.GetCreationTimestamp: TDateTime;
begin
  Result := FCreationTimestamp.ValueOrDefault;
end;

procedure TProjectDescription.SetCreationTimestamp(const Value: TDateTime);
begin
  FCreationTimestamp := Value;
end;

function TProjectDescription.IsSetCreationTimestamp: Boolean;
begin
  Result := FCreationTimestamp.HasValue;
end;

function TProjectDescription.GetDatasets: TObjectList<TDatasetMetadata>;
begin
  Result := FDatasets;
end;

procedure TProjectDescription.SetDatasets(const Value: TObjectList<TDatasetMetadata>);
begin
  if FDatasets <> Value then
  begin
    if not KeepDatasets then
      FDatasets.Free;
    FDatasets := Value;
  end;
end;

function TProjectDescription.GetKeepDatasets: Boolean;
begin
  Result := FKeepDatasets;
end;

procedure TProjectDescription.SetKeepDatasets(const Value: Boolean);
begin
  FKeepDatasets := Value;
end;

function TProjectDescription.IsSetDatasets: Boolean;
begin
  Result := (FDatasets <> nil) and (FDatasets.Count > 0);
end;

function TProjectDescription.GetProjectArn: string;
begin
  Result := FProjectArn.ValueOrDefault;
end;

procedure TProjectDescription.SetProjectArn(const Value: string);
begin
  FProjectArn := Value;
end;

function TProjectDescription.IsSetProjectArn: Boolean;
begin
  Result := FProjectArn.HasValue;
end;

function TProjectDescription.GetStatus: TProjectStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TProjectDescription.SetStatus(const Value: TProjectStatus);
begin
  FStatus := Value;
end;

function TProjectDescription.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
