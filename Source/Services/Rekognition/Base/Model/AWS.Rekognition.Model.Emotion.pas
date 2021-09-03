unit AWS.Rekognition.Model.Emotion;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Enums;

type
  TEmotion = class;
  
  IEmotion = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetType: TEmotionName;
    procedure SetType(const Value: TEmotionName);
    function Obj: TEmotion;
    function IsSetConfidence: Boolean;
    function IsSetType: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property &Type: TEmotionName read GetType write SetType;
  end;
  
  TEmotion = class
  strict private
    FConfidence: Nullable<Double>;
    FType: Nullable<TEmotionName>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetType: TEmotionName;
    procedure SetType(const Value: TEmotionName);
  strict protected
    function Obj: TEmotion;
  public
    function IsSetConfidence: Boolean;
    function IsSetType: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property &Type: TEmotionName read GetType write SetType;
  end;
  
implementation

{ TEmotion }

function TEmotion.Obj: TEmotion;
begin
  Result := Self;
end;

function TEmotion.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TEmotion.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TEmotion.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TEmotion.GetType: TEmotionName;
begin
  Result := FType.ValueOrDefault;
end;

procedure TEmotion.SetType(const Value: TEmotionName);
begin
  FType := Value;
end;

function TEmotion.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
