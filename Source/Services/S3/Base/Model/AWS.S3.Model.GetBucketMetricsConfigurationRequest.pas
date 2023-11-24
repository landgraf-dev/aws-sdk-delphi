unit AWS.S3.Model.GetBucketMetricsConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TGetBucketMetricsConfigurationRequest = class;
  
  IGetBucketMetricsConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TGetBucketMetricsConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TGetBucketMetricsConfigurationRequest = class(TAmazonS3Request, IGetBucketMetricsConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TGetBucketMetricsConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TGetBucketMetricsConfigurationRequest }

function TGetBucketMetricsConfigurationRequest.Obj: TGetBucketMetricsConfigurationRequest;
begin
  Result := Self;
end;

function TGetBucketMetricsConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetBucketMetricsConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetBucketMetricsConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetBucketMetricsConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetBucketMetricsConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetBucketMetricsConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetBucketMetricsConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TGetBucketMetricsConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TGetBucketMetricsConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
