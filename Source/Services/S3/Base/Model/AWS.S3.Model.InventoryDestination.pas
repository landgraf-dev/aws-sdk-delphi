unit AWS.S3.Model.InventoryDestination;

interface

uses
  AWS.S3.Model.InventoryS3BucketDestination;

type
  TInventoryDestination = class;
  
  IInventoryDestination = interface
    function GetS3BucketDestination: TInventoryS3BucketDestination;
    procedure SetS3BucketDestination(const Value: TInventoryS3BucketDestination);
    function GetKeepS3BucketDestination: Boolean;
    procedure SetKeepS3BucketDestination(const Value: Boolean);
    function Obj: TInventoryDestination;
    function IsSetS3BucketDestination: Boolean;
    property S3BucketDestination: TInventoryS3BucketDestination read GetS3BucketDestination write SetS3BucketDestination;
    property KeepS3BucketDestination: Boolean read GetKeepS3BucketDestination write SetKeepS3BucketDestination;
  end;
  
  TInventoryDestination = class
  strict private
    FS3BucketDestination: TInventoryS3BucketDestination;
    FKeepS3BucketDestination: Boolean;
    function GetS3BucketDestination: TInventoryS3BucketDestination;
    procedure SetS3BucketDestination(const Value: TInventoryS3BucketDestination);
    function GetKeepS3BucketDestination: Boolean;
    procedure SetKeepS3BucketDestination(const Value: Boolean);
  strict protected
    function Obj: TInventoryDestination;
  public
    destructor Destroy; override;
    function IsSetS3BucketDestination: Boolean;
    property S3BucketDestination: TInventoryS3BucketDestination read GetS3BucketDestination write SetS3BucketDestination;
    property KeepS3BucketDestination: Boolean read GetKeepS3BucketDestination write SetKeepS3BucketDestination;
  end;
  
implementation

{ TInventoryDestination }

destructor TInventoryDestination.Destroy;
begin
  S3BucketDestination := nil;
  inherited;
end;

function TInventoryDestination.Obj: TInventoryDestination;
begin
  Result := Self;
end;

function TInventoryDestination.GetS3BucketDestination: TInventoryS3BucketDestination;
begin
  Result := FS3BucketDestination;
end;

procedure TInventoryDestination.SetS3BucketDestination(const Value: TInventoryS3BucketDestination);
begin
  if FS3BucketDestination <> Value then
  begin
    if not KeepS3BucketDestination then
      FS3BucketDestination.Free;
    FS3BucketDestination := Value;
  end;
end;

function TInventoryDestination.GetKeepS3BucketDestination: Boolean;
begin
  Result := FKeepS3BucketDestination;
end;

procedure TInventoryDestination.SetKeepS3BucketDestination(const Value: Boolean);
begin
  FKeepS3BucketDestination := Value;
end;

function TInventoryDestination.IsSetS3BucketDestination: Boolean;
begin
  Result := FS3BucketDestination <> nil;
end;

end.
