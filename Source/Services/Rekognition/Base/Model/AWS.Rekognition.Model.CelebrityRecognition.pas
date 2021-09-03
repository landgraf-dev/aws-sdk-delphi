unit AWS.Rekognition.Model.CelebrityRecognition;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.CelebrityDetail;

type
  TCelebrityRecognition = class;
  
  ICelebrityRecognition = interface
    function GetCelebrity: TCelebrityDetail;
    procedure SetCelebrity(const Value: TCelebrityDetail);
    function GetKeepCelebrity: Boolean;
    procedure SetKeepCelebrity(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
    function Obj: TCelebrityRecognition;
    function IsSetCelebrity: Boolean;
    function IsSetTimestamp: Boolean;
    property Celebrity: TCelebrityDetail read GetCelebrity write SetCelebrity;
    property KeepCelebrity: Boolean read GetKeepCelebrity write SetKeepCelebrity;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
  TCelebrityRecognition = class
  strict private
    FCelebrity: TCelebrityDetail;
    FKeepCelebrity: Boolean;
    FTimestamp: Nullable<Int64>;
    function GetCelebrity: TCelebrityDetail;
    procedure SetCelebrity(const Value: TCelebrityDetail);
    function GetKeepCelebrity: Boolean;
    procedure SetKeepCelebrity(const Value: Boolean);
    function GetTimestamp: Int64;
    procedure SetTimestamp(const Value: Int64);
  strict protected
    function Obj: TCelebrityRecognition;
  public
    destructor Destroy; override;
    function IsSetCelebrity: Boolean;
    function IsSetTimestamp: Boolean;
    property Celebrity: TCelebrityDetail read GetCelebrity write SetCelebrity;
    property KeepCelebrity: Boolean read GetKeepCelebrity write SetKeepCelebrity;
    property Timestamp: Int64 read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TCelebrityRecognition }

destructor TCelebrityRecognition.Destroy;
begin
  Celebrity := nil;
  inherited;
end;

function TCelebrityRecognition.Obj: TCelebrityRecognition;
begin
  Result := Self;
end;

function TCelebrityRecognition.GetCelebrity: TCelebrityDetail;
begin
  Result := FCelebrity;
end;

procedure TCelebrityRecognition.SetCelebrity(const Value: TCelebrityDetail);
begin
  if FCelebrity <> Value then
  begin
    if not KeepCelebrity then
      FCelebrity.Free;
    FCelebrity := Value;
  end;
end;

function TCelebrityRecognition.GetKeepCelebrity: Boolean;
begin
  Result := FKeepCelebrity;
end;

procedure TCelebrityRecognition.SetKeepCelebrity(const Value: Boolean);
begin
  FKeepCelebrity := Value;
end;

function TCelebrityRecognition.IsSetCelebrity: Boolean;
begin
  Result := FCelebrity <> nil;
end;

function TCelebrityRecognition.GetTimestamp: Int64;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TCelebrityRecognition.SetTimestamp(const Value: Int64);
begin
  FTimestamp := Value;
end;

function TCelebrityRecognition.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
