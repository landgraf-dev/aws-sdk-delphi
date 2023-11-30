unit AWS.S3Control.Model.GetBucketTaggingRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetBucketTaggingRequest = class;
  
  IGetBucketTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TGetBucketTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TGetBucketTaggingRequest = class(TAmazonS3ControlRequest, IGetBucketTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TGetBucketTaggingRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TGetBucketTaggingRequest }

function TGetBucketTaggingRequest.Obj: TGetBucketTaggingRequest;
begin
  Result := Self;
end;

function TGetBucketTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetBucketTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetBucketTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetBucketTaggingRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TGetBucketTaggingRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TGetBucketTaggingRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
