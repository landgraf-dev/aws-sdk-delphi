unit AWS.SSM.Model.UpdateOpsMetadataRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.MetadataValue, 
  AWS.Nullable;

type
  TUpdateOpsMetadataRequest = class;
  
  IUpdateOpsMetadataRequest = interface
    function GetKeysToDelete: TList<string>;
    procedure SetKeysToDelete(const Value: TList<string>);
    function GetKeepKeysToDelete: Boolean;
    procedure SetKeepKeysToDelete(const Value: Boolean);
    function GetMetadataToUpdate: TObjectDictionary<string, TMetadataValue>;
    procedure SetMetadataToUpdate(const Value: TObjectDictionary<string, TMetadataValue>);
    function GetKeepMetadataToUpdate: Boolean;
    procedure SetKeepMetadataToUpdate(const Value: Boolean);
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
    function Obj: TUpdateOpsMetadataRequest;
    function IsSetKeysToDelete: Boolean;
    function IsSetMetadataToUpdate: Boolean;
    function IsSetOpsMetadataArn: Boolean;
    property KeysToDelete: TList<string> read GetKeysToDelete write SetKeysToDelete;
    property KeepKeysToDelete: Boolean read GetKeepKeysToDelete write SetKeepKeysToDelete;
    property MetadataToUpdate: TObjectDictionary<string, TMetadataValue> read GetMetadataToUpdate write SetMetadataToUpdate;
    property KeepMetadataToUpdate: Boolean read GetKeepMetadataToUpdate write SetKeepMetadataToUpdate;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
  TUpdateOpsMetadataRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateOpsMetadataRequest)
  strict private
    FKeysToDelete: TList<string>;
    FKeepKeysToDelete: Boolean;
    FMetadataToUpdate: TObjectDictionary<string, TMetadataValue>;
    FKeepMetadataToUpdate: Boolean;
    FOpsMetadataArn: Nullable<string>;
    function GetKeysToDelete: TList<string>;
    procedure SetKeysToDelete(const Value: TList<string>);
    function GetKeepKeysToDelete: Boolean;
    procedure SetKeepKeysToDelete(const Value: Boolean);
    function GetMetadataToUpdate: TObjectDictionary<string, TMetadataValue>;
    procedure SetMetadataToUpdate(const Value: TObjectDictionary<string, TMetadataValue>);
    function GetKeepMetadataToUpdate: Boolean;
    procedure SetKeepMetadataToUpdate(const Value: Boolean);
    function GetOpsMetadataArn: string;
    procedure SetOpsMetadataArn(const Value: string);
  strict protected
    function Obj: TUpdateOpsMetadataRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetKeysToDelete: Boolean;
    function IsSetMetadataToUpdate: Boolean;
    function IsSetOpsMetadataArn: Boolean;
    property KeysToDelete: TList<string> read GetKeysToDelete write SetKeysToDelete;
    property KeepKeysToDelete: Boolean read GetKeepKeysToDelete write SetKeepKeysToDelete;
    property MetadataToUpdate: TObjectDictionary<string, TMetadataValue> read GetMetadataToUpdate write SetMetadataToUpdate;
    property KeepMetadataToUpdate: Boolean read GetKeepMetadataToUpdate write SetKeepMetadataToUpdate;
    property OpsMetadataArn: string read GetOpsMetadataArn write SetOpsMetadataArn;
  end;
  
implementation

{ TUpdateOpsMetadataRequest }

constructor TUpdateOpsMetadataRequest.Create;
begin
  inherited;
  FKeysToDelete := TList<string>.Create;
  FMetadataToUpdate := TObjectDictionary<string, TMetadataValue>.Create([doOwnsValues]);
end;

destructor TUpdateOpsMetadataRequest.Destroy;
begin
  MetadataToUpdate := nil;
  KeysToDelete := nil;
  inherited;
end;

function TUpdateOpsMetadataRequest.Obj: TUpdateOpsMetadataRequest;
begin
  Result := Self;
end;

function TUpdateOpsMetadataRequest.GetKeysToDelete: TList<string>;
begin
  Result := FKeysToDelete;
end;

procedure TUpdateOpsMetadataRequest.SetKeysToDelete(const Value: TList<string>);
begin
  if FKeysToDelete <> Value then
  begin
    if not KeepKeysToDelete then
      FKeysToDelete.Free;
    FKeysToDelete := Value;
  end;
end;

function TUpdateOpsMetadataRequest.GetKeepKeysToDelete: Boolean;
begin
  Result := FKeepKeysToDelete;
end;

procedure TUpdateOpsMetadataRequest.SetKeepKeysToDelete(const Value: Boolean);
begin
  FKeepKeysToDelete := Value;
end;

function TUpdateOpsMetadataRequest.IsSetKeysToDelete: Boolean;
begin
  Result := (FKeysToDelete <> nil) and (FKeysToDelete.Count > 0);
end;

function TUpdateOpsMetadataRequest.GetMetadataToUpdate: TObjectDictionary<string, TMetadataValue>;
begin
  Result := FMetadataToUpdate;
end;

procedure TUpdateOpsMetadataRequest.SetMetadataToUpdate(const Value: TObjectDictionary<string, TMetadataValue>);
begin
  if FMetadataToUpdate <> Value then
  begin
    if not KeepMetadataToUpdate then
      FMetadataToUpdate.Free;
    FMetadataToUpdate := Value;
  end;
end;

function TUpdateOpsMetadataRequest.GetKeepMetadataToUpdate: Boolean;
begin
  Result := FKeepMetadataToUpdate;
end;

procedure TUpdateOpsMetadataRequest.SetKeepMetadataToUpdate(const Value: Boolean);
begin
  FKeepMetadataToUpdate := Value;
end;

function TUpdateOpsMetadataRequest.IsSetMetadataToUpdate: Boolean;
begin
  Result := (FMetadataToUpdate <> nil) and (FMetadataToUpdate.Count > 0);
end;

function TUpdateOpsMetadataRequest.GetOpsMetadataArn: string;
begin
  Result := FOpsMetadataArn.ValueOrDefault;
end;

procedure TUpdateOpsMetadataRequest.SetOpsMetadataArn(const Value: string);
begin
  FOpsMetadataArn := Value;
end;

function TUpdateOpsMetadataRequest.IsSetOpsMetadataArn: Boolean;
begin
  Result := FOpsMetadataArn.HasValue;
end;

end.
