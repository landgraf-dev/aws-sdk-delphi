unit AWS.S3Control.Model.StorageLensDataExport;

interface

uses
  AWS.S3Control.Model.S3BucketDestination;

type
  TStorageLensDataExport = class;
  
  IStorageLensDataExport = interface
    function GetS3BucketDestination: TS3BucketDestination;
    procedure SetS3BucketDestination(const Value: TS3BucketDestination);
    function GetKeepS3BucketDestination: Boolean;
    procedure SetKeepS3BucketDestination(const Value: Boolean);
    function Obj: TStorageLensDataExport;
    function IsSetS3BucketDestination: Boolean;
    property S3BucketDestination: TS3BucketDestination read GetS3BucketDestination write SetS3BucketDestination;
    property KeepS3BucketDestination: Boolean read GetKeepS3BucketDestination write SetKeepS3BucketDestination;
  end;
  
  TStorageLensDataExport = class
  strict private
    FS3BucketDestination: TS3BucketDestination;
    FKeepS3BucketDestination: Boolean;
    function GetS3BucketDestination: TS3BucketDestination;
    procedure SetS3BucketDestination(const Value: TS3BucketDestination);
    function GetKeepS3BucketDestination: Boolean;
    procedure SetKeepS3BucketDestination(const Value: Boolean);
  strict protected
    function Obj: TStorageLensDataExport;
  public
    destructor Destroy; override;
    function IsSetS3BucketDestination: Boolean;
    property S3BucketDestination: TS3BucketDestination read GetS3BucketDestination write SetS3BucketDestination;
    property KeepS3BucketDestination: Boolean read GetKeepS3BucketDestination write SetKeepS3BucketDestination;
  end;
  
implementation

{ TStorageLensDataExport }

destructor TStorageLensDataExport.Destroy;
begin
  S3BucketDestination := nil;
  inherited;
end;

function TStorageLensDataExport.Obj: TStorageLensDataExport;
begin
  Result := Self;
end;

function TStorageLensDataExport.GetS3BucketDestination: TS3BucketDestination;
begin
  Result := FS3BucketDestination;
end;

procedure TStorageLensDataExport.SetS3BucketDestination(const Value: TS3BucketDestination);
begin
  if FS3BucketDestination <> Value then
  begin
    if not KeepS3BucketDestination then
      FS3BucketDestination.Free;
    FS3BucketDestination := Value;
  end;
end;

function TStorageLensDataExport.GetKeepS3BucketDestination: Boolean;
begin
  Result := FKeepS3BucketDestination;
end;

procedure TStorageLensDataExport.SetKeepS3BucketDestination(const Value: Boolean);
begin
  FKeepS3BucketDestination := Value;
end;

function TStorageLensDataExport.IsSetS3BucketDestination: Boolean;
begin
  Result := FS3BucketDestination <> nil;
end;

end.
