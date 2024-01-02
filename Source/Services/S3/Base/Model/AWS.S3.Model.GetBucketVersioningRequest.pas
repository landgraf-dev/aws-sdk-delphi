unit AWS.S3.Model.GetBucketVersioningRequest;

interface

uses
  AWS.S3.Model.Request, 
  AWS.Nullable;

type
  TGetBucketVersioningRequest = class;
  
  IGetBucketVersioningRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TGetBucketVersioningRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TGetBucketVersioningRequest = class(TAmazonS3Request, IGetBucketVersioningRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TGetBucketVersioningRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TGetBucketVersioningRequest }

function TGetBucketVersioningRequest.Obj: TGetBucketVersioningRequest;
begin
  Result := Self;
end;

function TGetBucketVersioningRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetBucketVersioningRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetBucketVersioningRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetBucketVersioningRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetBucketVersioningRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetBucketVersioningRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
