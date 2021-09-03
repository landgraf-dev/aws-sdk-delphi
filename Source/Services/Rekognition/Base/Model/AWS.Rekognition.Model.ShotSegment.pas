unit AWS.Rekognition.Model.ShotSegment;

interface

uses
  Bcl.Types.Nullable;

type
  TShotSegment = class;
  
  IShotSegment = interface
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetIndex: Int64;
    procedure SetIndex(const Value: Int64);
    function Obj: TShotSegment;
    function IsSetConfidence: Boolean;
    function IsSetIndex: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Index: Int64 read GetIndex write SetIndex;
  end;
  
  TShotSegment = class
  strict private
    FConfidence: Nullable<Double>;
    FIndex: Nullable<Int64>;
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function GetIndex: Int64;
    procedure SetIndex(const Value: Int64);
  strict protected
    function Obj: TShotSegment;
  public
    function IsSetConfidence: Boolean;
    function IsSetIndex: Boolean;
    property Confidence: Double read GetConfidence write SetConfidence;
    property Index: Int64 read GetIndex write SetIndex;
  end;
  
implementation

{ TShotSegment }

function TShotSegment.Obj: TShotSegment;
begin
  Result := Self;
end;

function TShotSegment.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TShotSegment.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TShotSegment.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

function TShotSegment.GetIndex: Int64;
begin
  Result := FIndex.ValueOrDefault;
end;

procedure TShotSegment.SetIndex(const Value: Int64);
begin
  FIndex := Value;
end;

function TShotSegment.IsSetIndex: Boolean;
begin
  Result := FIndex.HasValue;
end;

end.
