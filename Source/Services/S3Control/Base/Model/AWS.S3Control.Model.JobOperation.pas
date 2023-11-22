unit AWS.S3Control.Model.JobOperation;

interface

uses
  AWS.S3Control.Model.LambdaInvokeOperation, 
  AWS.S3Control.Model.S3DeleteObjectTaggingOperation, 
  AWS.S3Control.Model.S3InitiateRestoreObjectOperation, 
  AWS.S3Control.Model.S3SetObjectAclOperation, 
  AWS.S3Control.Model.S3CopyObjectOperation, 
  AWS.S3Control.Model.S3SetObjectLegalHoldOperation, 
  AWS.S3Control.Model.S3SetObjectRetentionOperation, 
  AWS.S3Control.Model.S3SetObjectTaggingOperation;

type
  TJobOperation = class;
  
  IJobOperation = interface
    function GetLambdaInvoke: TLambdaInvokeOperation;
    procedure SetLambdaInvoke(const Value: TLambdaInvokeOperation);
    function GetKeepLambdaInvoke: Boolean;
    procedure SetKeepLambdaInvoke(const Value: Boolean);
    function GetS3DeleteObjectTagging: TS3DeleteObjectTaggingOperation;
    procedure SetS3DeleteObjectTagging(const Value: TS3DeleteObjectTaggingOperation);
    function GetKeepS3DeleteObjectTagging: Boolean;
    procedure SetKeepS3DeleteObjectTagging(const Value: Boolean);
    function GetS3InitiateRestoreObject: TS3InitiateRestoreObjectOperation;
    procedure SetS3InitiateRestoreObject(const Value: TS3InitiateRestoreObjectOperation);
    function GetKeepS3InitiateRestoreObject: Boolean;
    procedure SetKeepS3InitiateRestoreObject(const Value: Boolean);
    function GetS3PutObjectAcl: TS3SetObjectAclOperation;
    procedure SetS3PutObjectAcl(const Value: TS3SetObjectAclOperation);
    function GetKeepS3PutObjectAcl: Boolean;
    procedure SetKeepS3PutObjectAcl(const Value: Boolean);
    function GetS3PutObjectCopy: TS3CopyObjectOperation;
    procedure SetS3PutObjectCopy(const Value: TS3CopyObjectOperation);
    function GetKeepS3PutObjectCopy: Boolean;
    procedure SetKeepS3PutObjectCopy(const Value: Boolean);
    function GetS3PutObjectLegalHold: TS3SetObjectLegalHoldOperation;
    procedure SetS3PutObjectLegalHold(const Value: TS3SetObjectLegalHoldOperation);
    function GetKeepS3PutObjectLegalHold: Boolean;
    procedure SetKeepS3PutObjectLegalHold(const Value: Boolean);
    function GetS3PutObjectRetention: TS3SetObjectRetentionOperation;
    procedure SetS3PutObjectRetention(const Value: TS3SetObjectRetentionOperation);
    function GetKeepS3PutObjectRetention: Boolean;
    procedure SetKeepS3PutObjectRetention(const Value: Boolean);
    function GetS3PutObjectTagging: TS3SetObjectTaggingOperation;
    procedure SetS3PutObjectTagging(const Value: TS3SetObjectTaggingOperation);
    function GetKeepS3PutObjectTagging: Boolean;
    procedure SetKeepS3PutObjectTagging(const Value: Boolean);
    function Obj: TJobOperation;
    function IsSetLambdaInvoke: Boolean;
    function IsSetS3DeleteObjectTagging: Boolean;
    function IsSetS3InitiateRestoreObject: Boolean;
    function IsSetS3PutObjectAcl: Boolean;
    function IsSetS3PutObjectCopy: Boolean;
    function IsSetS3PutObjectLegalHold: Boolean;
    function IsSetS3PutObjectRetention: Boolean;
    function IsSetS3PutObjectTagging: Boolean;
    property LambdaInvoke: TLambdaInvokeOperation read GetLambdaInvoke write SetLambdaInvoke;
    property KeepLambdaInvoke: Boolean read GetKeepLambdaInvoke write SetKeepLambdaInvoke;
    property S3DeleteObjectTagging: TS3DeleteObjectTaggingOperation read GetS3DeleteObjectTagging write SetS3DeleteObjectTagging;
    property KeepS3DeleteObjectTagging: Boolean read GetKeepS3DeleteObjectTagging write SetKeepS3DeleteObjectTagging;
    property S3InitiateRestoreObject: TS3InitiateRestoreObjectOperation read GetS3InitiateRestoreObject write SetS3InitiateRestoreObject;
    property KeepS3InitiateRestoreObject: Boolean read GetKeepS3InitiateRestoreObject write SetKeepS3InitiateRestoreObject;
    property S3PutObjectAcl: TS3SetObjectAclOperation read GetS3PutObjectAcl write SetS3PutObjectAcl;
    property KeepS3PutObjectAcl: Boolean read GetKeepS3PutObjectAcl write SetKeepS3PutObjectAcl;
    property S3PutObjectCopy: TS3CopyObjectOperation read GetS3PutObjectCopy write SetS3PutObjectCopy;
    property KeepS3PutObjectCopy: Boolean read GetKeepS3PutObjectCopy write SetKeepS3PutObjectCopy;
    property S3PutObjectLegalHold: TS3SetObjectLegalHoldOperation read GetS3PutObjectLegalHold write SetS3PutObjectLegalHold;
    property KeepS3PutObjectLegalHold: Boolean read GetKeepS3PutObjectLegalHold write SetKeepS3PutObjectLegalHold;
    property S3PutObjectRetention: TS3SetObjectRetentionOperation read GetS3PutObjectRetention write SetS3PutObjectRetention;
    property KeepS3PutObjectRetention: Boolean read GetKeepS3PutObjectRetention write SetKeepS3PutObjectRetention;
    property S3PutObjectTagging: TS3SetObjectTaggingOperation read GetS3PutObjectTagging write SetS3PutObjectTagging;
    property KeepS3PutObjectTagging: Boolean read GetKeepS3PutObjectTagging write SetKeepS3PutObjectTagging;
  end;
  
  TJobOperation = class
  strict private
    FLambdaInvoke: TLambdaInvokeOperation;
    FKeepLambdaInvoke: Boolean;
    FS3DeleteObjectTagging: TS3DeleteObjectTaggingOperation;
    FKeepS3DeleteObjectTagging: Boolean;
    FS3InitiateRestoreObject: TS3InitiateRestoreObjectOperation;
    FKeepS3InitiateRestoreObject: Boolean;
    FS3PutObjectAcl: TS3SetObjectAclOperation;
    FKeepS3PutObjectAcl: Boolean;
    FS3PutObjectCopy: TS3CopyObjectOperation;
    FKeepS3PutObjectCopy: Boolean;
    FS3PutObjectLegalHold: TS3SetObjectLegalHoldOperation;
    FKeepS3PutObjectLegalHold: Boolean;
    FS3PutObjectRetention: TS3SetObjectRetentionOperation;
    FKeepS3PutObjectRetention: Boolean;
    FS3PutObjectTagging: TS3SetObjectTaggingOperation;
    FKeepS3PutObjectTagging: Boolean;
    function GetLambdaInvoke: TLambdaInvokeOperation;
    procedure SetLambdaInvoke(const Value: TLambdaInvokeOperation);
    function GetKeepLambdaInvoke: Boolean;
    procedure SetKeepLambdaInvoke(const Value: Boolean);
    function GetS3DeleteObjectTagging: TS3DeleteObjectTaggingOperation;
    procedure SetS3DeleteObjectTagging(const Value: TS3DeleteObjectTaggingOperation);
    function GetKeepS3DeleteObjectTagging: Boolean;
    procedure SetKeepS3DeleteObjectTagging(const Value: Boolean);
    function GetS3InitiateRestoreObject: TS3InitiateRestoreObjectOperation;
    procedure SetS3InitiateRestoreObject(const Value: TS3InitiateRestoreObjectOperation);
    function GetKeepS3InitiateRestoreObject: Boolean;
    procedure SetKeepS3InitiateRestoreObject(const Value: Boolean);
    function GetS3PutObjectAcl: TS3SetObjectAclOperation;
    procedure SetS3PutObjectAcl(const Value: TS3SetObjectAclOperation);
    function GetKeepS3PutObjectAcl: Boolean;
    procedure SetKeepS3PutObjectAcl(const Value: Boolean);
    function GetS3PutObjectCopy: TS3CopyObjectOperation;
    procedure SetS3PutObjectCopy(const Value: TS3CopyObjectOperation);
    function GetKeepS3PutObjectCopy: Boolean;
    procedure SetKeepS3PutObjectCopy(const Value: Boolean);
    function GetS3PutObjectLegalHold: TS3SetObjectLegalHoldOperation;
    procedure SetS3PutObjectLegalHold(const Value: TS3SetObjectLegalHoldOperation);
    function GetKeepS3PutObjectLegalHold: Boolean;
    procedure SetKeepS3PutObjectLegalHold(const Value: Boolean);
    function GetS3PutObjectRetention: TS3SetObjectRetentionOperation;
    procedure SetS3PutObjectRetention(const Value: TS3SetObjectRetentionOperation);
    function GetKeepS3PutObjectRetention: Boolean;
    procedure SetKeepS3PutObjectRetention(const Value: Boolean);
    function GetS3PutObjectTagging: TS3SetObjectTaggingOperation;
    procedure SetS3PutObjectTagging(const Value: TS3SetObjectTaggingOperation);
    function GetKeepS3PutObjectTagging: Boolean;
    procedure SetKeepS3PutObjectTagging(const Value: Boolean);
  strict protected
    function Obj: TJobOperation;
  public
    destructor Destroy; override;
    function IsSetLambdaInvoke: Boolean;
    function IsSetS3DeleteObjectTagging: Boolean;
    function IsSetS3InitiateRestoreObject: Boolean;
    function IsSetS3PutObjectAcl: Boolean;
    function IsSetS3PutObjectCopy: Boolean;
    function IsSetS3PutObjectLegalHold: Boolean;
    function IsSetS3PutObjectRetention: Boolean;
    function IsSetS3PutObjectTagging: Boolean;
    property LambdaInvoke: TLambdaInvokeOperation read GetLambdaInvoke write SetLambdaInvoke;
    property KeepLambdaInvoke: Boolean read GetKeepLambdaInvoke write SetKeepLambdaInvoke;
    property S3DeleteObjectTagging: TS3DeleteObjectTaggingOperation read GetS3DeleteObjectTagging write SetS3DeleteObjectTagging;
    property KeepS3DeleteObjectTagging: Boolean read GetKeepS3DeleteObjectTagging write SetKeepS3DeleteObjectTagging;
    property S3InitiateRestoreObject: TS3InitiateRestoreObjectOperation read GetS3InitiateRestoreObject write SetS3InitiateRestoreObject;
    property KeepS3InitiateRestoreObject: Boolean read GetKeepS3InitiateRestoreObject write SetKeepS3InitiateRestoreObject;
    property S3PutObjectAcl: TS3SetObjectAclOperation read GetS3PutObjectAcl write SetS3PutObjectAcl;
    property KeepS3PutObjectAcl: Boolean read GetKeepS3PutObjectAcl write SetKeepS3PutObjectAcl;
    property S3PutObjectCopy: TS3CopyObjectOperation read GetS3PutObjectCopy write SetS3PutObjectCopy;
    property KeepS3PutObjectCopy: Boolean read GetKeepS3PutObjectCopy write SetKeepS3PutObjectCopy;
    property S3PutObjectLegalHold: TS3SetObjectLegalHoldOperation read GetS3PutObjectLegalHold write SetS3PutObjectLegalHold;
    property KeepS3PutObjectLegalHold: Boolean read GetKeepS3PutObjectLegalHold write SetKeepS3PutObjectLegalHold;
    property S3PutObjectRetention: TS3SetObjectRetentionOperation read GetS3PutObjectRetention write SetS3PutObjectRetention;
    property KeepS3PutObjectRetention: Boolean read GetKeepS3PutObjectRetention write SetKeepS3PutObjectRetention;
    property S3PutObjectTagging: TS3SetObjectTaggingOperation read GetS3PutObjectTagging write SetS3PutObjectTagging;
    property KeepS3PutObjectTagging: Boolean read GetKeepS3PutObjectTagging write SetKeepS3PutObjectTagging;
  end;
  
