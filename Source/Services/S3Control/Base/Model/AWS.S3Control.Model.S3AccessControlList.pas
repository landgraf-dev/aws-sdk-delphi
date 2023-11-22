unit AWS.S3Control.Model.S3AccessControlList;

interface

uses
  System.Generics.Collections, 
  AWS.S3Control.Model.S3Grant, 
  AWS.S3Control.Model.S3ObjectOwner;

type
  TS3AccessControlList = class;
  
  IS3AccessControlList = interface
    function GetGrants: TObjectList<TS3Grant>;
    procedure SetGrants(const Value: TObjectList<TS3Grant>);
    function GetKeepGrants: Boolean;
    procedure SetKeepGrants(const Value: Boolean);
    function GetOwner: TS3ObjectOwner;
    procedure SetOwner(const Value: TS3ObjectOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function Obj: TS3AccessControlList;
    function IsSetGrants: Boolean;
    function IsSetOwner: Boolean;
    property Grants: TObjectList<TS3Grant> read GetGrants write SetGrants;
    property KeepGrants: Boolean read GetKeepGrants write SetKeepGrants;
    property Owner: TS3ObjectOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
  TS3AccessControlList = class
  strict private
    FGrants: TObjectList<TS3Grant>;
    FKeepGrants: Boolean;
    FOwner: TS3ObjectOwner;
    FKeepOwner: Boolean;
    function GetGrants: TObjectList<TS3Grant>;
    procedure SetGrants(const Value: TObjectList<TS3Grant>);
    function GetKeepGrants: Boolean;
    procedure SetKeepGrants(const Value: Boolean);
    function GetOwner: TS3ObjectOwner;
    procedure SetOwner(const Value: TS3ObjectOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
  strict protected
    function Obj: TS3AccessControlList;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetGrants: Boolean;
    function IsSetOwner: Boolean;
    property Grants: TObjectList<TS3Grant> read GetGrants write SetGrants;
    property KeepGrants: Boolean read GetKeepGrants write SetKeepGrants;
    property Owner: TS3ObjectOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
  end;
  
implementation

{ TS3AccessControlList }

constructor TS3AccessControlList.Create;
begin
  inherited;
  FGrants := TObjectList<TS3Grant>.Create;
end;

destructor TS3AccessControlList.Destroy;
begin
  Owner := nil;
  Grants := nil;
  inherited;
end;

function TS3AccessControlList.Obj: TS3AccessControlList;
begin
  Result := Self;
end;

function TS3AccessControlList.GetGrants: TObjectList<TS3Grant>;
begin
  Result := FGrants;
end;

procedure TS3AccessControlList.SetGrants(const Value: TObjectList<TS3Grant>);
begin
  if FGrants <> Value then
  begin
    if not KeepGrants then
      FGrants.Free;
    FGrants := Value;
  end;
end;

function TS3AccessControlList.GetKeepGrants: Boolean;
begin
  Result := FKeepGrants;
end;

procedure TS3AccessControlList.SetKeepGrants(const Value: Boolean);
begin
  FKeepGrants := Value;
end;

function TS3AccessControlList.IsSetGrants: Boolean;
begin
  Result := (FGrants <> nil) and (FGrants.Count > 0);
end;

function TS3AccessControlList.GetOwner: TS3ObjectOwner;
begin
  Result := FOwner;
end;

procedure TS3AccessControlList.SetOwner(const Value: TS3ObjectOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TS3AccessControlList.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TS3AccessControlList.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TS3AccessControlList.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

end.
