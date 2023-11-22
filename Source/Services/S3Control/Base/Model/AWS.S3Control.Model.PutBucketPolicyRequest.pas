unit AWS.S3Control.Model.PutBucketPolicyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TPutBucketPolicyRequest = class;
  
  IPutBucketPolicyRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetConfirmRemoveSelfBucketAccess: Boolean;
    procedure SetConfirmRemoveSelfBucketAccess(const Value: Boolean);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function Obj: TPutBucketPolicyRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetConfirmRemoveSelfBucketAccess: Boolean;
    function IsSetPolicy: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property ConfirmRemoveSelfBucketAccess: Boolean read GetConfirmRemoveSelfBucketAccess write SetConfirmRemoveSelfBucketAccess;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
  TPutBucketPolicyRequest = class(TAmazonS3ControlRequest, IPutBucketPolicyRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    FConfirmRemoveSelfBucketAccess: Nullable<Boolean>;
    FPolicy: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetConfirmRemoveSelfBucketAccess: Boolean;
    procedure SetConfirmRemoveSelfBucketAccess(const Value: Boolean);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
  strict protected
    function Obj: TPutBucketPolicyRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetConfirmRemoveSelfBucketAccess: Boolean;
    function IsSetPolicy: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property ConfirmRemoveSelfBucketAccess: Boolean read GetConfirmRemoveSelfBucketAccess write SetConfirmRemoveSelfBucketAccess;
    property Policy: string read GetPolicy write SetPolicy;
  end;
  
implementation

{ TPutBucketPolicyRequest }

function TPutBucketPolicyRequest.Obj: TPutBucketPolicyRequest;
begin
  Result := Self;
end;

function TPutBucketPolicyRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutBucketPolicyRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutBucketPolicyRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TPutBucketPolicyRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TPutBucketPolicyRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
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
