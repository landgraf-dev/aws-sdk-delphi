unit AWS.Rekognition.Model.Smile;

interface

uses
  Bcl.Types.Nullable;

type
  TSmile = class;
  
  ISmile = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
    function Obj: TSmile;
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
  TSmile = class
  strict private
    FConfidence: Nullable<Double>;
    FValue: Nullable<Boolean>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetValue: Boolean;
    procedure SetValue(const Value: Boolean);
  strict protected
    function Obj: TSmile;
  public
    function IsSetConfidence: Boolean;
    function IsSetValue: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Value: Boolean read GetValue write SetValue;
  end;
  
implementation

{ TSmile }

function TSmile.Obj: TSmile;
begin
  Result := Self;
end;

function TSmile.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TSmile.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TSmile.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TSmile.GetValue: Boolean;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TSmile.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

function TSmile.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
