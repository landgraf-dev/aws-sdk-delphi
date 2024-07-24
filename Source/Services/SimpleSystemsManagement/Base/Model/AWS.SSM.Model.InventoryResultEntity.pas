unit AWS.SSM.Model.InventoryResultEntity;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.InventoryResultItem, 
  AWS.Nullable;

type
  TInventoryResultEntity = class;
  
  IInventoryResultEntity = interface
    function GetData: TObjectDictionary<string, TInventoryResultItem>;
    procedure SetData(const Value: TObjectDictionary<string, TInventoryResultItem>);
    function GetKeepData: Boolean;
    procedure SetKeepData(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TInventoryResultEntity;
    function IsSetData: Boolean;
    function IsSetId: Boolean;
    property Data: TObjectDictionary<string, TInventoryResultItem> read GetData write SetData;
    property KeepData: Boolean read GetKeepData write SetKeepData;
    property Id: string read GetId write SetId;
  end;
  
  TInventoryResultEntity = class
  strict private
    FData: TObjectDictionary<string, TInventoryResultItem>;
    FKeepData: Boolean;
    FId: Nullable<string>;
    function GetData: TObjectDictionary<string, TInventoryResultItem>;
    procedure SetData(const Value: TObjectDictionary<string, TInventoryResultItem>);
    function GetKeepData: Boolean;
    procedure SetKeepData(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TInventoryResultEntity;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetData: Boolean;
    function IsSetId: Boolean;
    property Data: TObjectDictionary<string, TInventoryResultItem> read GetData write SetData;
    property KeepData: Boolean read GetKeepData write SetKeepData;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TInventoryResultEntity }

constructor TInventoryResultEntity.Create;
begin
  inherited;
  FData := TObjectDictionary<string, TInventoryResultItem>.Create([doOwnsValues]);
end;

destructor TInventoryResultEntity.Destroy;
begin
  Data := nil;
  inherited;
end;

function TInventoryResultEntity.Obj: TInventoryResultEntity;
begin
  Result := Self;
end;

function TInventoryResultEntity.GetData: TObjectDictionary<string, TInventoryResultItem>;
begin
  Result := FData;
end;

procedure TInventoryResultEntity.SetData(const Value: TObjectDictionary<string, TInventoryResultItem>);
begin
  if FData <> Value then
  begin
    if not KeepData then
      FData.Free;
    FData := Value;
  end;
end;

function TInventoryResultEntity.GetKeepData: Boolean;
begin
  Result := FKeepData;
end;

procedure TInventoryResultEntity.SetKeepData(const Value: Boolean);
begin
  FKeepData := Value;
end;

function TInventoryResultEntity.IsSetData: Boolean;
begin
  Result := (FData <> nil) and (FData.Count > 0);
end;

function TInventoryResultEntity.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TInventoryResultEntity.SetId(const Value: string);
begin
  FId := Value;
end;

function TInventoryResultEntity.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
