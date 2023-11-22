unit AWS.S3Control.Model.DeleteBucketPolicyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TDeleteBucketPolicyRequest = class;
  
  IDeleteBucketPolicyRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TDeleteBucketPolicyRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TDeleteBucketPolicyRequest = class(TAmazonS3ControlRequest, IDeleteBucketPolicyRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TDeleteBucketPolicyRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TDeleteBucketPolicyRequest }

function TDeleteBucketPolicyRequest.Obj: TDeleteBucketPolicyRequest;
begin
  Result := Self;
end;

function TDeleteBucketPolicyRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteBucketPolicyRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteBucketPolicyRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteBucketPolicyRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TDeleteBucketPolicyRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TDeleteBucketPolicyRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
