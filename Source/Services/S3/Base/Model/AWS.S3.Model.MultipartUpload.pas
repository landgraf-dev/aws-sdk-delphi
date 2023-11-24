unit AWS.S3.Model.MultipartUpload;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Initiator, 
  AWS.S3.Model.Owner, 
  AWS.S3.Enums;

type
  TMultipartUpload = class;
  
  IMultipartUpload = interface
    function GetInitiated: TDateTime;
    procedure SetInitiated(const Value: TDateTime);
    function GetInitiator: TInitiator;
    procedure SetInitiator(const Value: TInitiator);
    function GetKeepInitiator: Boolean;
    procedure SetKeepInitiator(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TMultipartUpload;
    function IsSetInitiated: Boolean;
    function IsSetInitiator: Boolean;
    function IsSetKey: Boolean;
    function IsSetOwner: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetUploadId: Boolean;
    property Initiated: TDateTime read GetInitiated write SetInitiated;
    property Initiator: TInitiator read GetInitiator write SetInitiator;
    property KeepInitiator: Boolean read GetKeepInitiator write SetKeepInitiator;
    property Key: string read GetKey write SetKey;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
  TMultipartUpload = class
  strict private
    FInitiated: Nullable<TDateTime>;
    FInitiator: TInitiator;
    FKeepInitiator: Boolean;
    FKey: Nullable<string>;
    FOwner: TOwner;
    FKeepOwner: Boolean;
    FStorageClass: Nullable<TStorageClass>;
    FUploadId: Nullable<string>;
    function GetInitiated: TDateTime;
    procedure SetInitiated(const Value: TDateTime);
    function GetInitiator: TInitiator;
    procedure SetInitiator(const Value: TInitiator);
    function GetKeepInitiator: Boolean;
    procedure SetKeepInitiator(const Value: Boolean);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetOwner: TOwner;
    procedure SetOwner(const Value: TOwner);
    function GetKeepOwner: Boolean;
    procedure SetKeepOwner(const Value: Boolean);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TMultipartUpload;
  public
    destructor Destroy; override;
    function IsSetInitiated: Boolean;
    function IsSetInitiator: Boolean;
    function IsSetKey: Boolean;
    function IsSetOwner: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetUploadId: Boolean;
    property Initiated: TDateTime read GetInitiated write SetInitiated;
    property Initiator: TInitiator read GetInitiator write SetInitiator;
    property KeepInitiator: Boolean read GetKeepInitiator write SetKeepInitiator;
    property Key: string read GetKey write SetKey;
    property Owner: TOwner read GetOwner write SetOwner;
    property KeepOwner: Boolean read GetKeepOwner write SetKeepOwner;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
implementation

{ TMultipartUpload }

destructor TMultipartUpload.Destroy;
begin
  Owner := nil;
  Initiator := nil;
  inherited;
end;

function TMultipartUpload.Obj: TMultipartUpload;
begin
  Result := Self;
end;

function TMultipartUpload.GetInitiated: TDateTime;
begin
  Result := FInitiated.ValueOrDefault;
end;

procedure TMultipartUpload.SetInitiated(const Value: TDateTime);
begin
  FInitiated := Value;
end;

function TMultipartUpload.IsSetInitiated: Boolean;
begin
  Result := FInitiated.HasValue;
end;

function TMultipartUpload.GetInitiator: TInitiator;
begin
  Result := FInitiator;
end;

procedure TMultipartUpload.SetInitiator(const Value: TInitiator);
begin
  if FInitiator <> Value then
  begin
    if not KeepInitiator then
      FInitiator.Free;
    FInitiator := Value;
  end;
end;

function TMultipartUpload.GetKeepInitiator: Boolean;
begin
  Result := FKeepInitiator;
end;

procedure TMultipartUpload.SetKeepInitiator(const Value: Boolean);
begin
  FKeepInitiator := Value;
end;

function TMultipartUpload.IsSetInitiator: Boolean;
begin
  Result := FInitiator <> nil;
end;

function TMultipartUpload.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TMultipartUpload.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TMultipartUpload.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TMultipartUpload.GetOwner: TOwner;
begin
  Result := FOwner;
end;

procedure TMultipartUpload.SetOwner(const Value: TOwner);
begin
  if FOwner <> Value then
  begin
    if not KeepOwner then
      FOwner.Free;
    FOwner := Value;
  end;
end;

function TMultipartUpload.GetKeepOwner: Boolean;
begin
  Result := FKeepOwner;
end;

procedure TMultipartUpload.SetKeepOwner(const Value: Boolean);
begin
  FKeepOwner := Value;
end;

function TMultipartUpload.IsSetOwner: Boolean;
begin
  Result := FOwner <> nil;
end;

function TMultipartUpload.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TMultipartUpload.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TMultipartUpload.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TMultipartUpload.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TMultipartUpload.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TMultipartUpload.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
