unit AWS.S3.Model.Object;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Owner, 
  AWS.S3.Enums;

type
  TObject = class;
  
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
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
    function GetStorageClass: TObjectStorageClass;
    procedure SetStorageClass(const Value: TObjectStorageClass);
    function Obj: TObject;
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
    property Size: Integer read GetSize write SetSize;
    property StorageClass: TObjectStorageClass read GetStorageClass write SetStorageClass;
  end;
  
  TObject = class
  strict private
    FETag: Nullable<string>;
    FKey: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    FSize: Nullable<Integer>;
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
    function GetSize: Integer;
    procedure SetSize(const Value: Integer);
    function GetStorageClass: TObjectStorageClass;
    procedure SetStorageClass(const Value: TObjectStorageClass);
  strict protected
    function Obj: TObject;
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
    property Size: Integer read GetSize write SetSize;
    property StorageClass: TObjectStorageClass read GetStorageClass write SetStorageClass;
  end;
  
implementation

{ TObject }

destructor TObject.Destroy;
begin
  Owner := nil;
  inherited;
end;

function TObject.Obj: TObject;
begin
  Result := Self;
end;

function TObject.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TObject.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TObject.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TObject.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TObject.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TObject.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TObject.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TObject.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TObject.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TObject.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TObject.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TObject.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TObject.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TObject.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

function TObject.GetSize: Integer;
begin
  Result := FSize.ValueOrDefault;
end;

procedure TObject.SetSize(const Value: Integer);
begin
  FSize := Value;
end;

function TObject.IsSetSize: Boolean;
begin
  Result := FSize.HasValue;
end;

function TObject.GetStorageClass: TObjectStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TObject.SetStorageClass(const Value: TObjectStorageClass);
begin
  FStorageClass := Value;
end;

function TObject.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

end.