implementation

{ TJobOperation }

destructor TJobOperation.Destroy;
begin
  S3PutObjectTagging := nil;
  S3PutObjectRetention := nil;
  S3PutObjectLegalHold := nil;
  S3PutObjectCopy := nil;
  S3PutObjectAcl := nil;
  S3InitiateRestoreObject := nil;
  S3DeleteObjectTagging := nil;
  LambdaInvoke := nil;
  inherited;
end;

function TJobOperation.Obj: TJobOperation;
begin
  Result := Self;
end;

function TJobOperation.GetLambdaInvoke: TLambdaInvokeOperation;
begin
  Result := FLambdaInvoke;
end;

procedure TJobOperation.SetLambdaInvoke(const Value: TLambdaInvokeOperation);
begin
  if FLambdaInvoke <> Value then
  begin
    if not KeepLambdaInvoke then
      FLambdaInvoke.Free;
    FLambdaInvoke := Value;
  end;
end;

function TJobOperation.GetKeepLambdaInvoke: Boolean;
begin
  Result := FKeepLambdaInvoke;
end;

procedure TJobOperation.SetKeepLambdaInvoke(const Value: Boolean);
begin
  FKeepLambdaInvoke := Value;
end;

function TJobOperation.IsSetLambdaInvoke: Boolean;
begin
  Result := FLambdaInvoke <> nil;
