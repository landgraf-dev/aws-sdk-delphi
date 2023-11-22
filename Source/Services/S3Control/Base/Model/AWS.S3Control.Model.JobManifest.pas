unit AWS.S3Control.Model.JobManifest;

interface

uses
  AWS.S3Control.Model.JobManifestLocation, 
  AWS.S3Control.Model.JobManifestSpec;

type
  TJobManifest = class;
  
  IJobManifest = interface
    function GetLocation: TJobManifestLocation;
    procedure SetLocation(const Value: TJobManifestLocation);
    function GetKeepLocation: Boolean;
    procedure SetKeepLocation(const Value: Boolean);
    function GetSpec: TJobManifestSpec;
    procedure SetSpec(const Value: TJobManifestSpec);
    function GetKeepSpec: Boolean;
    procedure SetKeepSpec(const Value: Boolean);
    function Obj: TJobManifest;
    function IsSetLocation: Boolean;
    function IsSetSpec: Boolean;
    property Location: TJobManifestLocation read GetLocation write SetLocation;
    property KeepLocation: Boolean read GetKeepLocation write SetKeepLocation;
    property Spec: TJobManifestSpec read GetSpec write SetSpec;
    property KeepSpec: Boolean read GetKeepSpec write SetKeepSpec;
  end;
  
  TJobManifest = class
  strict private
    FLocation: TJobManifestLocation;
    FKeepLocation: Boolean;
    FSpec: TJobManifestSpec;
    FKeepSpec: Boolean;
    function GetLocation: TJobManifestLocation;
    procedure SetLocation(const Value: TJobManifestLocation);
    function GetKeepLocation: Boolean;
    procedure SetKeepLocation(const Value: Boolean);
    function GetSpec: TJobManifestSpec;
    procedure SetSpec(const Value: TJobManifestSpec);
    function GetKeepSpec: Boolean;
    procedure SetKeepSpec(const Value: Boolean);
  strict protected
    function Obj: TJobManifest;
  public
    destructor Destroy; override;
    function IsSetLocation: Boolean;
    function IsSetSpec: Boolean;
    property Location: TJobManifestLocation read GetLocation write SetLocation;
    property KeepLocation: Boolean read GetKeepLocation write SetKeepLocation;
    property Spec: TJobManifestSpec read GetSpec write SetSpec;
    property KeepSpec: Boolean read GetKeepSpec write SetKeepSpec;
  end;
  
implementation

{ TJobManifest }

destructor TJobManifest.Destroy;
begin
  Spec := nil;
  Location := nil;
  inherited;
end;

function TJobManifest.Obj: TJobManifest;
begin
  Result := Self;
end;

function TJobManifest.GetLocation: TJobManifestLocation;
begin
  Result := FLocation;
end;

procedure TJobManifest.SetLocation(const Value: TJobManifestLocation);
begin
  if FLocation <> Value then
  begin
    if not KeepLocation then
      FLocation.Free;
    FLocation := Value;
  end;
end;

function TJobManifest.GetKeepLocation: Boolean;
begin
  Result := FKeepLocation;
end;

procedure TJobManifest.SetKeepLocation(const Value: Boolean);
begin
  FKeepLocation := Value;
end;

function TJobManifest.IsSetLocation: Boolean;
begin
  Result := FLocation <> nil;
end;

function TJobManifest.GetSpec: TJobManifestSpec;
begin
  Result := FSpec;
end;

procedure TJobManifest.SetSpec(const Value: TJobManifestSpec);
begin
  if FSpec <> Value then
  begin
    if not KeepSpec then
      FSpec.Free;
    FSpec := Value;
  end;
end;

function TJobManifest.GetKeepSpec: Boolean;
begin
  Result := FKeepSpec;
end;

procedure TJobManifest.SetKeepSpec(const Value: Boolean);
begin
  FKeepSpec := Value;
end;

function TJobManifest.IsSetSpec: Boolean;
begin
  Result := FSpec <> nil;
end;

end.
