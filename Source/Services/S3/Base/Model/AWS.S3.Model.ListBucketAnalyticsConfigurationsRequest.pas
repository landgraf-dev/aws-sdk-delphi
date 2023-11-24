unit AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TListBucketAnalyticsConfigurationsRequest = class;
  
  IListBucketAnalyticsConfigurationsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TListBucketAnalyticsConfigurationsRequest;
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TListBucketAnalyticsConfigurationsRequest = class(TAmazonS3Request, IListBucketAnalyticsConfigurationsRequest)
  strict private
    FBucketName: Nullable<string>;
    FContinuationToken: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TListBucketAnalyticsConfigurationsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TListBucketAnalyticsConfigurationsRequest }

function TListBucketAnalyticsConfigurationsRequest.Obj: TListBucketAnalyticsConfigurationsRequest;
begin
  Result := Self;
end;

function TListBucketAnalyticsConfigurationsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListBucketAnalyticsConfigurationsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListBucketAnalyticsConfigurationsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListBucketAnalyticsConfigurationsRequest.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketAnalyticsConfigurationsRequest.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketAnalyticsConfigurationsRequest.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketAnalyticsConfigurationsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListBucketAnalyticsConfigurationsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListBucketAnalyticsConfigurationsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