end;

function TJobOperation.GetS3DeleteObjectTagging: TS3DeleteObjectTaggingOperation;
begin
  Result := FS3DeleteObjectTagging;
end;

procedure TJobOperation.SetS3DeleteObjectTagging(const Value: TS3DeleteObjectTaggingOperation);
begin
  if FS3DeleteObjectTagging <> Value then
  begin
    if not KeepS3DeleteObjectTagging then
      FS3DeleteObjectTagging.Free;
    FS3DeleteObjectTagging := Value;
  end;
end;

function TJobOperation.GetKeepS3DeleteObjectTagging: Boolean;
begin
  Result := FKeepS3DeleteObjectTagging;
end;

procedure TJobOperation.SetKeepS3DeleteObjectTagging(const Value: Boolean);
begin
  FKeepS3DeleteObjectTagging := Value;
end;

function TJobOperation.IsSetS3DeleteObjectTagging: Boolean;
begin
  Result := FS3DeleteObjectTagging <> nil;
end;

function TJobOperation.GetS3InitiateRestoreObject: TS3InitiateRestoreObjectOperation;
begin
  Result := FS3InitiateRestoreObject;
end;

procedure TJobOperation.SetS3InitiateRestoreObject(const Value: TS3InitiateRestoreObjectOperation);
begin
  if FS3InitiateRestoreObject <> Value then
  begin
    if not KeepS3InitiateRestoreObject then
      FS3InitiateRestoreObject.Free;
    FS3InitiateRestoreObject := Value;
  end;
