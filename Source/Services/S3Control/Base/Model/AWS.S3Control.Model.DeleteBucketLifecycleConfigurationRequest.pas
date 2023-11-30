unit AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TDeleteBucketLifecycleConfigurationRequest = class;
  
  IDeleteBucketLifecycleConfigurationRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TDeleteBucketLifecycleConfigurationRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TDeleteBucketLifecycleConfigurationRequest = class(TAmazonS3ControlRequest, IDeleteBucketLifecycleConfigurationRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TDeleteBucketLifecycleConfigurationRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TDeleteBucketLifecycleConfigurationRequest }

function TDeleteBucketLifecycleConfigurationRequest.Obj: TDeleteBucketLifecycleConfigurationRequest;
begin
  Result := Self;
end;

function TDeleteBucketLifecycleConfigurationRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TDeleteBucketLifecycleConfigurationRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TDeleteBucketLifecycleConfigurationRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TDeleteBucketLifecycleConfigurationRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TDeleteBucketLifecycleConfigurationRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TDeleteBucketLifecycleConfigurationRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
