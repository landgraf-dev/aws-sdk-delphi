unit AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteBucketAnalyticsConfigurationRequest = class;
  
  IDeleteBucketAnalyticsConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TDeleteBucketAnalyticsConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TDeleteBucketAnalyticsConfigurationRequest = class(TAmazonS3Request, IDeleteBucketAnalyticsConfigurationRequest)
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
    function Obj: TDeleteBucketAnalyticsConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TDeleteBucketAnalyticsConfigurationRequest }

function TDeleteBucketAnalyticsConfigurationRequest.Obj: TDeleteBucketAnalyticsConfigurationRequest;
begin
  Result := Self;
end;

function TDeleteBucketAnalyticsConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteBucketAnalyticsConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteBucketAnalyticsConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteBucketAnalyticsConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteBucketAnalyticsConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteBucketAnalyticsConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteBucketAnalyticsConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TDeleteBucketAnalyticsConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TDeleteBucketAnalyticsConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
