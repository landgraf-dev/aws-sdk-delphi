unit AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TGetBucketLifecycleConfigurationRequest = class;
  
  IGetBucketLifecycleConfigurationRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function Obj: TGetBucketLifecycleConfigurationRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
  TGetBucketLifecycleConfigurationRequest = class(TAmazonS3ControlRequest, IGetBucketLifecycleConfigurationRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
  strict protected
    function Obj: TGetBucketLifecycleConfigurationRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
  end;
  
implementation

{ TGetBucketLifecycleConfigurationRequest }

function TGetBucketLifecycleConfigurationRequest.Obj: TGetBucketLifecycleConfigurationRequest;
begin
  Result := Self;
end;

function TGetBucketLifecycleConfigurationRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TGetBucketLifecycleConfigurationRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TGetBucketLifecycleConfigurationRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TGetBucketLifecycleConfigurationRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TGetBucketLifecycleConfigurationRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TGetBucketLifecycleConfigurationRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

end.
