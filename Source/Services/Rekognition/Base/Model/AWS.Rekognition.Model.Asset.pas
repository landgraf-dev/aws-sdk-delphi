unit AWS.Rekognition.Model.Asset;

interface

uses
  AWS.Rekognition.Model.GroundTruthManifest;

type
  TAsset = class;
  
  IAsset = interface
    function GetGroundTruthManifest: TGroundTruthManifest;
    procedure SetGroundTruthManifest(const Value: TGroundTruthManifest);
    function GetKeepGroundTruthManifest: Boolean;
    procedure SetKeepGroundTruthManifest(const Value: Boolean);
    function Obj: TAsset;
    function IsSetGroundTruthManifest: Boolean;
    property GroundTruthManifest: TGroundTruthManifest read GetGroundTruthManifest write SetGroundTruthManifest;
    property KeepGroundTruthManifest: Boolean read GetKeepGroundTruthManifest write SetKeepGroundTruthManifest;
  end;
  
  TAsset = class
  strict private
    FGroundTruthManifest: TGroundTruthManifest;
    FKeepGroundTruthManifest: Boolean;
    function GetGroundTruthManifest: TGroundTruthManifest;
    procedure SetGroundTruthManifest(const Value: TGroundTruthManifest);
    function GetKeepGroundTruthManifest: Boolean;
    procedure SetKeepGroundTruthManifest(const Value: Boolean);
  strict protected
    function Obj: TAsset;
  public
    destructor Destroy; override;
    function IsSetGroundTruthManifest: Boolean;
    property GroundTruthManifest: TGroundTruthManifest read GetGroundTruthManifest write SetGroundTruthManifest;
    property KeepGroundTruthManifest: Boolean read GetKeepGroundTruthManifest write SetKeepGroundTruthManifest;
  end;
  
implementation

{ TAsset }

destructor TAsset.Destroy;
begin
  GroundTruthManifest := nil;
  inherited;
end;

function TAsset.Obj: TAsset;
begin
  Result := Self;
end;

function TAsset.GetGroundTruthManifest: TGroundTruthManifest;
begin
  Result := FGroundTruthManifest;
end;

procedure TAsset.SetGroundTruthManifest(const Value: TGroundTruthManifest);
begin
  if FGroundTruthManifest <> Value then
  begin
    if not KeepGroundTruthManifest then
      FGroundTruthManifest.Free;
    FGroundTruthManifest := Value;
  end;
end;

function TAsset.GetKeepGroundTruthManifest: Boolean;
begin
  Result := FKeepGroundTruthManifest;
end;

procedure TAsset.SetKeepGroundTruthManifest(const Value: Boolean);
begin
  FKeepGroundTruthManifest := Value;
end;

function TAsset.IsSetGroundTruthManifest: Boolean;
begin
  Result := FGroundTruthManifest <> nil;
end;

end.
