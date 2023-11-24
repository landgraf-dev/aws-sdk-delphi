unit AWS.S3.Model.GetBucketAnalyticsConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TGetBucketAnalyticsConfigurationRequest = class;
  
  IGetBucketAnalyticsConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TGetBucketAnalyticsConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TGetBucketAnalyticsConfigurationRequest = class(TAmazonS3Request, IGetBucketAnalyticsConfigurationRequest)
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
    function Obj: TGetBucketAnalyticsConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TGetBucketAnalyticsConfigurationRequest }

function TGetBucketAnalyticsConfigurationRequest.Obj: TGetBucketAnalyticsConfigurationRequest;
begin
  Result := Self;
end;

function TGetBucketAnalyticsConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetBucketAnalyticsConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetBucketAnalyticsConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetBucketAnalyticsConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetBucketAnalyticsConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetBucketAnalyticsConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetBucketAnalyticsConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TGetBucketAnalyticsConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TGetBucketAnalyticsConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
