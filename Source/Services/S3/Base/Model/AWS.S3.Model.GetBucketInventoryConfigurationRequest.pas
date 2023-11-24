unit AWS.S3.Model.GetBucketInventoryConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TGetBucketInventoryConfigurationRequest = class;
  
  IGetBucketInventoryConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TGetBucketInventoryConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TGetBucketInventoryConfigurationRequest = class(TAmazonS3Request, IGetBucketInventoryConfigurationRequest)
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
    function Obj: TGetBucketInventoryConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TGetBucketInventoryConfigurationRequest }

function TGetBucketInventoryConfigurationRequest.Obj: TGetBucketInventoryConfigurationRequest;
begin
  Result := Self;
end;

function TGetBucketInventoryConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetBucketInventoryConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetBucketInventoryConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetBucketInventoryConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetBucketInventoryConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetBucketInventoryConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetBucketInventoryConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TGetBucketInventoryConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TGetBucketInventoryConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
