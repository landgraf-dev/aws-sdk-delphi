unit AWS.Rekognition.Model.PersonMatch;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.FaceMatch, 
  AWS.Rekognition.Model.PersonDetail, 
  AWS.Nullable;

type
  TPersonMatch = class;
  
  IPersonMatch = interface
    function GetFaceMatches: TObjectList<TFaceMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TFaceMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetPerson: TPersonDetail;
    procedure SetPerson(const Value: TPersonDetail);
    function GetKeepPerson: Boolean;
    procedure SetKeepPerson(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TPersonMatch;
    function IsSetFaceMatches: Boolean;
    function IsSetPerson: Boolean;
    function IsSetTimestamp: Boolean;
    property FaceMatches: TObjectList<TFaceMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property Person: TPersonDetail read GetPerson write SetPerson;
    property KeepPerson: Boolean read GetKeepPerson write SetKeepPerson;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TPersonMatch = class
  strict private
    FFaceMatches: TObjectList<TFaceMatch>;
    FKeepFaceMatches: Boolean;
    FPerson: TPersonDetail;
    FKeepPerson: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetFaceMatches: TObjectList<TFaceMatch>;
    procedure SetFaceMatches(const Value: TObjectList<TFaceMatch>);
    function GetKeepFaceMatches: Boolean;
    procedure SetKeepFaceMatches(const Value: Boolean);
    function GetPerson: TPersonDetail;
    procedure SetPerson(const Value: TPersonDetail);
    function GetKeepPerson: Boolean;
    procedure SetKeepPerson(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TPersonMatch;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFaceMatches: Boolean;
    function IsSetPerson: Boolean;
    function IsSetTimestamp: Boolean;
    property FaceMatches: TObjectList<TFaceMatch> read GetFaceMatches write SetFaceMatches;
    property KeepFaceMatches: Boolean read GetKeepFaceMatches write SetKeepFaceMatches;
    property Person: TPersonDetail read GetPerson write SetPerson;
    property KeepPerson: Boolean read GetKeepPerson write SetKeepPerson;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TPersonMatch }

constructor TPersonMatch.Create;
begin
  inherited;
  FFaceMatches := TObjectList<TFaceMatch>.Create;
end;

destructor TPersonMatch.Destroy;
begin
  Person := nil;
  FaceMatches := nil;
  inherited;
end;

function TPersonMatch.Obj: TPersonMatch;
begin
  Result := Self;
end;

function TPersonMatch.GetFaceMatches: TObjectList<TFaceMatch>;
begin
  Result := FFaceMatches;
end;

procedure TPersonMatch.SetFaceMatches(const Value: TObjectList<TFaceMatch>);
begin
  if FFaceMatches <> Value then
  begin
    if not KeepFaceMatches then
      FFaceMatches.Free;
    FFaceMatches := Value;
  end;
end;

function TPersonMatch.GetKeepFaceMatches: Boolean;
begin
  Result := FKeepFaceMatches;
end;

procedure TPersonMatch.SetKeepFaceMatches(const Value: Boolean);
begin
  FKeepFaceMatches := Value;
end;

function TPersonMatch.IsSetFaceMatches: Boolean;
begin
  Result := (FFaceMatches <> nil) and (FFaceMatches.Count > 0);
end;

function TPersonMatch.GetPerson: TPersonDetail;
begin
  Result := FPerson;
end;

procedure TPersonMatch.SetPerson(const Value: TPersonDetail);
begin
  if FPerson <> Value then
  begin
    if not KeepPerson then
      FPerson.Free;
    FPerson := Value;
  end;
end;

function TPersonMatch.GetKeepPerson: Boolean;
begin
  Result := FKeepPerson;
end;

procedure TPersonMatch.SetKeepPerson(const Value: Boolean);
begin
  FKeepPerson := Value;
end;

function TPersonMatch.IsSetPerson: Boolean;
begin
  Result := FPerson <> nil;
end;

function TPersonMatch.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TPersonMatch.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TPersonMatch.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