end;

function TJobOperation.GetKeepS3InitiateRestoreObject: Boolean;
begin
  Result := FKeepS3InitiateRestoreObject;
end;

procedure TJobOperation.SetKeepS3InitiateRestoreObject(const Value: Boolean);
begin
  FKeepS3InitiateRestoreObject := Value;
end;

function TJobOperation.IsSetS3InitiateRestoreObject: Boolean;
begin
  Result := FS3InitiateRestoreObject <> nil;
end;

function TJobOperation.GetS3PutObjectAcl: TS3SetObjectAclOperation;
begin
  Result := FS3PutObjectAcl;
end;

procedure TJobOperation.SetS3PutObjectAcl(const Value: TS3SetObjectAclOperation);
begin
  if FS3PutObjectAcl <> Value then
  begin
    if not KeepS3PutObjectAcl then
      FS3PutObjectAcl.Free;
    FS3PutObjectAcl := Value;
  end;
end;

function TJobOperation.GetKeepS3PutObjectAcl: Boolean;
begin
  Result := FKeepS3PutObjectAcl;
end;

procedure TJobOperation.SetKeepS3PutObjectAcl(const Value: Boolean);
begin
  FKeepS3PutObjectAcl := Value;
end;

function TJobOperation.IsSetS3PutObjectAcl: Boolean;
begin
  Result := FS3PutObjectAcl <> nil;
