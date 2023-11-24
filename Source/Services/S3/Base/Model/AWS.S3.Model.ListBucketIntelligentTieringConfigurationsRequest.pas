unit AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TListBucketIntelligentTieringConfigurationsRequest = class;
  
  IListBucketIntelligentTieringConfigurationsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function Obj: TListBucketIntelligentTieringConfigurationsRequest;
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
  end;
  
  TListBucketIntelligentTieringConfigurationsRequest = class(TAmazonS3Request, IListBucketIntelligentTieringConfigurationsRequest)
  strict private
    FBucketName: Nullable<string>;
    FContinuationToken: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
  strict protected
    function Obj: TListBucketIntelligentTieringConfigurationsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
  end;
  
implementation

{ TListBucketIntelligentTieringConfigurationsRequest }

function TListBucketIntelligentTieringConfigurationsRequest.Obj: TListBucketIntelligentTieringConfigurationsRequest;
begin
  Result := Self;
end;

function TListBucketIntelligentTieringConfigurationsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListBucketIntelligentTieringConfigurationsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListBucketIntelligentTieringConfigurationsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListBucketIntelligentTieringConfigurationsRequest.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListBucketIntelligentTieringConfigurationsRequest.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListBucketIntelligentTieringConfigurationsRequest.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

end.
