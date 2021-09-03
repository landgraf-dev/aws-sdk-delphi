unit AWS.Rekognition.Model.SegmentTypeInfo;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Rekognition.Enums;

type
  TSegmentTypeInfo = class;
  
  ISegmentTypeInfo = interface
    function GetModelVersion: string;
    procedure SetModelVersion(const Value: string);
    function GetType: TSegmentType;
    procedure SetType(const Value: TSegmentType);
    function Obj: TSegmentTypeInfo;
    function IsSetModelVersion: Boolean;
    function IsSetType: Boolean;
    property ModelVersion: string read GetModelVersion write SetModelVersion;
    property &Type: TSegmentType read GetType write SetType;
  end;
  
  TSegmentTypeInfo = class
  strict private
    FModelVersion: Nullable<string>;
    FType: Nullable<TSegmentType>;
    function GetModelVersion: string;
    procedure SetModelVersion(const Value: string);
    function GetType: TSegmentType;
    procedure SetType(const Value: TSegmentType);
  strict protected
    function Obj: TSegmentTypeInfo;
  public
    function IsSetModelVersion: Boolean;
    function IsSetType: Boolean;
    property ModelVersion: string read GetModelVersion write SetModelVersion;
    property &Type: TSegmentType read GetType write SetType;
  end;
  
implementation

{ TSegmentTypeInfo }

function TSegmentTypeInfo.Obj: TSegmentTypeInfo;
begin
  Result := Self;
end;

function TSegmentTypeInfo.GetModelVersion: string;
begin
  Result := FModelVersion.ValueOrDefault;
end;

procedure TSegmentTypeInfo.SetModelVersion(const Value: string);
begin
  FModelVersion := Value;
end;

function TSegmentTypeInfo.IsSetModelVersion: Boolean;
begin
  Result := FModelVersion.HasValue;
end;

function TSegmentTypeInfo.GetType: TSegmentType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TSegmentTypeInfo.SetType(const Value: TSegmentType);
begin
  FType := Value;
end;

function TSegmentTypeInfo.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
