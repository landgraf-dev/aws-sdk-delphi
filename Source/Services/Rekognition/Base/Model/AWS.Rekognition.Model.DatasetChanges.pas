unit AWS.Rekognition.Model.DatasetChanges;

interface

uses
  System.Classes;

type
  TDatasetChanges = class;
  
  IDatasetChanges = interface
    function GetGroundTruth: TBytesStream;
    procedure SetGroundTruth(const Value: TBytesStream);
    function GetKeepGroundTruth: Boolean;
    procedure SetKeepGroundTruth(const Value: Boolean);
    function Obj: TDatasetChanges;
    function IsSetGroundTruth: Boolean;
    property GroundTruth: TBytesStream read GetGroundTruth write SetGroundTruth;
    property KeepGroundTruth: Boolean read GetKeepGroundTruth write SetKeepGroundTruth;
  end;
  
  TDatasetChanges = class
  strict private
    FGroundTruth: TBytesStream;
    FKeepGroundTruth: Boolean;
    function GetGroundTruth: TBytesStream;
    procedure SetGroundTruth(const Value: TBytesStream);
    function GetKeepGroundTruth: Boolean;
    procedure SetKeepGroundTruth(const Value: Boolean);
  strict protected
    function Obj: TDatasetChanges;
  public
    destructor Destroy; override;
    function IsSetGroundTruth: Boolean;
    property GroundTruth: TBytesStream read GetGroundTruth write SetGroundTruth;
    property KeepGroundTruth: Boolean read GetKeepGroundTruth write SetKeepGroundTruth;
  end;
  
implementation

{ TDatasetChanges }

destructor TDatasetChanges.Destroy;
begin
  GroundTruth := nil;
  inherited;
end;

function TDatasetChanges.Obj: TDatasetChanges;
begin
  Result := Self;
end;

function TDatasetChanges.GetGroundTruth: TBytesStream;
begin
  Result := FGroundTruth;
end;

procedure TDatasetChanges.SetGroundTruth(const Value: TBytesStream);
begin
  if FGroundTruth <> Value then
  begin
    if not KeepGroundTruth then
      FGroundTruth.Free;
    FGroundTruth := Value;
  end;
end;

function TDatasetChanges.GetKeepGroundTruth: Boolean;
begin
  Result := FKeepGroundTruth;
end;

procedure TDatasetChanges.SetKeepGroundTruth(const Value: Boolean);
begin
  FKeepGroundTruth := Value;
end;

function TDatasetChanges.IsSetGroundTruth: Boolean;
begin
  Result := FGroundTruth <> nil;
end;

end.
