unit AWS.Rekognition.Model.DatasetSource;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Model.GroundTruthManifest;

type
  TDatasetSource = class;
  
  IDatasetSource = interface
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetGroundTruthManifest: TGroundTruthManifest;
    procedure SetGroundTruthManifest(const Value: TGroundTruthManifest);
    function GetKeepGroundTruthManifest: Boolean;
    procedure SetKeepGroundTruthManifest(const Value: Boolean);
    function Obj: TDatasetSource;
    function IsSetDatasetArn: Boolean;
    function IsSetGroundTruthManifest: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property GroundTruthManifest: TGroundTruthManifest read GetGroundTruthManifest write SetGroundTruthManifest;
    property KeepGroundTruthManifest: Boolean read GetKeepGroundTruthManifest write SetKeepGroundTruthManifest;
  end;
  
  TDatasetSource = class
  strict private
    FDatasetArn: Nullable<string>;
    FGroundTruthManifest: TGroundTruthManifest;
    FKeepGroundTruthManifest: Boolean;
    function GetDatasetArn: string;
    procedure SetDatasetArn(const Value: string);
    function GetGroundTruthManifest: TGroundTruthManifest;
    procedure SetGroundTruthManifest(const Value: TGroundTruthManifest);
    function GetKeepGroundTruthManifest: Boolean;
    procedure SetKeepGroundTruthManifest(const Value: Boolean);
  strict protected
    function Obj: TDatasetSource;
  public
    destructor Destroy; override;
    function IsSetDatasetArn: Boolean;
    function IsSetGroundTruthManifest: Boolean;
    property DatasetArn: string read GetDatasetArn write SetDatasetArn;
    property GroundTruthManifest: TGroundTruthManifest read GetGroundTruthManifest write SetGroundTruthManifest;
    property KeepGroundTruthManifest: Boolean read GetKeepGroundTruthManifest write SetKeepGroundTruthManifest;
  end;
  
implementation

{ TDatasetSource }

destructor TDatasetSource.Destroy;
begin
  GroundTruthManifest := nil;
  inherited;
end;

function TDatasetSource.Obj: TDatasetSource;
begin
  Result := Self;
end;

function TDatasetSource.GetDatasetArn: string;
begin
  Result := FDatasetArn.ValueOrDefault;
end;

procedure TDatasetSource.SetDatasetArn(const Value: string);
begin
  FDatasetArn := Value;
end;

function TDatasetSource.IsSetDatasetArn: Boolean;
begin
  Result := FDatasetArn.HasValue;
end;

function TDatasetSource.GetGroundTruthManifest: TGroundTruthManifest;
begin
  Result := FGroundTruthManifest;
end;

procedure TDatasetSource.SetGroundTruthManifest(const Value: TGroundTruthManifest);
begin
  if FGroundTruthManifest <> Value then
  begin
    if not KeepGroundTruthManifest then
      FGroundTruthManifest.Free;
    FGroundTruthManifest := Value;
  end;
end;

function TDatasetSource.GetKeepGroundTruthManifest: Boolean;
begin
  Result := FKeepGroundTruthManifest;
end;

procedure TDatasetSource.SetKeepGroundTruthManifest(const Value: Boolean);
begin
  FKeepGroundTruthManifest := Value;
end;

function TDatasetSource.IsSetGroundTruthManifest: Boolean;
begin
  Result := FGroundTruthManifest <> nil;
end;

end.
