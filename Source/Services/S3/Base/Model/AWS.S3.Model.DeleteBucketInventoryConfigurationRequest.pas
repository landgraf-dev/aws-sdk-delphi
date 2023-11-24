unit AWS.S3.Model.DeleteBucketInventoryConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteBucketInventoryConfigurationRequest = class;
  
  IDeleteBucketInventoryConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TDeleteBucketInventoryConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TDeleteBucketInventoryConfigurationRequest = class(TAmazonS3Request, IDeleteBucketInventoryConfigurationRequest)
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
    function Obj: TDeleteBucketInventoryConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TDeleteBucketInventoryConfigurationRequest }

function TDeleteBucketInventoryConfigurationRequest.Obj: TDeleteBucketInventoryConfigurationRequest;
begin
  Result := Self;
end;

function TDeleteBucketInventoryConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteBucketInventoryConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteBucketInventoryConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteBucketInventoryConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteBucketInventoryConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteBucketInventoryConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteBucketInventoryConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TDeleteBucketInventoryConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TDeleteBucketInventoryConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
