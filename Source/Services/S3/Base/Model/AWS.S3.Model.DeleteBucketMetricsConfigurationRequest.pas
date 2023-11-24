unit AWS.S3.Model.DeleteBucketMetricsConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteBucketMetricsConfigurationRequest = class;
  
  IDeleteBucketMetricsConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TDeleteBucketMetricsConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TDeleteBucketMetricsConfigurationRequest = class(TAmazonS3Request, IDeleteBucketMetricsConfigurationRequest)
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
    function Obj: TDeleteBucketMetricsConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TDeleteBucketMetricsConfigurationRequest }

function TDeleteBucketMetricsConfigurationRequest.Obj: TDeleteBucketMetricsConfigurationRequest;
begin
  Result := Self;
end;

function TDeleteBucketMetricsConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteBucketMetricsConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteBucketMetricsConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteBucketMetricsConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteBucketMetricsConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteBucketMetricsConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteBucketMetricsConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TDeleteBucketMetricsConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TDeleteBucketMetricsConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
