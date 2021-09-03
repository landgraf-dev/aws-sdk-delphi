unit AWS.Rekognition.Model.TrainingData;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Asset;

type
  TTrainingData = class;
  
  ITrainingData = interface
    function GetAssets: TObjectList<TAsset>;
    procedure SetAssets(const Value: TObjectList<TAsset>);
    function GetKeepAssets: Boolean;
    procedure SetKeepAssets(const Value: Boolean);
    function Obj: TTrainingData;
    function IsSetAssets: Boolean;
    property Assets: TObjectList<TAsset> read GetAssets write SetAssets;
    property KeepAssets: Boolean read GetKeepAssets write SetKeepAssets;
  end;
  
  TTrainingData = class
  strict private
    FAssets: TObjectList<TAsset>;
    FKeepAssets: Boolean;
    function GetAssets: TObjectList<TAsset>;
    procedure SetAssets(const Value: TObjectList<TAsset>);
    function GetKeepAssets: Boolean;
    procedure SetKeepAssets(const Value: Boolean);
  strict protected
    function Obj: TTrainingData;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssets: Boolean;
    property Assets: TObjectList<TAsset> read GetAssets write SetAssets;
    property KeepAssets: Boolean read GetKeepAssets write SetKeepAssets;
  end;
  
implementation

{ TTrainingData }

constructor TTrainingData.Create;
begin
  inherited;
  FAssets := TObjectList<TAsset>.Create;
end;

destructor TTrainingData.Destroy;
begin
  Assets := nil;
  inherited;
end;

function TTrainingData.Obj: TTrainingData;
begin
  Result := Self;
end;

function TTrainingData.GetAssets: TObjectList<TAsset>;
begin
  Result := FAssets;
end;

procedure TTrainingData.SetAssets(const Value: TObjectList<TAsset>);
begin
  if FAssets <> Value then
  begin
    if not KeepAssets then
      FAssets.Free;
    FAssets := Value;
  end;
end;

function TTrainingData.GetKeepAssets: Boolean;
begin
  Result := FKeepAssets;
end;

procedure TTrainingData.SetKeepAssets(const Value: Boolean);
begin
  FKeepAssets := Value;
end;

function TTrainingData.IsSetAssets: Boolean;
begin
  Result := (FAssets <> nil) and (FAssets.Count > 0);
end;

end.
