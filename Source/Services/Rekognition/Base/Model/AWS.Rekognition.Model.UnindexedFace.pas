unit AWS.Rekognition.Model.UnindexedFace;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.FaceDetail;

type
  TUnindexedFace = class;
  
  IUnindexedFace = interface
    function GetFaceDetail: TFaceDetail;
    procedure SetFaceDetail(const Value: TFaceDetail);
    function GetKeepFaceDetail: Boolean;
    procedure SetKeepFaceDetail(const Value: Boolean);
    function GetReasons: TList<string>;
    procedure SetReasons(const Value: TList<string>);
    function GetKeepReasons: Boolean;
    procedure SetKeepReasons(const Value: Boolean);
    function Obj: TUnindexedFace;
    function IsSetFaceDetail: Boolean;
    function IsSetReasons: Boolean;
    property FaceDetail: TFaceDetail read GetFaceDetail write SetFaceDetail;
    property KeepFaceDetail: Boolean read GetKeepFaceDetail write SetKeepFaceDetail;
    property Reasons: TList<string> read GetReasons write SetReasons;
    property KeepReasons: Boolean read GetKeepReasons write SetKeepReasons;
  end;
  
  TUnindexedFace = class
  strict private
    FFaceDetail: TFaceDetail;
    FKeepFaceDetail: Boolean;
    FReasons: TList<string>;
    FKeepReasons: Boolean;
    function GetFaceDetail: TFaceDetail;
    procedure SetFaceDetail(const Value: TFaceDetail);
    function GetKeepFaceDetail: Boolean;
    procedure SetKeepFaceDetail(const Value: Boolean);
    function GetReasons: TList<string>;
    procedure SetReasons(const Value: TList<string>);
    function GetKeepReasons: Boolean;
    procedure SetKeepReasons(const Value: Boolean);
  strict protected
    function Obj: TUnindexedFace;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceDetail: Boolean;
    function IsSetReasons: Boolean;
    property FaceDetail: TFaceDetail read GetFaceDetail write SetFaceDetail;
    property KeepFaceDetail: Boolean read GetKeepFaceDetail write SetKeepFaceDetail;
    property Reasons: TList<string> read GetReasons write SetReasons;
    property KeepReasons: Boolean read GetKeepReasons write SetKeepReasons;
  end;
  
implementation

{ TUnindexedFace }

constructor TUnindexedFace.Create;
begin
  inherited;
  FReasons := TList<string>.Create;
end;

destructor TUnindexedFace.Destroy;
begin
  Reasons := nil;
  FaceDetail := nil;
  inherited;
end;

function TUnindexedFace.Obj: TUnindexedFace;
begin
  Result := Self;
end;

function TUnindexedFace.GetFaceDetail: TFaceDetail;
begin
  Result := FFaceDetail;
end;

procedure TUnindexedFace.SetFaceDetail(const Value: TFaceDetail);
begin
  if FFaceDetail <> Value then
  begin
    if not KeepFaceDetail then
      FFaceDetail.Free;
    FFaceDetail := Value;
  end;
end;

function TUnindexedFace.GetKeepFaceDetail: Boolean;
begin
  Result := FKeepFaceDetail;
end;

procedure TUnindexedFace.SetKeepFaceDetail(const Value: Boolean);
begin
  FKeepFaceDetail := Value;
end;

function TUnindexedFace.IsSetFaceDetail: Boolean;
begin
  Result := FFaceDetail <> nil;
end;

function TUnindexedFace.GetReasons: TList<string>;
begin
  Result := FReasons;
end;

procedure TUnindexedFace.SetReasons(const Value: TList<string>);
begin
  if FReasons <> Value then
  begin
    if not KeepReasons then
      FReasons.Free;
    FReasons := Value;
  end;
end;

function TUnindexedFace.GetKeepReasons: Boolean;
begin
  Result := FKeepReasons;
end;

procedure TUnindexedFace.SetKeepReasons(const Value: Boolean);
begin
  FKeepReasons := Value;
end;

function TUnindexedFace.IsSetReasons: Boolean;
begin
  Result := (FReasons <> nil) and (FReasons.Count > 0);
end;

end.
