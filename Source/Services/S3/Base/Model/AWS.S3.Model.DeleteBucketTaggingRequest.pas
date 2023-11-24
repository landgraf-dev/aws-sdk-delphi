unit AWS.S3.Model.DeleteBucketTaggingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteBucketTaggingRequest = class;
  
  IDeleteBucketTaggingRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TDeleteBucketTaggingRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TDeleteBucketTaggingRequest = class(TAmazonS3Request, IDeleteBucketTaggingRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TDeleteBucketTaggingRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TDeleteBucketTaggingRequest }

function TDeleteBucketTaggingRequest.Obj: TDeleteBucketTaggingRequest;
begin
  Result := Self;
end;

function TDeleteBucketTaggingRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteBucketTaggingRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteBucketTaggingRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteBucketTaggingRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteBucketTaggingRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteBucketTaggingRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
