unit AWS.S3Control.Model.DeleteBucketRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TDeleteBucketRequest = class;
  
  IDeleteBucketRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TDeleteBucketRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TDeleteBucketRequest = class(TAmazonS3ControlRequest, IDeleteBucketRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TDeleteBucketRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TDeleteBucketRequest }

function TDeleteBucketRequest.Obj: TDeleteBucketRequest;
begin
  Result := Self;
end;

function TDeleteBucketRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteBucketRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteBucketRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteBucketRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TDeleteBucketRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TDeleteBucketRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
