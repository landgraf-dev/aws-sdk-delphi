unit AWS.Rekognition.Model.FaceSearchSettings;

interface

uses
  AWS.Nullable;

type
  TFaceSearchSettings = class;
  
  IFaceSearchSettings = interface
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
    function Obj: TFaceSearchSettings;
    function IsSetCollectionId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
  end;
  
  TFaceSearchSettings = class
  strict private
    FCollectionId: Nullable<string>;
    FFaceMatchThreshold: Nullable<Double>;
    function GetCollectionId: string;
    procedure SetCollectionId(const Value: string);
    function GetFaceMatchThreshold: Double;
    procedure SetFaceMatchThreshold(const Value: Double);
  strict protected
    function Obj: TFaceSearchSettings;
  public
    function IsSetCollectionId: Boolean;
    function IsSetFaceMatchThreshold: Boolean;
    property CollectionId: string read GetCollectionId write SetCollectionId;
    property FaceMatchThreshold: Double read GetFaceMatchThreshold write SetFaceMatchThreshold;
  end;
  
implementation

{ TFaceSearchSettings }

function TFaceSearchSettings.Obj: TFaceSearchSettings;
begin
  Result := Self;
end;

function TFaceSearchSettings.GetCollectionId: string;
begin
  Result := FCollectionId.ValueOrDefault;
end;

procedure TFaceSearchSettings.SetCollectionId(const Value: string);
begin
  FCollectionId := Value;
end;

function TFaceSearchSettings.IsSetCollectionId: Boolean;
begin
  Result := FCollectionId.HasValue;
end;

function TFaceSearchSettings.GetFaceMatchThreshold: Double;
begin
  Result := FFaceMatchThreshold.ValueOrDefault;
end;

procedure TFaceSearchSettings.SetFaceMatchThreshold(const Value: Double);
begin
  FFaceMatchThreshold := Value;
end;

function TFaceSearchSettings.IsSetFaceMatchThreshold: Boolean;
begin
  Result := FFaceMatchThreshold.HasValue;
end;

end.
