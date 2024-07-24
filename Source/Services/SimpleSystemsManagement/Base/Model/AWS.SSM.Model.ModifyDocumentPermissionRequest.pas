unit AWS.SSM.Model.ModifyDocumentPermissionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TModifyDocumentPermissionRequest = class;
  
  IModifyDocumentPermissionRequest = interface
    function GetAccountIdsToAdd: TList<string>;
    procedure SetAccountIdsToAdd(const Value: TList<string>);
    function GetKeepAccountIdsToAdd: Boolean;
    procedure SetKeepAccountIdsToAdd(const Value: Boolean);
    function GetAccountIdsToRemove: TList<string>;
    procedure SetAccountIdsToRemove(const Value: TList<string>);
    function GetKeepAccountIdsToRemove: Boolean;
    procedure SetKeepAccountIdsToRemove(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPermissionType: TDocumentPermissionType;
    procedure SetPermissionType(const Value: TDocumentPermissionType);
    function GetSharedDocumentVersion: string;
    procedure SetSharedDocumentVersion(const Value: string);
    function Obj: TModifyDocumentPermissionRequest;
    function IsSetAccountIdsToAdd: Boolean;
    function IsSetAccountIdsToRemove: Boolean;
    function IsSetName: Boolean;
    function IsSetPermissionType: Boolean;
    function IsSetSharedDocumentVersion: Boolean;
    property AccountIdsToAdd: TList<string> read GetAccountIdsToAdd write SetAccountIdsToAdd;
    property KeepAccountIdsToAdd: Boolean read GetKeepAccountIdsToAdd write SetKeepAccountIdsToAdd;
    property AccountIdsToRemove: TList<string> read GetAccountIdsToRemove write SetAccountIdsToRemove;
    property KeepAccountIdsToRemove: Boolean read GetKeepAccountIdsToRemove write SetKeepAccountIdsToRemove;
    property Name: string read GetName write SetName;
    property PermissionType: TDocumentPermissionType read GetPermissionType write SetPermissionType;
    property SharedDocumentVersion: string read GetSharedDocumentVersion write SetSharedDocumentVersion;
  end;
  
  TModifyDocumentPermissionRequest = class(TAmazonSimpleSystemsManagementRequest, IModifyDocumentPermissionRequest)
  strict private
    FAccountIdsToAdd: TList<string>;
    FKeepAccountIdsToAdd: Boolean;
    FAccountIdsToRemove: TList<string>;
    FKeepAccountIdsToRemove: Boolean;
    FName: Nullable<string>;
    FPermissionType: Nullable<TDocumentPermissionType>;
    FSharedDocumentVersion: Nullable<string>;
    function GetAccountIdsToAdd: TList<string>;
    procedure SetAccountIdsToAdd(const Value: TList<string>);
    function GetKeepAccountIdsToAdd: Boolean;
    procedure SetKeepAccountIdsToAdd(const Value: Boolean);
    function GetAccountIdsToRemove: TList<string>;
    procedure SetAccountIdsToRemove(const Value: TList<string>);
    function GetKeepAccountIdsToRemove: Boolean;
    procedure SetKeepAccountIdsToRemove(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPermissionType: TDocumentPermissionType;
    procedure SetPermissionType(const Value: TDocumentPermissionType);
    function GetSharedDocumentVersion: string;
    procedure SetSharedDocumentVersion(const Value: string);
  strict protected
    function Obj: TModifyDocumentPermissionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountIdsToAdd: Boolean;
    function IsSetAccountIdsToRemove: Boolean;
    function IsSetName: Boolean;
    function IsSetPermissionType: Boolean;
    function IsSetSharedDocumentVersion: Boolean;
    property AccountIdsToAdd: TList<string> read GetAccountIdsToAdd write SetAccountIdsToAdd;
    property KeepAccountIdsToAdd: Boolean read GetKeepAccountIdsToAdd write SetKeepAccountIdsToAdd;
    property AccountIdsToRemove: TList<string> read GetAccountIdsToRemove write SetAccountIdsToRemove;
    property KeepAccountIdsToRemove: Boolean read GetKeepAccountIdsToRemove write SetKeepAccountIdsToRemove;
    property Name: string read GetName write SetName;
    property PermissionType: TDocumentPermissionType read GetPermissionType write SetPermissionType;
    property SharedDocumentVersion: string read GetSharedDocumentVersion write SetSharedDocumentVersion;
  end;
  
implementation

{ TModifyDocumentPermissionRequest }

constructor TModifyDocumentPermissionRequest.Create;
begin
  inherited;
  FAccountIdsToAdd := TList<string>.Create;
  FAccountIdsToRemove := TList<string>.Create;
end;

destructor TModifyDocumentPermissionRequest.Destroy;
begin
  AccountIdsToRemove := nil;
  AccountIdsToAdd := nil;
  inherited;
end;

function TModifyDocumentPermissionRequest.Obj: TModifyDocumentPermissionRequest;
begin
  Result := Self;
end;

function TModifyDocumentPermissionRequest.GetAccountIdsToAdd: TList<string>;
begin
  Result := FAccountIdsToAdd;
end;

procedure TModifyDocumentPermissionRequest.SetAccountIdsToAdd(const Value: TList<string>);
begin
  if FAccountIdsToAdd <> Value then
  begin
    if not KeepAccountIdsToAdd then
      FAccountIdsToAdd.Free;
    FAccountIdsToAdd := Value;
  end;
end;

function TModifyDocumentPermissionRequest.GetKeepAccountIdsToAdd: Boolean;
begin
  Result := FKeepAccountIdsToAdd;
end;

procedure TModifyDocumentPermissionRequest.SetKeepAccountIdsToAdd(const Value: Boolean);
begin
  FKeepAccountIdsToAdd := Value;
end;

function TModifyDocumentPermissionRequest.IsSetAccountIdsToAdd: Boolean;
begin
  Result := (FAccountIdsToAdd <> nil) and (FAccountIdsToAdd.Count > 0);
end;

function TModifyDocumentPermissionRequest.GetAccountIdsToRemove: TList<string>;
begin
  Result := FAccountIdsToRemove;
end;

procedure TModifyDocumentPermissionRequest.SetAccountIdsToRemove(const Value: TList<string>);
begin
  if FAccountIdsToRemove <> Value then
  begin
    if not KeepAccountIdsToRemove then
      FAccountIdsToRemove.Free;
    FAccountIdsToRemove := Value;
  end;
end;

function TModifyDocumentPermissionRequest.GetKeepAccountIdsToRemove: Boolean;
begin
  Result := FKeepAccountIdsToRemove;
end;

procedure TModifyDocumentPermissionRequest.SetKeepAccountIdsToRemove(const Value: Boolean);
begin
  FKeepAccountIdsToRemove := Value;
end;

function TModifyDocumentPermissionRequest.IsSetAccountIdsToRemove: Boolean;
begin
  Result := (FAccountIdsToRemove <> nil) and (FAccountIdsToRemove.Count > 0);
end;

function TModifyDocumentPermissionRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TModifyDocumentPermissionRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TModifyDocumentPermissionRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TModifyDocumentPermissionRequest.GetPermissionType: TDocumentPermissionType;
begin
  Result := FPermissionType.ValueOrDefault;
end;

procedure TModifyDocumentPermissionRequest.SetPermissionType(const Value: TDocumentPermissionType);
begin
  FPermissionType := Value;
end;

function TModifyDocumentPermissionRequest.IsSetPermissionType: Boolean;
begin
  Result := FPermissionType.HasValue;
end;

function TModifyDocumentPermissionRequest.GetSharedDocumentVersion: string;
begin
  Result := FSharedDocumentVersion.ValueOrDefault;
end;

procedure TModifyDocumentPermissionRequest.SetSharedDocumentVersion(const Value: string);
begin
  FSharedDocumentVersion := Value;
end;

function TModifyDocumentPermissionRequest.IsSetSharedDocumentVersion: Boolean;
begin
  Result := FSharedDocumentVersion.HasValue;
end;

end.
