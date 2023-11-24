unit AWS.S3.Model.PutBucketPolicyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TPutBucketPolicyRequest = class;
  
  IPutBucketPolicyRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetConfirmRemoveSelfBucketAccess: Boolean;
    procedure SetConfirmRemoveSelfBucketAccess(const Value: Boolean);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TPutBucketPolicyRequest;
    function IsSetBucketName: Boolean;
    function IsSetConfirmRemoveSelfBucketAccess: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetPolicy: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ConfirmRemoveSelfBucketAccess: Boolean read GetConfirmRemoveSelfBucketAccess write SetConfirmRemoveSelfBucketAccess;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TPutBucketPolicyRequest = class(TAmazonS3Request, IPutBucketPolicyRequest)
  strict private
    FBucketName: Nullable<string>;
    FConfirmRemoveSelfBucketAccess: Nullable<Boolean>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FPolicy: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetConfirmRemoveSelfBucketAccess: Boolean;
    procedure SetConfirmRemoveSelfBucketAccess(const Value: Boolean);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TPutBucketPolicyRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetConfirmRemoveSelfBucketAccess: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetPolicy: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ConfirmRemoveSelfBucketAccess: Boolean read GetConfirmRemoveSelfBucketAccess write SetConfirmRemoveSelfBucketAccess;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TPutBucketPolicyRequest }

function TPutBucketPolicyRequest.Obj: TPutBucketPolicyRequest;
begin
  Result := Self;
end;

function TPutBucketPolicyRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketPolicyRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketPolicyRequest.GetConfirmRemoveSelfBucketAccess: Boolean;
begin
  Result := FConfirmRemoveSelfBucketAccess.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetConfirmRemoveSelfBucketAccess(const Value: Boolean);
begin
  FConfirmRemoveSelfBucketAccess := Value;
end;

function TPutBucketPolicyRequest.IsSetConfirmRemoveSelfBucketAccess: Boolean;
begin
  Result := FConfirmRemoveSelfBucketAccess.HasValue;
end;

function TPutBucketPolicyRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketPolicyRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketPolicyRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketPolicyRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketPolicyRequest.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TPutBucketPolicyRequest.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

end.
