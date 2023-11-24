unit AWS.S3.Model.ListBucketMetricsConfigurationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TListBucketMetricsConfigurationsRequest = class;
  
  IListBucketMetricsConfigurationsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TListBucketMetricsConfigurationsRequest;
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TListBucketMetricsConfigurationsRequest = class(TAmazonS3Request, IListBucketMetricsConfigurationsRequest)
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
    function Obj: TListBucketMetricsConfigurationsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TListBucketMetricsConfigurationsRequest }

function TListBucketMetricsConfigurationsRequest.Obj: TListBucketMetricsConfigurationsRequest;
begin
  Result := Self;
end;

function TListBucketMetricsConfigurationsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListBucketMetricsConfigurationsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListBucketMetricsConfigurationsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListBucketMetricsConfigurationsRequest.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketMetricsConfigurationsRequest.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketMetricsConfigurationsRequest.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketMetricsConfigurationsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListBucketMetricsConfigurationsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListBucketMetricsConfigurationsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
