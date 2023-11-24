unit AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteBucketIntelligentTieringConfigurationRequest = class;
  
  IDeleteBucketIntelligentTieringConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TDeleteBucketIntelligentTieringConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Id: string read GetId write SetId;
  end;
  
  TDeleteBucketIntelligentTieringConfigurationRequest = class(TAmazonS3Request, IDeleteBucketIntelligentTieringConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TDeleteBucketIntelligentTieringConfigurationRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TDeleteBucketIntelligentTieringConfigurationRequest }

function TDeleteBucketIntelligentTieringConfigurationRequest.Obj: TDeleteBucketIntelligentTieringConfigurationRequest;
begin
  Result := Self;
end;

function TDeleteBucketIntelligentTieringConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteBucketIntelligentTieringConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteBucketIntelligentTieringConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteBucketIntelligentTieringConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TDeleteBucketIntelligentTieringConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TDeleteBucketIntelligentTieringConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
