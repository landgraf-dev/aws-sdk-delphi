unit AWS.S3Control.Model.GetBucketRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.Request;

type
  TGetBucketRequest = class;
  
  IGetBucketRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TGetBucketRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TGetBucketRequest = class(TAmazonS3ControlRequest, IGetBucketRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TGetBucketRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TGetBucketRequest }

function TGetBucketRequest.Obj: TGetBucketRequest;
begin
  Result := Self;
end;

function TGetBucketRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetBucketRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetBucketRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetBucketRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TGetBucketRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TGetBucketRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
