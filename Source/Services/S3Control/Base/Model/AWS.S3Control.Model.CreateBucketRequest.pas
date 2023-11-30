unit AWS.S3Control.Model.CreateBucketRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Enums, 
  AWS.S3Control.Model.CreateBucketConfiguration;

type
  TCreateBucketRequest = class;
  
  ICreateBucketRequest = interface
    function GetACL: TBucketCannedACL;
    procedure SetACL(const Value: TBucketCannedACL);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetCreateBucketConfiguration: TCreateBucketConfiguration;
    procedure SetCreateBucketConfiguration(const Value: TCreateBucketConfiguration);
    function GetKeepCreateBucketConfiguration: Boolean;
    procedure SetKeepCreateBucketConfiguration(const Value: Boolean);
    function GetGrantFullControl: string;
    procedure SetGrantFullControl(const Value: string);
    function GetGrantRead: string;
    procedure SetGrantRead(const Value: string);
    function GetGrantReadACP: string;
    procedure SetGrantReadACP(const Value: string);
    function GetGrantWrite: string;
    procedure SetGrantWrite(const Value: string);
    function GetGrantWriteACP: string;
    procedure SetGrantWriteACP(const Value: string);
    function GetObjectLockEnabledForBucket: Boolean;
    procedure SetObjectLockEnabledForBucket(const Value: Boolean);
    function GetOutpostId: string;
    procedure SetOutpostId(const Value: string);
    function Obj: TCreateBucketRequest;
    function IsSetACL: Boolean;
    function IsSetBucket: Boolean;
    function IsSetCreateBucketConfiguration: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWrite: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetObjectLockEnabledForBucket: Boolean;
    function IsSetOutpostId: Boolean;
    property ACL: TBucketCannedACL read GetACL write SetACL;
    property Bucket: string read GetBucket write SetBucket;
    property CreateBucketConfiguration: TCreateBucketConfiguration read GetCreateBucketConfiguration write SetCreateBucketConfiguration;
    property KeepCreateBucketConfiguration: Boolean read GetKeepCreateBucketConfiguration write SetKeepCreateBucketConfiguration;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWrite: string read GetGrantWrite write SetGrantWrite;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property ObjectLockEnabledForBucket: Boolean read GetObjectLockEnabledForBucket write SetObjectLockEnabledForBucket;
    property OutpostId: string read GetOutpostId write SetOutpostId;
  end;
  
  TCreateBucketRequest = class(TAmazonS3ControlRequest, ICreateBucketRequest)
  strict private
    FACL: Nullable<TBucketCannedACL>;
    FBucket: Nullable<string>;
    FCreateBucketConfiguration: TCreateBucketConfiguration;
    FKeepCreateBucketConfiguration: Boolean;
    FGrantFullControl: Nullable<string>;
    FGrantRead: Nullable<string>;
    FGrantReadACP: Nullable<string>;
    FGrantWrite: Nullable<string>;
    FGrantWriteACP: Nullable<string>;
    FObjectLockEnabledForBucket: Nullable<Boolean>;
    FOutpostId: Nullable<string>;
    function GetACL: TBucketCannedACL;
    procedure SetACL(const Value: TBucketCannedACL);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetCreateBucketConfiguration: TCreateBucketConfiguration;
    procedure SetCreateBucketConfiguration(const Value: TCreateBucketConfiguration);
    function GetKeepCreateBucketConfiguration: Boolean;
    procedure SetKeepCreateBucketConfiguration(const Value: Boolean);
    function GetGrantFullControl: string;
    procedure SetGrantFullControl(const Value: string);
    function GetGrantRead: string;
    procedure SetGrantRead(const Value: string);
    function GetGrantReadACP: string;
    procedure SetGrantReadACP(const Value: string);
    function GetGrantWrite: string;
    procedure SetGrantWrite(const Value: string);
    function GetGrantWriteACP: string;
    procedure SetGrantWriteACP(const Value: string);
    function GetObjectLockEnabledForBucket: Boolean;
    procedure SetObjectLockEnabledForBucket(const Value: Boolean);
    function GetOutpostId: string;
    procedure SetOutpostId(const Value: string);
  strict protected
    function Obj: TCreateBucketRequest;
  public
    destructor Destroy; override;
    function IsSetACL: Boolean;
    function IsSetBucket: Boolean;
    function IsSetCreateBucketConfiguration: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWrite: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetObjectLockEnabledForBucket: Boolean;
    function IsSetOutpostId: Boolean;
    property ACL: TBucketCannedACL read GetACL write SetACL;
    property Bucket: string read GetBucket write SetBucket;
    property CreateBucketConfiguration: TCreateBucketConfiguration read GetCreateBucketConfiguration write SetCreateBucketConfiguration;
    property KeepCreateBucketConfiguration: Boolean read GetKeepCreateBucketConfiguration write SetKeepCreateBucketConfiguration;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWrite: string read GetGrantWrite write SetGrantWrite;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property ObjectLockEnabledForBucket: Boolean read GetObjectLockEnabledForBucket write SetObjectLockEnabledForBucket;
    property OutpostId: string read GetOutpostId write SetOutpostId;
  end;
  
