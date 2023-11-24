unit AWS.S3.Model.PutACLRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  AWS.S3.Model.AccessControlPolicy;

type
  TPutACLRequest = class;
  
  IPutACLRequest = interface
    function GetACL: TBucketCannedACL;
    procedure SetACL(const Value: TBucketCannedACL);
    function GetAccessControlPolicy: TAccessControlPolicy;
    procedure SetAccessControlPolicy(const Value: TAccessControlPolicy);
    function GetKeepAccessControlPolicy: Boolean;
    procedure SetKeepAccessControlPolicy(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
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
    function Obj: TPutACLRequest;
    function IsSetACL: Boolean;
    function IsSetAccessControlPolicy: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWrite: Boolean;
    function IsSetGrantWriteACP: Boolean;
    property ACL: TBucketCannedACL read GetACL write SetACL;
    property AccessControlPolicy: TAccessControlPolicy read GetAccessControlPolicy write SetAccessControlPolicy;
    property KeepAccessControlPolicy: Boolean read GetKeepAccessControlPolicy write SetKeepAccessControlPolicy;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWrite: string read GetGrantWrite write SetGrantWrite;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
  end;
  
  TPutACLRequest = class(TAmazonS3Request, IPutACLRequest)
  strict private
    FACL: Nullable<TBucketCannedACL>;
    FAccessControlPolicy: TAccessControlPolicy;
    FKeepAccessControlPolicy: Boolean;
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FGrantFullControl: Nullable<string>;
    FGrantRead: Nullable<string>;
    FGrantReadACP: Nullable<string>;
    FGrantWrite: Nullable<string>;
    FGrantWriteACP: Nullable<string>;
    function GetACL: TBucketCannedACL;
    procedure SetACL(const Value: TBucketCannedACL);
    function GetAccessControlPolicy: TAccessControlPolicy;
    procedure SetAccessControlPolicy(const Value: TAccessControlPolicy);
    function GetKeepAccessControlPolicy: Boolean;
    procedure SetKeepAccessControlPolicy(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
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
  strict protected
    function Obj: TPutACLRequest;
  public
    destructor Destroy; override;
    function IsSetACL: Boolean;
    function IsSetAccessControlPolicy: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWrite: Boolean;
    function IsSetGrantWriteACP: Boolean;
    property ACL: TBucketCannedACL read GetACL write SetACL;
    property AccessControlPolicy: TAccessControlPolicy read GetAccessControlPolicy write SetAccessControlPolicy;
    property KeepAccessControlPolicy: Boolean read GetKeepAccessControlPolicy write SetKeepAccessControlPolicy;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWrite: string read GetGrantWrite write SetGrantWrite;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
  end;
  
implementation

{ TPutACLRequest }

destructor TPutACLRequest.Destroy;
begin
  AccessControlPolicy := nil;
  inherited;
end;

function TPutACLRequest.Obj: TPutACLRequest;
begin
  Result := Self;
end;

function TPutACLRequest.GetACL: TBucketCannedACL;
begin
  Result := FACL.ValueOrDefault;
end;

procedure TPutACLRequest.SetACL(const Value: TBucketCannedACL);
begin
  FACL := Value;
end;

function TPutACLRequest.IsSetACL: Boolean;
begin
  Result := FACL.HasValue;
end;

function TPutACLRequest.GetAccessControlPolicy: TAccessControlPolicy;
begin
  Result := FAccessControlPolicy;
end;

procedure TPutACLRequest.SetAccessControlPolicy(const Value: TAccessControlPolicy);
begin
  if FAccessControlPolicy <> Value then
  begin
    if not KeepAccessControlPolicy then
      FAccessControlPolicy.Free;
    FAccessControlPolicy := Value;
  end;
end;

function TPutACLRequest.GetKeepAccessControlPolicy: Boolean;
begin
  Result := FKeepAccessControlPolicy;
end;

procedure TPutACLRequest.SetKeepAccessControlPolicy(const Value: Boolean);
begin
  FKeepAccessControlPolicy := Value;
end;

function TPutACLRequest.IsSetAccessControlPolicy: Boolean;
begin
  Result := FAccessControlPolicy <> nil;
end;

function TPutACLRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutACLRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutACLRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutACLRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutACLRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutACLRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutACLRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutACLRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutACLRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutACLRequest.GetGrantFullControl: string;
begin
  Result := FGrantFullControl.ValueOrDefault;
end;

procedure TPutACLRequest.SetGrantFullControl(const Value: string);
begin
  FGrantFullControl := Value;
end;

function TPutACLRequest.IsSetGrantFullControl: Boolean;
begin
  Result := FGrantFullControl.HasValue;
end;

function TPutACLRequest.GetGrantRead: string;
begin
  Result := FGrantRead.ValueOrDefault;
end;

procedure TPutACLRequest.SetGrantRead(const Value: string);
begin
  FGrantRead := Value;
end;

function TPutACLRequest.IsSetGrantRead: Boolean;
begin
  Result := FGrantRead.HasValue;
end;

function TPutACLRequest.GetGrantReadACP: string;
begin
  Result := FGrantReadACP.ValueOrDefault;
end;

procedure TPutACLRequest.SetGrantReadACP(const Value: string);
begin
  FGrantReadACP := Value;
end;

function TPutACLRequest.IsSetGrantReadACP: Boolean;
begin
  Result := FGrantReadACP.HasValue;
end;

function TPutACLRequest.GetGrantWrite: string;
begin
  Result := FGrantWrite.ValueOrDefault;
end;

procedure TPutACLRequest.SetGrantWrite(const Value: string);
begin
  FGrantWrite := Value;
end;

function TPutACLRequest.IsSetGrantWrite: Boolean;
begin
  Result := FGrantWrite.HasValue;
end;

function TPutACLRequest.GetGrantWriteACP: string;
begin
  Result := FGrantWriteACP.ValueOrDefault;
end;

procedure TPutACLRequest.SetGrantWriteACP(const Value: string);
begin
  FGrantWriteACP := Value;
end;

function TPutACLRequest.IsSetGrantWriteACP: Boolean;
begin
  Result := FGrantWriteACP.HasValue;
end;

end.
