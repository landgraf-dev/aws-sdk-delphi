unit AWS.S3.Model.GetACLRequest;

interface

uses
  AWS.S3.Model.Request, 
  AWS.Nullable;

type
  TGetACLRequest = class;
  
  IGetACLRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TGetACLRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TGetACLRequest = class(TAmazonS3Request, IGetACLRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TGetACLRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TGetACLRequest }

function TGetACLRequest.Obj: TGetACLRequest;
begin
  Result := Self;
end;

function TGetACLRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetACLRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetACLRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetACLRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetACLRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetACLRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
