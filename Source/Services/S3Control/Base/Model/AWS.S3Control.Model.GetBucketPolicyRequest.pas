unit AWS.S3Control.Model.GetBucketPolicyRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetBucketPolicyRequest = class;
  
  IGetBucketPolicyRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TGetBucketPolicyRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TGetBucketPolicyRequest = class(TAmazonS3ControlRequest, IGetBucketPolicyRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TGetBucketPolicyRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TGetBucketPolicyRequest }

function TGetBucketPolicyRequest.Obj: TGetBucketPolicyRequest;
begin
  Result := Self;
end;

function TGetBucketPolicyRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetBucketPolicyRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetBucketPolicyRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetBucketPolicyRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TGetBucketPolicyRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TGetBucketPolicyRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
