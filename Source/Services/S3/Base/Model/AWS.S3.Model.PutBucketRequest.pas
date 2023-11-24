unit AWS.S3.Model.PutBucketRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  AWS.S3.Model.CreateBucketConfiguration;

type
  TPutBucketRequest = class;
  
  IPutBucketRequest = interface
    function GetACL: TBucketCannedACL;
    procedure SetACL(const Value: TBucketCannedACL);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
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
    function Obj: TPutBucketRequest;
    function IsSetACL: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetCreateBucketConfiguration: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWrite: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetObjectLockEnabledForBucket: Boolean;
    property ACL: TBucketCannedACL read GetACL write SetACL;
    property BucketName: string read GetBucketName write SetBucketName;
    property CreateBucketConfiguration: TCreateBucketConfiguration read GetCreateBucketConfiguration write SetCreateBucketConfiguration;
    property KeepCreateBucketConfiguration: Boolean read GetKeepCreateBucketConfiguration write SetKeepCreateBucketConfiguration;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWrite: string read GetGrantWrite write SetGrantWrite;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property ObjectLockEnabledForBucket: Boolean read GetObjectLockEnabledForBucket write SetObjectLockEnabledForBucket;
  end;
  
  TPutBucketRequest = class(TAmazonS3Request, IPutBucketRequest)
  strict private
    FACL: Nullable<TBucketCannedACL>;
    FBucketName: Nullable<string>;
    FCreateBucketConfiguration: TCreateBucketConfiguration;
    FKeepCreateBucketConfiguration: Boolean;
    FGrantFullControl: Nullable<string>;
    FGrantRead: Nullable<string>;
    FGrantReadACP: Nullable<string>;
    FGrantWrite: Nullable<string>;
    FGrantWriteACP: Nullable<string>;
    FObjectLockEnabledForBucket: Nullable<Boolean>;
    function GetACL: TBucketCannedACL;
    procedure SetACL(const Value: TBucketCannedACL);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
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
  strict protected
    function Obj: TPutBucketRequest;
  public
    destructor Destroy; override;
    function IsSetACL: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetCreateBucketConfiguration: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWrite: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetObjectLockEnabledForBucket: Boolean;
    property ACL: TBucketCannedACL read GetACL write SetACL;
    property BucketName: string read GetBucketName write SetBucketName;
    property CreateBucketConfiguration: TCreateBucketConfiguration read GetCreateBucketConfiguration write SetCreateBucketConfiguration;
    property KeepCreateBucketConfiguration: Boolean read GetKeepCreateBucketConfiguration write SetKeepCreateBucketConfiguration;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWrite: string read GetGrantWrite write SetGrantWrite;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property ObjectLockEnabledForBucket: Boolean read GetObjectLockEnabledForBucket write SetObjectLockEnabledForBucket;
  end;
  
implementation

{ TPutBucketRequest }

destructor TPutBucketRequest.Destroy;
begin
  CreateBucketConfiguration := nil;
  inherited;
end;

function TPutBucketRequest.Obj: TPutBucketRequest;
begin
  Result := Self;
end;

function TPutBucketRequest.GetACL: TBucketCannedACL;
begin
  Result := FACL.ValueOrDefault;
end;

procedure TPutBucketRequest.SetACL(const Value: TBucketCannedACL);
begin
  FACL := Value;
end;

function TPutBucketRequest.IsSetACL: Boolean;
begin
  Result := FACL.HasValue;
end;

function TPutBucketRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketRequest.GetCreateBucketConfiguration: TCreateBucketConfiguration;
begin
  Result := FCreateBucketConfiguration;
end;

procedure TPutBucketRequest.SetCreateBucketConfiguration(const Value: TCreateBucketConfiguration);
begin
  if FCreateBucketConfiguration <> Value then
  begin
    if not KeepCreateBucketConfiguration then
      FCreateBucketConfiguration.Free;
    FCreateBucketConfiguration := Value;
  end;
end;

function TPutBucketRequest.GetKeepCreateBucketConfiguration: Boolean;
begin
  Result := FKeepCreateBucketConfiguration;
end;

procedure TPutBucketRequest.SetKeepCreateBucketConfiguration(const Value: Boolean);
begin
  FKeepCreateBucketConfiguration := Value;
end;

function TPutBucketRequest.IsSetCreateBucketConfiguration: Boolean;
begin
  Result := FCreateBucketConfiguration <> nil;
end;

function TPutBucketRequest.GetGrantFullControl: string;
begin
  Result := FGrantFullControl.ValueOrDefault;
end;

procedure TPutBucketRequest.SetGrantFullControl(const Value: string);
begin
  FGrantFullControl := Value;
end;

function TPutBucketRequest.IsSetGrantFullControl: Boolean;
begin
  Result := FGrantFullControl.HasValue;
end;

function TPutBucketRequest.GetGrantRead: string;
begin
  Result := FGrantRead.ValueOrDefault;
end;

procedure TPutBucketRequest.SetGrantRead(const Value: string);
begin
  FGrantRead := Value;
end;

function TPutBucketRequest.IsSetGrantRead: Boolean;
begin
  Result := FGrantRead.HasValue;
end;

function TPutBucketRequest.GetGrantReadACP: string;
begin
  Result := FGrantReadACP.ValueOrDefault;
end;

procedure TPutBucketRequest.SetGrantReadACP(const Value: string);
begin
  FGrantReadACP := Value;
end;

function TPutBucketRequest.IsSetGrantReadACP: Boolean;
begin
  Result := FGrantReadACP.HasValue;
end;

function TPutBucketRequest.GetGrantWrite: string;
begin
  Result := FGrantWrite.ValueOrDefault;
end;

procedure TPutBucketRequest.SetGrantWrite(const Value: string);
begin
  FGrantWrite := Value;
end;

function TPutBucketRequest.IsSetGrantWrite: Boolean;
begin
  Result := FGrantWrite.HasValue;
end;

function TPutBucketRequest.GetGrantWriteACP: string;
begin
  Result := FGrantWriteACP.ValueOrDefault;
end;

procedure TPutBucketRequest.SetGrantWriteACP(const Value: string);
begin
  FGrantWriteACP := Value;
end;

function TPutBucketRequest.IsSetGrantWriteACP: Boolean;
begin
  Result := FGrantWriteACP.HasValue;
end;

function TPutBucketRequest.GetObjectLockEnabledForBucket: Boolean;
begin
  Result := FObjectLockEnabledForBucket.ValueOrDefault;
end;

procedure TPutBucketRequest.SetObjectLockEnabledForBucket(const Value: Boolean);
begin
  FObjectLockEnabledForBucket := Value;
end;

function TPutBucketRequest.IsSetObjectLockEnabledForBucket: Boolean;
begin
  Result := FObjectLockEnabledForBucket.HasValue;
end;

end.
