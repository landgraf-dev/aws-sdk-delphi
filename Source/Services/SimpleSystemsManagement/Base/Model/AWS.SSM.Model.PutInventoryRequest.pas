unit AWS.SSM.Model.PutInventoryRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.InventoryItem;

type
  TPutInventoryRequest = class;
  
  IPutInventoryRequest = interface
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetItems: TObjectList<TInventoryItem>;
    procedure SetItems(const Value: TObjectList<TInventoryItem>);
    function GetKeepItems: Boolean;
    procedure SetKeepItems(const Value: Boolean);
    function Obj: TPutInventoryRequest;
    function IsSetInstanceId: Boolean;
    function IsSetItems: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Items: TObjectList<TInventoryItem> read GetItems write SetItems;
    property KeepItems: Boolean read GetKeepItems write SetKeepItems;
  end;
  
  TPutInventoryRequest = class(TAmazonSimpleSystemsManagementRequest, IPutInventoryRequest)
  strict private
    FInstanceId: Nullable<string>;
    FItems: TObjectList<TInventoryItem>;
    FKeepItems: Boolean;
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetItems: TObjectList<TInventoryItem>;
    procedure SetItems(const Value: TObjectList<TInventoryItem>);
    function GetKeepItems: Boolean;
    procedure SetKeepItems(const Value: Boolean);
  strict protected
    function Obj: TPutInventoryRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInstanceId: Boolean;
    function IsSetItems: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Items: TObjectList<TInventoryItem> read GetItems write SetItems;
    property KeepItems: Boolean read GetKeepItems write SetKeepItems;
  end;
  
implementation

{ TPutInventoryRequest }

constructor TPutInventoryRequest.Create;
begin
  inherited;
  FItems := TObjectList<TInventoryItem>.Create;
end;

destructor TPutInventoryRequest.Destroy;
begin
  Items := nil;
  inherited;
end;

function TPutInventoryRequest.Obj: TPutInventoryRequest;
begin
  Result := Self;
end;

function TPutInventoryRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TPutInventoryRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TPutInventoryRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TPutInventoryRequest.GetItems: TObjectList<TInventoryItem>;
begin
  Result := FItems;
end;

procedure TPutInventoryRequest.SetItems(const Value: TObjectList<TInventoryItem>);
begin
  if FItems <> Value then
  begin
    if not KeepItems then
      FItems.Free;
    FItems := Value;
  end;
end;

function TPutInventoryRequest.GetKeepItems: Boolean;
begin
  Result := FKeepItems;
end;

procedure TPutInventoryRequest.SetKeepItems(const Value: Boolean);
begin
  FKeepItems := Value;
end;

function TPutInventoryRequest.IsSetItems: Boolean;
begin
  Result := (FItems <> nil) and (FItems.Count > 0);
end;

end.
