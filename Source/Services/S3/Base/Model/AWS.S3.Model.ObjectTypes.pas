unit AWS.S3.Model.ObjectTypes;

interface

uses
  AWS.Nullable, 
  AWS.S3.Model.Owner, 
  AWS.S3.Enums;

type
  TS3Object = class;
  
  IObject = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetSize: Double;
    procedure SetSize(const Value: Double);
    function GetStorageClass: TObjectStorageClass;
    procedure SetStorageClass(const Value: TObjectStorageClass);
    function Obj: TS3Object;
    function IsSetETag: Boolean;
    function IsSetKey: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetOwner: Boolean;
    function IsSetSize: Boolean;
    function IsSetStorageClass: Boolean;
    property ETag: string read GetETag write SetETag;
    property Key: string read GetKey write SetKey;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property Size: Double read GetSize write SetSize;
    property StorageClass: TObjectStorageClass read GetStorageClass write SetStorageClass;
  end;
  
  TS3Object = class
  strict private
    FETag: Nullable<string>;
    FKey: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    FSize: Nullable<Double>;
    FStorageClass: Nullable<TObjectStorageClass>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetSize: Double;
    procedure SetSize(const Value: Double);
    function GetStorageClass: TObjectStorageClass;
    procedure SetStorageClass(const Value: TObjectStorageClass);
  strict protected
    function Obj: TS3Object;
  public
    destructor Destroy; override;
    function IsSetETag: Boolean;
    function IsSetKey: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetOwner: Boolean;
    function IsSetSize: Boolean;
    function IsSetStorageClass: Boolean;
    property ETag: string read GetETag write SetETag;
    property Key: string read GetKey write SetKey;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property Size: Double read GetSize write SetSize;
    property StorageClass: TObjectStorageClass read GetStorageClass write SetStorageClass;
  end;
  
implementation

{ TS3Object }

destructor TS3Object.Destroy;
begin
  Owner := nil;
  inherited;
end;

function TS3Object.Obj: TS3Object;
begin
  Result := Self;
end;

function TS3Object.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TS3Object.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TS3Object.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TS3Object.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TS3Object.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TS3Object.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TS3Object.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TS3Object.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TS3Object.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TS3Object.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TS3Object.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TS3Object.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TS3Object.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TS3Object.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

function TS3Object.GetSize: Double;
begin
  Result := FSize.ValueOrDefault;
end;

procedure TS3Object.SetSize(const Value: Double);
begin
  FSize := Value;
end;

function TS3Object.IsSetSize: Boolean;
begin
  Result := FSize.HasValue;
end;

function TS3Object.GetStorageClass: TObjectStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TS3Object.SetStorageClass(const Value: TObjectStorageClass);
begin
  FStorageClass := Value;
end;

function TS3Object.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

end.