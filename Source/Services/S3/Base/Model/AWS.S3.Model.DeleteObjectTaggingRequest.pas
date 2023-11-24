unit AWS.S3.Model.DeleteObjectTaggingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteObjectTaggingRequest = class;
  
  IDeleteObjectTaggingRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TDeleteObjectTaggingRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TDeleteObjectTaggingRequest = class(TAmazonS3Request, IDeleteObjectTaggingRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TDeleteObjectTaggingRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TDeleteObjectTaggingRequest }

function TDeleteObjectTaggingRequest.Obj: TDeleteObjectTaggingRequest;
begin
  Result := Self;
end;

function TDeleteObjectTaggingRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteObjectTaggingRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteObjectTaggingRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteObjectTaggingRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteObjectTaggingRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteObjectTaggingRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteObjectTaggingRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TDeleteObjectTaggingRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TDeleteObjectTaggingRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TDeleteObjectTaggingRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TDeleteObjectTaggingRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TDeleteObjectTaggingRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
