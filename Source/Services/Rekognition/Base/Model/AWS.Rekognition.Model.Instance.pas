unit AWS.Rekognition.Model.Instance;

interface

uses
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Nullable;

type
  TInstance = class;
  
  IInstance = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
    function Obj: TInstance;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
  end;
  
  TInstance = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FConfidence: Nullable<Double>;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetConfidence: Double;
    procedure SetConfidence(const Value: Double);
  strict protected
    function Obj: TInstance;
  public
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetConfidence: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Confidence: Double read GetConfidence write SetConfidence;
  end;
  
implementation

{ TInstance }

destructor TInstance.Destroy;
begin
  BoundingBox := nil;
  inherited;
end;

function TInstance.Obj: TInstance;
begin
  Result := Self;
end;

function TInstance.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TInstance.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TInstance.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TInstance.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TInstance.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TInstance.GetConfidence: Double;
begin
  Result := FConfidence.ValueOrDefault;
end;

procedure TInstance.SetConfidence(const Value: Double);
begin
  FConfidence := Value;
end;

function TInstance.IsSetConfidence: Boolean;
begin
  Result := FConfidence.HasValue;
end;

end.
