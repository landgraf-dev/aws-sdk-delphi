unit AWS.Rekognition.Model.TestingData;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Rekognition.Model.Asset;

type
  TTestingData = class;
  
  ITestingData = interface
    function GetAssets: TObjectList<TAsset>;
    procedure SetAssets(const Value: TObjectList<TAsset>);
    function GetKeepAssets: Boolean;
    procedure SetKeepAssets(const Value: Boolean);
    function GetAutoCreate: Boolean;
    procedure SetAutoCreate(const Value: Boolean);
    function Obj: TTestingData;
    function IsSetAssets: Boolean;
    function IsSetAutoCreate: Boolean;
    property Assets: TObjectList<TAsset> read GetAssets write SetAssets;
    property KeepAssets: Boolean read GetKeepAssets write SetKeepAssets;
    property AutoCreate: Boolean read GetAutoCreate write SetAutoCreate;
  end;
  
  TTestingData = class
  strict private
    FAssets: TObjectList<TAsset>;
    FKeepAssets: Boolean;
    FAutoCreate: Nullable<Boolean>;
    function GetAssets: TObjectList<TAsset>;
    procedure SetAssets(const Value: TObjectList<TAsset>);
    function GetKeepAssets: Boolean;
    procedure SetKeepAssets(const Value: Boolean);
    function GetAutoCreate: Boolean;
    procedure SetAutoCreate(const Value: Boolean);
  strict protected
    function Obj: TTestingData;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssets: Boolean;
    function IsSetAutoCreate: Boolean;
    property Assets: TObjectList<TAsset> read GetAssets write SetAssets;
    property KeepAssets: Boolean read GetKeepAssets write SetKeepAssets;
    property AutoCreate: Boolean read GetAutoCreate write SetAutoCreate;
  end;
  
implementation

{ TTestingData }

constructor TTestingData.Create;
begin
  inherited;
  FAssets := TObjectList<TAsset>.Create;
end;

destructor TTestingData.Destroy;
begin
  Assets := nil;
  inherited;
end;

function TTestingData.Obj: TTestingData;
begin
  Result := Self;
end;

function TTestingData.GetAssets: TObjectList<TAsset>;
begin
  Result := FAssets;
end;

procedure TTestingData.SetAssets(const Value: TObjectList<TAsset>);
begin
  if FAssets <> Value then
  begin
    if not KeepAssets then
      FAssets.Free;
    FAssets := Value;
  end;
end;

function TTestingData.GetKeepAssets: Boolean;
begin
  Result := FKeepAssets;
end;

procedure TTestingData.SetKeepAssets(const Value: Boolean);
begin
  FKeepAssets := Value;
end;

function TTestingData.IsSetAssets: Boolean;
begin
  Result := (FAssets <> nil) and (FAssets.Count > 0);
end;

function TTestingData.GetAutoCreate: Boolean;
begin
  Result := FAutoCreate.ValueOrDefault;
end;

procedure TTestingData.SetAutoCreate(const Value: Boolean);
begin
  FAutoCreate := Value;
end;

function TTestingData.IsSetAutoCreate: Boolean;
begin
  Result := FAutoCreate.HasValue;
end;

end.
