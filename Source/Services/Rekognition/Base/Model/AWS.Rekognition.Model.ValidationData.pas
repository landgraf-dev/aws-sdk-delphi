unit AWS.Rekognition.Model.ValidationData;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.Asset;

type
  TValidationData = class;
  
  IValidationData = interface
    function GetAssets: TObjectList<TAsset>;
    procedure SetAssets(const Value: TObjectList<TAsset>);
    function GetKeepAssets: Boolean;
    procedure SetKeepAssets(const Value: Boolean);
    function Obj: TValidationData;
    function IsSetAssets: Boolean;
    property Assets: TObjectList<TAsset> read GetAssets write SetAssets;
    property KeepAssets: Boolean read GetKeepAssets write SetKeepAssets;
  end;
  
  TValidationData = class
  strict private
    FAssets: TObjectList<TAsset>;
    FKeepAssets: Boolean;
    function GetAssets: TObjectList<TAsset>;
    procedure SetAssets(const Value: TObjectList<TAsset>);
    function GetKeepAssets: Boolean;
    procedure SetKeepAssets(const Value: Boolean);
  strict protected
    function Obj: TValidationData;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssets: Boolean;
    property Assets: TObjectList<TAsset> read GetAssets write SetAssets;
    property KeepAssets: Boolean read GetKeepAssets write SetKeepAssets;
  end;
  
implementation

{ TValidationData }

constructor TValidationData.Create;
begin
  inherited;
  FAssets := TObjectList<TAsset>.Create;
end;

destructor TValidationData.Destroy;
begin
  Assets := nil;
  inherited;
end;

function TValidationData.Obj: TValidationData;
begin
  Result := Self;
end;

function TValidationData.GetAssets: TObjectList<TAsset>;
begin
  Result := FAssets;
end;

procedure TValidationData.SetAssets(const Value: TObjectList<TAsset>);
begin
  if FAssets <> Value then
  begin
    if not KeepAssets then
      FAssets.Free;
    FAssets := Value;
  end;
end;

function TValidationData.GetKeepAssets: Boolean;
begin
  Result := FKeepAssets;
end;

procedure TValidationData.SetKeepAssets(const Value: Boolean);
begin
  FKeepAssets := Value;
end;

function TValidationData.IsSetAssets: Boolean;
begin
  Result := (FAssets <> nil) and (FAssets.Count > 0);
end;

end.
