unit AWS.Rekognition.Model.PersonDetail;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Rekognition.Model.FaceDetail;

type
  TPersonDetail = class;
  
  IPersonDetail = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetFace: TFaceDetail;
    procedure SetFace(const Value: TFaceDetail);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetIndex: Int64;
    procedure SetIndex(const Value: Int64);
    function Obj: TPersonDetail;
    function IsSetBoundingBox: Boolean;
    function IsSetFace: Boolean;
    function IsSetIndex: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Face: TFaceDetail read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Index: Int64 read GetIndex write SetIndex;
  end;
  
  TPersonDetail = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FFace: TFaceDetail;
    FKeepFace: Boolean;
    FIndex: Nullable<Int64>;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetFace: TFaceDetail;
    procedure SetFace(const Value: TFaceDetail);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetIndex: Int64;
    procedure SetIndex(const Value: Int64);
  strict protected
    function Obj: TPersonDetail;
  public
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetFace: Boolean;
    function IsSetIndex: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Face: TFaceDetail read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Index: Int64 read GetIndex write SetIndex;
  end;
  
implementation

{ TPersonDetail }

destructor TPersonDetail.Destroy;
begin
  Face := nil;
  BoundingBox := nil;
  inherited;
end;

function TPersonDetail.Obj: TPersonDetail;
begin
  Result := Self;
end;

function TPersonDetail.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TPersonDetail.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TPersonDetail.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TPersonDetail.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TPersonDetail.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TPersonDetail.GetFace: TFaceDetail;
begin
  Result := FFace;
end;

procedure TPersonDetail.SetFace(const Value: TFaceDetail);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TPersonDetail.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TPersonDetail.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TPersonDetail.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TPersonDetail.GetIndex: Int64;
begin
  Result := FIndex.ValueOrDefault;
end;

procedure TPersonDetail.SetIndex(const Value: Int64);
begin
  FIndex := Value;
end;

function TPersonDetail.IsSetIndex: Boolean;
begin
  Result := FIndex.HasValue;
end;

end.
