unit AWS.Rekognition.Model.GroundTruthManifest;

interface

uses
  AWS.Rekognition.Model.S3Object;

type
  TGroundTruthManifest = class;
  
  IGroundTruthManifest = interface
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
    function Obj: TGroundTruthManifest;
    function IsSetS3Object: Boolean;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
  TGroundTruthManifest = class
  strict private
    FS3Object: TS3Object;
    FKeepS3Object: Boolean;
    function GetS3Object: TS3Object;
    procedure SetS3Object(const Value: TS3Object);
    function GetKeepS3Object: Boolean;
    procedure SetKeepS3Object(const Value: Boolean);
  strict protected
    function Obj: TGroundTruthManifest;
  public
    destructor Destroy; override;
    function IsSetS3Object: Boolean;
    property S3Object: TS3Object read GetS3Object write SetS3Object;
    property KeepS3Object: Boolean read GetKeepS3Object write SetKeepS3Object;
  end;
  
implementation

{ TGroundTruthManifest }

destructor TGroundTruthManifest.Destroy;
begin
  S3Object := nil;
  inherited;
end;

function TGroundTruthManifest.Obj: TGroundTruthManifest;
begin
  Result := Self;
end;

function TGroundTruthManifest.GetS3Object: TS3Object;
begin
  Result := FS3Object;
end;

procedure TGroundTruthManifest.SetS3Object(const Value: TS3Object);
begin
  if FS3Object <> Value then
  begin
    if not KeepS3Object then
      FS3Object.Free;
    FS3Object := Value;
  end;
end;

function TGroundTruthManifest.GetKeepS3Object: Boolean;
begin
  Result := FKeepS3Object;
end;

procedure TGroundTruthManifest.SetKeepS3Object(const Value: Boolean);
begin
  FKeepS3Object := Value;
end;

function TGroundTruthManifest.IsSetS3Object: Boolean;
begin
  Result := FS3Object <> nil;
end;

end.
