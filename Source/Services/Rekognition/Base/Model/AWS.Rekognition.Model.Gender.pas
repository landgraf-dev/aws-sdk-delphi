unit AWS.Rekognition.Model.Gender;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Enums;

type
  TGender = class;
  
  IGender = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: TGenderType;
    procedure SetValue(const Value: TGenderType);
    function Obj: TGender;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: TGenderType read GetValue write SetValue;
  end;
  
  TGender = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<TGenderType>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: TGenderType;
    procedure SetValue(const Value: TGenderType);
  strict protected
    function Obj: TGender;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: TGenderType read GetValue write SetValue;
  end;
  
implementation

{ TGender }

function TGender.Obj: TGender;
begin
  Result := Self;
end;

function TGender.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TGender.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TGender.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TGender.GetValue: TGenderType;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TGender.SetValue(const Value: TGenderType);
begin
  FValue := Value;
end;

function TGender.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
