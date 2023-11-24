unit AWS.S3.Model.ObjectVersion;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Owner, 
  AWS.S3.Enums;

type
  TObjectVersion = class;
  
  IObjectVersion = interface
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetIsLatest: Boolean;
    procedure SetIsLatest(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
    function GetStorageClass: TObjectVersionStorageClass;
    procedure SetStorageClass(const Value: TObjectVersionStorageClass);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TObjectVersion;
    function IsSetETag: Boolean;
    function IsSetIsLatest: Boolean;
    function IsSetKey: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetOwner: Boolean;
    function IsSetSize: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetVersionId: Boolean;
    property ETag: string read GetETag write SetETag;
    property IsLatest: Boolean read GetIsLatest write SetIsLatest;
    property Key: string read GetKey write SetKey;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property Size: Integer read GetSize write SetSize;
    property StorageClass: TObjectVersionStorageClass read GetStorageClass write SetStorageClass;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TObjectVersion = class
  strict private
    FETag: Nullable<string>;
    FIsLatest: Nullable<Boolean>;
    FKey: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    FSize: Nullable<Integer>;
    FStorageClass: Nullable<TObjectVersionStorageClass>;
    FVersionId: Nullable<string>;
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetIsLatest: Boolean;
    procedure SetIsLatest(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
    function GetStorageClass: TObjectVersionStorageClass;
    procedure SetStorageClass(const Value: TObjectVersionStorageClass);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TObjectVersion;
  public
    destructor Destroy; override;
    function IsSetETag: Boolean;
    function IsSetIsLatest: Boolean;
    function IsSetKey: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetOwner: Boolean;
    function IsSetSize: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetVersionId: Boolean;
    property ETag: string read GetETag write SetETag;
    property IsLatest: Boolean read GetIsLatest write SetIsLatest;
    property Key: string read GetKey write SetKey;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property Size: Integer read GetSize write SetSize;
    property StorageClass: TObjectVersionStorageClass read GetStorageClass write SetStorageClass;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TObjectVersion }

destructor TObjectVersion.Destroy;
begin
  Owner := nil;
  inherited;
end;

function TObjectVersion.Obj: TObjectVersion;
begin
  Result := Self;
end;

function TObjectVersion.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TObjectVersion.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TObjectVersion.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TObjectVersion.GetIsLatest: Boolean;
begin
  Result := FIsLatest.ValueOrDefault;
end;

procedure TObjectVersion.SetIsLatest(const Value: Boolean);
begin
  FIsLatest := Value;
end;

function TObjectVersion.IsSetIsLatest: Boolean;
begin
  Result := FIsLatest.HasValue;
end;

function TObjectVersion.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TObjectVersion.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TObjectVersion.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TObjectVersion.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TObjectVersion.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TObjectVersion.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TObjectVersion.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TObjectVersion.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TObjectVersion.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TObjectVersion.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TObjectVersion.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

function TObjectVersion.GetSize: Integer;
begin
  Result := FSize.ValueOrDefault;
end;

procedure TObjectVersion.SetSize(const Value: Integer);
begin
  FSize := Value;
end;

function TObjectVersion.IsSetSize: Boolean;
begin
  Result := FSize.HasValue;
end;

function TObjectVersion.GetStorageClass: TObjectVersionStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TObjectVersion.SetStorageClass(const Value: TObjectVersionStorageClass);
begin
  FStorageClass := Value;
end;

function TObjectVersion.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TObjectVersion.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TObjectVersion.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TObjectVersion.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
