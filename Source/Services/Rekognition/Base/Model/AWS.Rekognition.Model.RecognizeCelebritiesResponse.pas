unit AWS.Rekognition.Model.RecognizeCelebritiesResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.Rekognition.Model.Celebrity, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Model.ComparedFace;

type
  TRecognizeCelebritiesResponse = class;
  
  IRecognizeCelebritiesResponse = interface(IAmazonWebServiceResponse)
    function GetCelebrityFaces: TObjectList<TCelebrity>;
    procedure SetCelebrityFaces(const Value: TObjectList<TCelebrity>);
    function GetKeepCelebrityFaces: Boolean;
    procedure SetKeepCelebrityFaces(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
    function GetUnrecognizedFaces: TObjectList<TComparedFace>;
    procedure SetUnrecognizedFaces(const Value: TObjectList<TComparedFace>);
    function GetKeepUnrecognizedFaces: Boolean;
    procedure SetKeepUnrecognizedFaces(const Value: Boolean);
    function Obj: TRecognizeCelebritiesResponse;
    function IsSetCelebrityFaces: Boolean;
    function IsSetOrientationCorrection: Boolean;
    function IsSetUnrecognizedFaces: Boolean;
    property CelebrityFaces: TObjectList<TCelebrity> read GetCelebrityFaces write SetCelebrityFaces;
    property KeepCelebrityFaces: Boolean read GetKeepCelebrityFaces write SetKeepCelebrityFaces;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
    property UnrecognizedFaces: TObjectList<TComparedFace> read GetUnrecognizedFaces write SetUnrecognizedFaces;
    property KeepUnrecognizedFaces: Boolean read GetKeepUnrecognizedFaces write SetKeepUnrecognizedFaces;
  end;
  
  TRecognizeCelebritiesResponse = class(TAmazonWebServiceResponse, IRecognizeCelebritiesResponse)
  strict private
    FCelebrityFaces: TObjectList<TCelebrity>;
    FKeepCelebrityFaces: Boolean;
    FOrientationCorrection: Nullable<TOrientationCorrection>;
    FUnrecognizedFaces: TObjectList<TComparedFace>;
    FKeepUnrecognizedFaces: Boolean;
    function GetCelebrityFaces: TObjectList<TCelebrity>;
    procedure SetCelebrityFaces(const Value: TObjectList<TCelebrity>);
    function GetKeepCelebrityFaces: Boolean;
    procedure SetKeepCelebrityFaces(const Value: Boolean);
    function GetOrientationCorrection: TOrientationCorrection;
    procedure SetOrientationCorrection(const Value: TOrientationCorrection);
    function GetUnrecognizedFaces: TObjectList<TComparedFace>;
    procedure SetUnrecognizedFaces(const Value: TObjectList<TComparedFace>);
    function GetKeepUnrecognizedFaces: Boolean;
    procedure SetKeepUnrecognizedFaces(const Value: Boolean);
  strict protected
    function Obj: TRecognizeCelebritiesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCelebrityFaces: Boolean;
    function IsSetOrientationCorrection: Boolean;
    function IsSetUnrecognizedFaces: Boolean;
    property CelebrityFaces: TObjectList<TCelebrity> read GetCelebrityFaces write SetCelebrityFaces;
    property KeepCelebrityFaces: Boolean read GetKeepCelebrityFaces write SetKeepCelebrityFaces;
    property OrientationCorrection: TOrientationCorrection read GetOrientationCorrection write SetOrientationCorrection;
    property UnrecognizedFaces: TObjectList<TComparedFace> read GetUnrecognizedFaces write SetUnrecognizedFaces;
    property KeepUnrecognizedFaces: Boolean read GetKeepUnrecognizedFaces write SetKeepUnrecognizedFaces;
  end;
  
implementation

{ TRecognizeCelebritiesResponse }

constructor TRecognizeCelebritiesResponse.Create;
begin
  inherited;
  FCelebrityFaces := TObjectList<TCelebrity>.Create;
  FUnrecognizedFaces := TObjectList<TComparedFace>.Create;
end;

destructor TRecognizeCelebritiesResponse.Destroy;
begin
  UnrecognizedFaces := nil;
  CelebrityFaces := nil;
  inherited;
end;

function TRecognizeCelebritiesResponse.Obj: TRecognizeCelebritiesResponse;
begin
  Result := Self;
end;

function TRecognizeCelebritiesResponse.GetCelebrityFaces: TObjectList<TCelebrity>;
begin
  Result := FCelebrityFaces;
end;

procedure TRecognizeCelebritiesResponse.SetCelebrityFaces(const Value: TObjectList<TCelebrity>);
begin
  if FCelebrityFaces <> Value then
  begin
    if not KeepCelebrityFaces then
      FCelebrityFaces.Free;
    FCelebrityFaces := Value;
  end;
end;

function TRecognizeCelebritiesResponse.GetKeepCelebrityFaces: Boolean;
begin
  Result := FKeepCelebrityFaces;
end;

procedure TRecognizeCelebritiesResponse.SetKeepCelebrityFaces(const Value: Boolean);
begin
  FKeepCelebrityFaces := Value;
end;

function TRecognizeCelebritiesResponse.IsSetCelebrityFaces: Boolean;
begin
  Result := (FCelebrityFaces <> nil) and (FCelebrityFaces.Count > 0);
end;

function TRecognizeCelebritiesResponse.GetOrientationCorrection: TOrientationCorrection;
begin
  Result := FOrientationCorrection.ValueOrDefault;
end;

procedure TRecognizeCelebritiesResponse.SetOrientationCorrection(const Value: TOrientationCorrection);
begin
  FOrientationCorrection := Value;
end;

function TRecognizeCelebritiesResponse.IsSetOrientationCorrection: Boolean;
begin
  Result := FOrientationCorrection.HasValue;
end;

function TRecognizeCelebritiesResponse.GetUnrecognizedFaces: TObjectList<TComparedFace>;
begin
  Result := FUnrecognizedFaces;
end;

procedure TRecognizeCelebritiesResponse.SetUnrecognizedFaces(const Value: TObjectList<TComparedFace>);
begin
  if FUnrecognizedFaces <> Value then
  begin
    if not KeepUnrecognizedFaces then
      FUnrecognizedFaces.Free;
    FUnrecognizedFaces := Value;
  end;
end;

function TRecognizeCelebritiesResponse.GetKeepUnrecognizedFaces: Boolean;
begin
  Result := FKeepUnrecognizedFaces;
end;

procedure TRecognizeCelebritiesResponse.SetKeepUnrecognizedFaces(const Value: Boolean);
begin
  FKeepUnrecognizedFaces := Value;
end;

function TRecognizeCelebritiesResponse.IsSetUnrecognizedFaces: Boolean;
begin
  Result := (FUnrecognizedFaces <> nil) and (FUnrecognizedFaces.Count > 0);
end;

end.
