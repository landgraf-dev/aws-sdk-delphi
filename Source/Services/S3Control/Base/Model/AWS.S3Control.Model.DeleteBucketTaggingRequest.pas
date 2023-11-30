unit AWS.S3Control.Model.DeleteBucketTaggingRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteBucketTaggingRequest = class;
  
  IDeleteBucketTaggingRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TDeleteBucketTaggingRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TDeleteBucketTaggingRequest = class(TAmazonS3ControlRequest, IDeleteBucketTaggingRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TDeleteBucketTaggingRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TDeleteBucketTaggingRequest }

function TDeleteBucketTaggingRequest.Obj: TDeleteBucketTaggingRequest;
begin
  Result := Self;
end;

function TDeleteBucketTaggingRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteBucketTaggingRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteBucketTaggingRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteBucketTaggingRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TDeleteBucketTaggingRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TDeleteBucketTaggingRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
