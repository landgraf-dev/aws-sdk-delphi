unit AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Model.LifecycleConfiguration;

type
  TPutBucketLifecycleConfigurationRequest = class;
  
  IPutBucketLifecycleConfigurationRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetLifecycleConfiguration: TLifecycleConfiguration;
    procedure SetLifecycleConfiguration(const Value: TLifecycleConfiguration);
    function GetKeepLifecycleConfiguration: Boolean;
    procedure SetKeepLifecycleConfiguration(const Value: Boolean);
    function Obj: TPutBucketLifecycleConfigurationRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetLifecycleConfiguration: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property LifecycleConfiguration: TLifecycleConfiguration read GetLifecycleConfiguration write SetLifecycleConfiguration;
    property KeepLifecycleConfiguration: Boolean read GetKeepLifecycleConfiguration write SetKeepLifecycleConfiguration;
  end;
  
  TPutBucketLifecycleConfigurationRequest = class(TAmazonS3ControlRequest, IPutBucketLifecycleConfigurationRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    FLifecycleConfiguration: TLifecycleConfiguration;
    FKeepLifecycleConfiguration: Boolean;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetLifecycleConfiguration: TLifecycleConfiguration;
    procedure SetLifecycleConfiguration(const Value: TLifecycleConfiguration);
    function GetKeepLifecycleConfiguration: Boolean;
    procedure SetKeepLifecycleConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketLifecycleConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetLifecycleConfiguration: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property LifecycleConfiguration: TLifecycleConfiguration read GetLifecycleConfiguration write SetLifecycleConfiguration;
    property KeepLifecycleConfiguration: Boolean read GetKeepLifecycleConfiguration write SetKeepLifecycleConfiguration;
  end;
  
implementation

{ TPutBucketLifecycleConfigurationRequest }

destructor TPutBucketLifecycleConfigurationRequest.Destroy;
begin
  LifecycleConfiguration := nil;
  inherited;
end;

function TPutBucketLifecycleConfigurationRequest.Obj: TPutBucketLifecycleConfigurationRequest;
begin
  Result := Self;
end;

function TPutBucketLifecycleConfigurationRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TPutBucketLifecycleConfigurationRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TPutBucketLifecycleConfigurationRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TPutBucketLifecycleConfigurationRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TPutBucketLifecycleConfigurationRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TPutBucketLifecycleConfigurationRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TPutBucketLifecycleConfigurationRequest.GetLifecycleConfiguration: TLifecycleConfiguration;
begin
  Result := FLifecycleConfiguration;
end;

procedure TPutBucketLifecycleConfigurationRequest.SetLifecycleConfiguration(const Value: TLifecycleConfiguration);
begin
  if FLifecycleConfiguration <> Value then
  begin
    if not KeepLifecycleConfiguration then
      FLifecycleConfiguration.Free;
    FLifecycleConfiguration := Value;
  end;
end;

function TPutBucketLifecycleConfigurationRequest.GetKeepLifecycleConfiguration: Boolean;
begin
  Result := FKeepLifecycleConfiguration;
end;

procedure TPutBucketLifecycleConfigurationRequest.SetKeepLifecycleConfiguration(const Value: Boolean);
begin
  FKeepLifecycleConfiguration := Value;
end;

function TPutBucketLifecycleConfigurationRequest.IsSetLifecycleConfiguration: Boolean;
begin
  Result := FLifecycleConfiguration <> nil;
end;

end.
