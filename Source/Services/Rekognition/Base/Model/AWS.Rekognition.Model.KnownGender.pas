unit AWS.Rekognition.Model.KnownGender;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Enums;

type
  TKnownGender = class;
  
  IKnownGender = interface
    function GetType: TKnownGenderType;
    procedure SetType(const Value: TKnownGenderType);
    function Obj: TKnownGender;
    function IsSetType: Boolean;
    property &Type: TKnownGenderType read GetType write SetType;
  end;
  
  TKnownGender = class
  strict private
    FType: Nullable<TKnownGenderType>;
    function GetType: TKnownGenderType;
    procedure SetType(const Value: TKnownGenderType);
  strict protected
    function Obj: TKnownGender;
  public
    function IsSetType: Boolean;
    property &Type: TKnownGenderType read GetType write SetType;
  end;
  
implementation

{ TKnownGender }

function TKnownGender.Obj: TKnownGender;
begin
  Result := Self;
end;

function TKnownGender.GetType: TKnownGenderType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TKnownGender.SetType(const Value: TKnownGenderType);
begin
  FType := Value;
end;

function TKnownGender.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
