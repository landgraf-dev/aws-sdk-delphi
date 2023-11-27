unit AWS.S3.Model.DeleteBucketRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request;

type
  TDeleteBucketRequest = class;
  
  IDeleteBucketRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetUseClientRegion: Boolean;
    procedure SetUseClientRegion(const Value: Boolean);
    function GetBucketRegionName: string;
    procedure SetBucketRegionName(const Value: string);
    function Obj: TDeleteBucketRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property UseClientRegion: Boolean read GetUseClientRegion write SetUseClientRegion;
    property BucketRegionName: string read GetBucketRegionName write SetBucketRegionName;
  end;
  
  TDeleteBucketRequest = class(TAmazonS3Request, IDeleteBucketRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FUseClientRegion: Boolean;
    FBucketRegionName: string;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetUseClientRegion: Boolean;
    procedure SetUseClientRegion(const Value: Boolean);
    function GetBucketRegionName: string;
    procedure SetBucketRegionName(const Value: string);
  strict protected
    function Obj: TDeleteBucketRequest;
  public
    constructor Create;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property UseClientRegion: Boolean read GetUseClientRegion write SetUseClientRegion;
    property BucketRegionName: string read GetBucketRegionName write SetBucketRegionName;
  end;
  
implementation

{ TDeleteBucketRequest }

constructor TDeleteBucketRequest.Create;
begin
  inherited;
  FUseClientRegion := True;
end;

function TDeleteBucketRequest.Obj: TDeleteBucketRequest;
begin
  Result := Self;
end;

function TDeleteBucketRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteBucketRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteBucketRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteBucketRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteBucketRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteBucketRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteBucketRequest.GetUseClientRegion: Boolean;
begin
  Result := FUseClientRegion;
end;

procedure TDeleteBucketRequest.SetUseClientRegion(const Value: Boolean);
begin
  FUseClientRegion := Value;
end;

function TDeleteBucketRequest.GetBucketRegionName: string;
begin
  Result := FBucketRegionName;
end;

procedure TDeleteBucketRequest.SetBucketRegionName(const Value: string);
begin
  FBucketRegionName := Value;
end;

end.
