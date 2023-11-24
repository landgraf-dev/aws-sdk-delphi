unit AWS.S3.Model.DeletePublicAccessBlockRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeletePublicAccessBlockRequest = class;
  
  IDeletePublicAccessBlockRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TDeletePublicAccessBlockRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TDeletePublicAccessBlockRequest = class(TAmazonS3Request, IDeletePublicAccessBlockRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TDeletePublicAccessBlockRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TDeletePublicAccessBlockRequest }

function TDeletePublicAccessBlockRequest.Obj: TDeletePublicAccessBlockRequest;
begin
  Result := Self;
end;

function TDeletePublicAccessBlockRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeletePublicAccessBlockRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeletePublicAccessBlockRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeletePublicAccessBlockRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeletePublicAccessBlockRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeletePublicAccessBlockRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
