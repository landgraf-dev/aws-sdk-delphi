unit AWS.Rekognition.Model.FaceRecord;

interface

uses
  AWS.Rekognition.Model.Face, 
  AWS.Rekognition.Model.FaceDetail;

type
  TFaceRecord = class;
  
  IFaceRecord = interface
    function GetFace: TFace;
    procedure SetFace(const Value: TFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetFaceDetail: TFaceDetail;
    procedure SetFaceDetail(const Value: TFaceDetail);
    function GetKeepFaceDetail: Boolean;
    procedure SetKeepFaceDetail(const Value: Boolean);
    function Obj: TFaceRecord;
    function IsSetFace: Boolean;
    function IsSetFaceDetail: Boolean;
    property Face: TFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property FaceDetail: TFaceDetail read GetFaceDetail write SetFaceDetail;
    property KeepFaceDetail: Boolean read GetKeepFaceDetail write SetKeepFaceDetail;
  end;
  
  TFaceRecord = class
  strict private
    FFace: TFace;
    FKeepFace: Boolean;
    FFaceDetail: TFaceDetail;
    FKeepFaceDetail: Boolean;
    function GetFace: TFace;
    procedure SetFace(const Value: TFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetFaceDetail: TFaceDetail;
    procedure SetFaceDetail(const Value: TFaceDetail);
    function GetKeepFaceDetail: Boolean;
    procedure SetKeepFaceDetail(const Value: Boolean);
  strict protected
    function Obj: TFaceRecord;
  public
    destructor Destroy; override;
    function IsSetFace: Boolean;
    function IsSetFaceDetail: Boolean;
    property Face: TFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property FaceDetail: TFaceDetail read GetFaceDetail write SetFaceDetail;
    property KeepFaceDetail: Boolean read GetKeepFaceDetail write SetKeepFaceDetail;
  end;
  
implementation

{ TFaceRecord }

destructor TFaceRecord.Destroy;
begin
  FaceDetail := nil;
  Face := nil;
  inherited;
end;

function TFaceRecord.Obj: TFaceRecord;
begin
  Result := Self;
end;

function TFaceRecord.GetFace: TFace;
begin
  Result := FFace;
end;

procedure TFaceRecord.SetFace(const Value: TFace);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TFaceRecord.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TFaceRecord.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TFaceRecord.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TFaceRecord.GetFaceDetail: TFaceDetail;
begin
  Result := FFaceDetail;
end;

procedure TFaceRecord.SetFaceDetail(const Value: TFaceDetail);
begin
  if FFaceDetail <> Value then
  begin
    if not KeepFaceDetail then
      FFaceDetail.Free;
    FFaceDetail := Value;
  end;
end;

function TFaceRecord.GetKeepFaceDetail: Boolean;
begin
  Result := FKeepFaceDetail;
end;

procedure TFaceRecord.SetKeepFaceDetail(const Value: Boolean);
begin
  FKeepFaceDetail := Value;
end;

function TFaceRecord.IsSetFaceDetail: Boolean;
begin
  Result := FFaceDetail <> nil;
end;

end.
