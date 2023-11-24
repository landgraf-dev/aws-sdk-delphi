unit AWS.S3.Model.ListBucketInventoryConfigurationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TListBucketInventoryConfigurationsRequest = class;
  
  IListBucketInventoryConfigurationsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TListBucketInventoryConfigurationsRequest;
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TListBucketInventoryConfigurationsRequest = class(TAmazonS3Request, IListBucketInventoryConfigurationsRequest)
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
    function Obj: TListBucketInventoryConfigurationsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TListBucketInventoryConfigurationsRequest }

function TListBucketInventoryConfigurationsRequest.Obj: TListBucketInventoryConfigurationsRequest;
begin
  Result := Self;
end;

function TListBucketInventoryConfigurationsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListBucketInventoryConfigurationsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListBucketInventoryConfigurationsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListBucketInventoryConfigurationsRequest.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketInventoryConfigurationsRequest.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketInventoryConfigurationsRequest.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListBucketInventoryConfigurationsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListBucketInventoryConfigurationsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListBucketInventoryConfigurationsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