implementation

{ TCreateBucketRequest }

destructor TCreateBucketRequest.Destroy;
begin
  CreateBucketConfiguration := nil;
  inherited;
end;

function TCreateBucketRequest.Obj: TCreateBucketRequest;
begin
  Result := Self;
end;

function TCreateBucketRequest.GetACL: TBucketCannedACL;
begin
  Result := FACL.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetACL(const Value: TBucketCannedACL);
begin
  FACL := Value;
end;

function TCreateBucketRequest.IsSetACL: Boolean;
begin
  Result := FACL.HasValue;
end;

function TCreateBucketRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TCreateBucketRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TCreateBucketRequest.GetCreateBucketConfiguration: TCreateBucketConfiguration;
begin
  Result := FCreateBucketConfiguration;
end;

procedure TCreateBucketRequest.SetCreateBucketConfiguration(const Value: TCreateBucketConfiguration);
begin
  if FCreateBucketConfiguration <> Value then
  begin
    if not KeepCreateBucketConfiguration then
      FCreateBucketConfiguration.Free;
    FCreateBucketConfiguration := Value;
  end;
end;

function TCreateBucketRequest.GetKeepCreateBucketConfiguration: Boolean;
begin
  Result := FKeepCreateBucketConfiguration;
end;

procedure TCreateBucketRequest.SetKeepCreateBucketConfiguration(const Value: Boolean);
begin
  FKeepCreateBucketConfiguration := Value;
end;

function TCreateBucketRequest.IsSetCreateBucketConfiguration: Boolean;
begin
  Result := FCreateBucketConfiguration <> nil;
end;

function TCreateBucketRequest.GetGrantFullControl: string;
begin
  Result := FGrantFullControl.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetGrantFullControl(const Value: string);
begin
  FGrantFullControl := Value;
end;

function TCreateBucketRequest.IsSetGrantFullControl: Boolean;
begin
  Result := FGrantFullControl.HasValue;
end;

function TCreateBucketRequest.GetGrantRead: string;
begin
  Result := FGrantRead.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetGrantRead(const Value: string);
begin
  FGrantRead := Value;
end;

function TCreateBucketRequest.IsSetGrantRead: Boolean;
begin
  Result := FGrantRead.HasValue;
end;

function TCreateBucketRequest.GetGrantReadACP: string;
begin
  Result := FGrantReadACP.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetGrantReadACP(const Value: string);
begin
  FGrantReadACP := Value;
end;

function TCreateBucketRequest.IsSetGrantReadACP: Boolean;
begin
  Result := FGrantReadACP.HasValue;
end;

function TCreateBucketRequest.GetGrantWrite: string;
begin
  Result := FGrantWrite.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetGrantWrite(const Value: string);
begin
  FGrantWrite := Value;
end;

function TCreateBucketRequest.IsSetGrantWrite: Boolean;
begin
  Result := FGrantWrite.HasValue;
end;

function TCreateBucketRequest.GetGrantWriteACP: string;
begin
  Result := FGrantWriteACP.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetGrantWriteACP(const Value: string);
begin
  FGrantWriteACP := Value;
end;

function TCreateBucketRequest.IsSetGrantWriteACP: Boolean;
begin
  Result := FGrantWriteACP.HasValue;
end;

function TCreateBucketRequest.GetObjectLockEnabledForBucket: Boolean;
begin
  Result := FObjectLockEnabledForBucket.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetObjectLockEnabledForBucket(const Value: Boolean);
begin
  FObjectLockEnabledForBucket := Value;
end;

function TCreateBucketRequest.IsSetObjectLockEnabledForBucket: Boolean;
begin
  Result := FObjectLockEnabledForBucket.HasValue;
end;

function TCreateBucketRequest.GetOutpostId: string;
begin
  Result := FOutpostId.ValueOrDefault;
end;

procedure TCreateBucketRequest.SetOutpostId(const Value: string);
begin
  FOutpostId := Value;
end;

function TCreateBucketRequest.IsSetOutpostId: Boolean;
begin
  Result := FOutpostId.HasValue;
end;

end.