end;

function TJobOperation.GetS3PutObjectCopy: TS3CopyObjectOperation;
begin
  Result := FS3PutObjectCopy;
end;

procedure TJobOperation.SetS3PutObjectCopy(const Value: TS3CopyObjectOperation);
begin
  if FS3PutObjectCopy <> Value then
  begin
    if not KeepS3PutObjectCopy then
      FS3PutObjectCopy.Free;
    FS3PutObjectCopy := Value;
  end;
end;

function TJobOperation.GetKeepS3PutObjectCopy: Boolean;
begin
  Result := FKeepS3PutObjectCopy;
end;

procedure TJobOperation.SetKeepS3PutObjectCopy(const Value: Boolean);
begin
  FKeepS3PutObjectCopy := Value;
end;

function TJobOperation.IsSetS3PutObjectCopy: Boolean;
begin
  Result := FS3PutObjectCopy <> nil;
end;

function TJobOperation.GetS3PutObjectLegalHold: TS3SetObjectLegalHoldOperation;
begin
  Result := FS3PutObjectLegalHold;
end;

procedure TJobOperation.SetS3PutObjectLegalHold(const Value: TS3SetObjectLegalHoldOperation);
begin
  if FS3PutObjectLegalHold <> Value then
  begin
    if not KeepS3PutObjectLegalHold then
      FS3PutObjectLegalHold.Free;
    FS3PutObjectLegalHold := Value;
  end;
end;

function TJobOperation.GetKeepS3PutObjectLegalHold: Boolean;
begin
  Result := FKeepS3PutObjectLegalHold;
end;

procedure TJobOperation.SetKeepS3PutObjectLegalHold(const Value: Boolean);
begin
  FKeepS3PutObjectLegalHold := Value;
end;

function TJobOperation.IsSetS3PutObjectLegalHold: Boolean;
begin
  Result := FS3PutObjectLegalHold <> nil;
end;

function TJobOperation.GetS3PutObjectRetention: TS3SetObjectRetentionOperation;
begin
  Result := FS3PutObjectRetention;
end;

procedure TJobOperation.SetS3PutObjectRetention(const Value: TS3SetObjectRetentionOperation);
begin
  if FS3PutObjectRetention <> Value then
  begin
    if not KeepS3PutObjectRetention then
      FS3PutObjectRetention.Free;
    FS3PutObjectRetention := Value;
  end;
end;

function TJobOperation.GetKeepS3PutObjectRetention: Boolean;
begin
  Result := FKeepS3PutObjectRetention;
end;

procedure TJobOperation.SetKeepS3PutObjectRetention(const Value: Boolean);
begin
  FKeepS3PutObjectRetention := Value;
end;

function TJobOperation.IsSetS3PutObjectRetention: Boolean;
begin
  Result := FS3PutObjectRetention <> nil;
end;

function TJobOperation.GetS3PutObjectTagging: TS3SetObjectTaggingOperation;
begin
  Result := FS3PutObjectTagging;
end;

procedure TJobOperation.SetS3PutObjectTagging(const Value: TS3SetObjectTaggingOperation);
begin
  if FS3PutObjectTagging <> Value then
  begin
    if not KeepS3PutObjectTagging then
      FS3PutObjectTagging.Free;
    FS3PutObjectTagging := Value;
  end;
end;

function TJobOperation.GetKeepS3PutObjectTagging: Boolean;
begin
  Result := FKeepS3PutObjectTagging;
end;

procedure TJobOperation.SetKeepS3PutObjectTagging(const Value: Boolean);
begin
  FKeepS3PutObjectTagging := Value;
end;

function TJobOperation.IsSetS3PutObjectTagging: Boolean;
begin
  Result := FS3PutObjectTagging <> nil;
end;

end.
