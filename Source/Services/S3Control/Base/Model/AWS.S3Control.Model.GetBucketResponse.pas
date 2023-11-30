unit AWS.S3Control.Model.GetBucketResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetBucketResponse = class;
  
  IGetBucketResponse = interface(IAmazonWebServiceResponse)
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetPublicAccessBlockEnabled: Boolean;
    procedure SetPublicAccessBlockEnabled(const Value: Boolean);
    function Obj: TGetBucketResponse;
    function IsSetBucket: Boolean;
    function IsSetCreationDate: Boolean;
    function IsSetPublicAccessBlockEnabled: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property PublicAccessBlockEnabled: Boolean read GetPublicAccessBlockEnabled write SetPublicAccessBlockEnabled;
  end;
  
  TGetBucketResponse = class(TAmazonWebServiceResponse, IGetBucketResponse)
  strict private
    FBucket: Nullable<string>;
    FCreationDate: Nullable<TDateTime>;
    FPublicAccessBlockEnabled: Nullable<Boolean>;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetPublicAccessBlockEnabled: Boolean;
    procedure SetPublicAccessBlockEnabled(const Value: Boolean);
  strict protected
    function Obj: TGetBucketResponse;
  public
    function IsSetBucket: Boolean;
    function IsSetCreationDate: Boolean;
    function IsSetPublicAccessBlockEnabled: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property PublicAccessBlockEnabled: Boolean read GetPublicAccessBlockEnabled write SetPublicAccessBlockEnabled;
  end;
  
implementation

{ TGetBucketResponse }

function TGetBucketResponse.Obj: TGetBucketResponse;
begin
  Result := Self;
end;

function TGetBucketResponse.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TGetBucketResponse.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TGetBucketResponse.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TGetBucketResponse.GetCreationDate: TDateTime;
begin
  Result := FCreationDate.ValueOrDefault;
end;

procedure TGetBucketResponse.SetCreationDate(const Value: TDateTime);
begin
  FCreationDate := Value;
end;

function TGetBucketResponse.IsSetCreationDate: Boolean;
begin
  Result := FCreationDate.HasValue;
end;

function TGetBucketResponse.GetPublicAccessBlockEnabled: Boolean;
begin
  Result := FPublicAccessBlockEnabled.ValueOrDefault;
end;

procedure TGetBucketResponse.SetPublicAccessBlockEnabled(const Value: Boolean);
begin
  FPublicAccessBlockEnabled := Value;
end;

function TGetBucketResponse.IsSetPublicAccessBlockEnabled: Boolean;
begin
  Result := FPublicAccessBlockEnabled.HasValue;
end;

end.
