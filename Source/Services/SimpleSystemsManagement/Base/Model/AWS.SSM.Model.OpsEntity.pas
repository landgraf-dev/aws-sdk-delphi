unit AWS.SSM.Model.OpsEntity;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.OpsEntityItem, 
  AWS.Nullable;

type
  TOpsEntity = class;
  
  IOpsEntity = interface
    function GetData: TObjectDictionary<string, TOpsEntityItem>;
    procedure SetData(const Value: TObjectDictionary<string, TOpsEntityItem>);
    function GetKeepData: Boolean;
    procedure SetKeepData(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TOpsEntity;
    function IsSetData: Boolean;
    function IsSetId: Boolean;
    property Data: TObjectDictionary<string, TOpsEntityItem> read GetData write SetData;
    property KeepData: Boolean read GetKeepData write SetKeepData;
    property Id: string read GetId write SetId;
  end;
  
  TOpsEntity = class
  strict private
    FData: TObjectDictionary<string, TOpsEntityItem>;
    FKeepData: Boolean;
    FId: Nullable<string>;
    function GetData: TObjectDictionary<string, TOpsEntityItem>;
    procedure SetData(const Value: TObjectDictionary<string, TOpsEntityItem>);
    function GetKeepData: Boolean;
    procedure SetKeepData(const Value: Boolean);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TOpsEntity;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetData: Boolean;
    function IsSetId: Boolean;
    property Data: TObjectDictionary<string, TOpsEntityItem> read GetData write SetData;
    property KeepData: Boolean read GetKeepData write SetKeepData;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TOpsEntity }

constructor TOpsEntity.Create;
begin
  inherited;
  FData := TObjectDictionary<string, TOpsEntityItem>.Create([doOwnsValues]);
end;

destructor TOpsEntity.Destroy;
begin
  Data := nil;
  inherited;
end;

function TOpsEntity.Obj: TOpsEntity;
begin
  Result := Self;
end;

function TOpsEntity.GetData: TObjectDictionary<string, TOpsEntityItem>;
begin
  Result := FData;
end;

procedure TOpsEntity.SetData(const Value: TObjectDictionary<string, TOpsEntityItem>);
begin
  if FData <> Value then
  begin
    if not KeepData then
      FData.Free;
    FData := Value;
  end;
end;

function TOpsEntity.GetKeepData: Boolean;
begin
  Result := FKeepData;
end;

procedure TOpsEntity.SetKeepData(const Value: Boolean);
begin
  FKeepData := Value;
end;

function TOpsEntity.IsSetData: Boolean;
begin
  Result := (FData <> nil) and (FData.Count > 0);
end;

function TOpsEntity.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TOpsEntity.SetId(const Value: string);
begin
  FId := Value;
end;

function TOpsEntity.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
