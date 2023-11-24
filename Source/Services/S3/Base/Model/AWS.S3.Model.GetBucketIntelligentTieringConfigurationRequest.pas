unit AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TGetBucketIntelligentTieringConfigurationRequest = class;
  
  IGetBucketIntelligentTieringConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TGetBucketIntelligentTieringConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Id: string read GetId write SetId;
  end;
  
  TGetBucketIntelligentTieringConfigurationRequest = class(TAmazonS3Request, IGetBucketIntelligentTieringConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TGetBucketIntelligentTieringConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TGetBucketIntelligentTieringConfigurationRequest }

function TGetBucketIntelligentTieringConfigurationRequest.Obj: TGetBucketIntelligentTieringConfigurationRequest;
begin
  Result := Self;
end;

function TGetBucketIntelligentTieringConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetBucketIntelligentTieringConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetBucketIntelligentTieringConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetBucketIntelligentTieringConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TGetBucketIntelligentTieringConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TGetBucketIntelligentTieringConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
