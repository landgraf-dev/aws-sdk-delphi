unit AWS.Rekognition.Model.DistributeDatasetEntriesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.DistributeDataset;

type
  TDistributeDatasetEntriesRequest = class;
  
  IDistributeDatasetEntriesRequest = interface
    function GetDatasets: TObjectList<TDistributeDataset>;
    procedure SetDatasets(const Value: TObjectList<TDistributeDataset>);
    function GetKeepDatasets: Boolean;
    procedure SetKeepDatasets(const Value: Boolean);
    function Obj: TDistributeDatasetEntriesRequest;
    function IsSetDatasets: Boolean;
    property Datasets: TObjectList<TDistributeDataset> read GetDatasets write SetDatasets;
    property KeepDatasets: Boolean read GetKeepDatasets write SetKeepDatasets;
  end;
  
  TDistributeDatasetEntriesRequest = class(TAmazonRekognitionRequest, IDistributeDatasetEntriesRequest)
  strict private
    FDatasets: TObjectList<TDistributeDataset>;
    FKeepDatasets: Boolean;
    function GetDatasets: TObjectList<TDistributeDataset>;
    procedure SetDatasets(const Value: TObjectList<TDistributeDataset>);
    function GetKeepDatasets: Boolean;
    procedure SetKeepDatasets(const Value: Boolean);
  strict protected
    function Obj: TDistributeDatasetEntriesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDatasets: Boolean;
    property Datasets: TObjectList<TDistributeDataset> read GetDatasets write SetDatasets;
    property KeepDatasets: Boolean read GetKeepDatasets write SetKeepDatasets;
  end;
  
implementation

{ TDistributeDatasetEntriesRequest }

constructor TDistributeDatasetEntriesRequest.Create;
begin
  inherited;
  FDatasets := TObjectList<TDistributeDataset>.Create;
end;

destructor TDistributeDatasetEntriesRequest.Destroy;
begin
  Datasets := nil;
  inherited;
end;

function TDistributeDatasetEntriesRequest.Obj: TDistributeDatasetEntriesRequest;
begin
  Result := Self;
end;

function TDistributeDatasetEntriesRequest.GetDatasets: TObjectList<TDistributeDataset>;
begin
  Result := FDatasets;
end;

procedure TDistributeDatasetEntriesRequest.SetDatasets(const Value: TObjectList<TDistributeDataset>);
begin
  if FDatasets <> Value then
  begin
    if not KeepDatasets then
      FDatasets.Free;
    FDatasets := Value;
  end;
end;

function TDistributeDatasetEntriesRequest.GetKeepDatasets: Boolean;
begin
  Result := FKeepDatasets;
end;

procedure TDistributeDatasetEntriesRequest.SetKeepDatasets(const Value: Boolean);
begin
  FKeepDatasets := Value;
end;

function TDistributeDatasetEntriesRequest.IsSetDatasets: Boolean;
begin
  Result := (FDatasets <> nil) and (FDatasets.Count > 0);
end;

end.
