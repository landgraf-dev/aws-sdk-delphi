unit AWS.Rekognition.Model.Celebrity;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.ComparedFace, 
  AWS.Nullable, 
  AWS.Rekognition.Model.KnownGender;

type
  TCelebrity = class;
  
  ICelebrity = interface
    function GetFace: TComparedFace;
    procedure SetFace(const Value: TComparedFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetKnownGender: TKnownGender;
    procedure SetKnownGender(const Value: TKnownGender);
    function GetKeepKnownGender: Boolean;
    procedure SetKeepKnownGender(const Value: Boolean);
    function GetMatchConfidence: Double;
    procedure SetMatchConfidence(const Value: Double);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
    function Obj: TCelebrity;
    function IsSetFace: Boolean;
    function IsSetId: Boolean;
    function IsSetKnownGender: Boolean;
    function IsSetMatchConfidence: Boolean;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property Face: TComparedFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Id: string read GetId write SetId;
    property KnownGender: TKnownGender read GetKnownGender write SetKnownGender;
    property KeepKnownGender: Boolean read GetKeepKnownGender write SetKeepKnownGender;
    property MatchConfidence: Double read GetMatchConfidence write SetMatchConfidence;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
  TCelebrity = class
  strict private
    FFace: TComparedFace;
    FKeepFace: Boolean;
    FId: Nullable<string>;
    FKnownGender: TKnownGender;
    FKeepKnownGender: Boolean;
    FMatchConfidence: Nullable<Double>;
    FName: Nullable<string>;
    FUrls: TList<string>;
    FKeepUrls: Boolean;
    function GetFace: TComparedFace;
    procedure SetFace(const Value: TComparedFace);
    function GetKeepFace: Boolean;
    procedure SetKeepFace(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetKnownGender: TKnownGender;
    procedure SetKnownGender(const Value: TKnownGender);
    function GetKeepKnownGender: Boolean;
    procedure SetKeepKnownGender(const Value: Boolean);
    function GetMatchConfidence: Double;
    procedure SetMatchConfidence(const Value: Double);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetUrls: TList<string>;
    procedure SetUrls(const Value: TList<string>);
    function GetKeepUrls: Boolean;
    procedure SetKeepUrls(const Value: Boolean);
  strict protected
    function Obj: TCelebrity;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFace: Boolean;
    function IsSetId: Boolean;
    function IsSetKnownGender: Boolean;
    function IsSetMatchConfidence: Boolean;
    function IsSetName: Boolean;
    function IsSetUrls: Boolean;
    property Face: TComparedFace read GetFace write SetFace;
    property KeepFace: Boolean read GetKeepFace write SetKeepFace;
    property Id: string read GetId write SetId;
    property KnownGender: TKnownGender read GetKnownGender write SetKnownGender;
    property KeepKnownGender: Boolean read GetKeepKnownGender write SetKeepKnownGender;
    property MatchConfidence: Double read GetMatchConfidence write SetMatchConfidence;
    property Name: string read GetName write SetName;
    property Urls: TList<string> read GetUrls write SetUrls;
    property KeepUrls: Boolean read GetKeepUrls write SetKeepUrls;
  end;
  
implementation

{ TCelebrity }

constructor TCelebrity.Create;
begin
  inherited;
  FUrls := TList<string>.Create;
end;

destructor TCelebrity.Destroy;
begin
  Urls := nil;
  KnownGender := nil;
  Face := nil;
  inherited;
end;

function TCelebrity.Obj: TCelebrity;
begin
  Result := Self;
end;

function TCelebrity.GetFace: TComparedFace;
begin
  Result := FFace;
end;

procedure TCelebrity.SetFace(const Value: TComparedFace);
begin
  if FFace <> Value then
  begin
    if not KeepFace then
      FFace.Free;
    FFace := Value;
  end;
end;

function TCelebrity.GetKeepFace: Boolean;
begin
  Result := FKeepFace;
end;

procedure TCelebrity.SetKeepFace(const Value: Boolean);
begin
  FKeepFace := Value;
end;

function TCelebrity.IsSetFace: Boolean;
begin
  Result := FFace <> nil;
end;

function TCelebrity.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TCelebrity.SetId(const Value: string);
begin
  FId := Value;
end;

function TCelebrity.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TCelebrity.GetKnownGender: TKnownGender;
begin
  Result := FKnownGender;
end;

procedure TCelebrity.SetKnownGender(const Value: TKnownGender);
begin
  if FKnownGender <> Value then
  begin
    if not KeepKnownGender then
      FKnownGender.Free;
    FKnownGender := Value;
  end;
end;

function TCelebrity.GetKeepKnownGender: Boolean;
begin
  Result := FKeepKnownGender;
end;

procedure TCelebrity.SetKeepKnownGender(const Value: Boolean);
begin
  FKeepKnownGender := Value;
end;

function TCelebrity.IsSetKnownGender: Boolean;
begin
  Result := FKnownGender <> nil;
end;

function TCelebrity.GetMatchConfidence: Double;
begin
  Result := FMatchConfidence.ValueOrDefault;
end;

procedure TCelebrity.SetMatchConfidence(const Value: Double);
begin
  FMatchConfidence := Value;
end;

function TCelebrity.IsSetMatchConfidence: Boolean;
begin
  Result := FMatchConfidence.HasValue;
end;

function TCelebrity.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCelebrity.SetName(const Value: string);
begin
  FName := Value;
end;

function TCelebrity.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCelebrity.GetUrls: TList<string>;
begin
  Result := FUrls;
end;

procedure TCelebrity.SetUrls(const Value: TList<string>);
begin
  if FUrls <> Value then
  begin
    if not KeepUrls then
      FUrls.Free;
    FUrls := Value;
  end;
end;

function TCelebrity.GetKeepUrls: Boolean;
begin
  Result := FKeepUrls;
end;

procedure TCelebrity.SetKeepUrls(const Value: Boolean);
begin
  FKeepUrls := Value;
end;

function TCelebrity.IsSetUrls: Boolean;
begin
  Result := (FUrls <> nil) and (FUrls.Count > 0);
end;

end.
