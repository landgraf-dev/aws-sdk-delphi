unit AWS.S3.Model.HeadBucketRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  THeadBucketRequest = class;
  
  IHeadBucketRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: THeadBucketRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  THeadBucketRequest = class(TAmazonS3Request, IHeadBucketRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: THeadBucketRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ THeadBucketRequest }

function THeadBucketRequest.Obj: THeadBucketRequest;
begin
  Result := Self;
end;

function THeadBucketRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure THeadBucketRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function THeadBucketRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function THeadBucketRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure THeadBucketRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function THeadBucketRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
