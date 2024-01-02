unit AWS.S3.Model.PutBucketOwnershipControlsRequest;

interface

uses
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Model.OwnershipControls;

type
  TPutBucketOwnershipControlsRequest = class;
  
  IPutBucketOwnershipControlsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetOwnershipControls: TOwnershipControls;
    procedure SetOwnershipControls(const Value: TOwnershipControls);
    function GetKeepOwnershipControls: Boolean;
    procedure SetKeepOwnershipControls(const Value: Boolean);
    function Obj: TPutBucketOwnershipControlsRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetOwnershipControls: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property OwnershipControls: TOwnershipControls read GetOwnershipControls write SetOwnershipControls;
    property KeepOwnershipControls: Boolean read GetKeepOwnershipControls write SetKeepOwnershipControls;
  end;
  
  TPutBucketOwnershipControlsRequest = class(TAmazonS3Request, IPutBucketOwnershipControlsRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FOwnershipControls: TOwnershipControls;
    FKeepOwnershipControls: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetOwnershipControls: TOwnershipControls;
    procedure SetOwnershipControls(const Value: TOwnershipControls);
    function GetKeepOwnershipControls: Boolean;
    procedure SetKeepOwnershipControls(const Value: Boolean);
  strict protected
    function Obj: TPutBucketOwnershipControlsRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetOwnershipControls: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property OwnershipControls: TOwnershipControls read GetOwnershipControls write SetOwnershipControls;
    property KeepOwnershipControls: Boolean read GetKeepOwnershipControls write SetKeepOwnershipControls;
  end;
  
implementation

{ TPutBucketOwnershipControlsRequest }

destructor TPutBucketOwnershipControlsRequest.Destroy;
begin
  OwnershipControls := nil;
  inherited;
end;

function TPutBucketOwnershipControlsRequest.Obj: TPutBucketOwnershipControlsRequest;
begin
  Result := Self;
end;

function TPutBucketOwnershipControlsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketOwnershipControlsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketOwnershipControlsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketOwnershipControlsRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketOwnershipControlsRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketOwnershipControlsRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketOwnershipControlsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketOwnershipControlsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketOwnershipControlsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketOwnershipControlsRequest.GetOwnershipControls: TOwnershipControls;
begin
  Result := FOwnershipControls;
end;

procedure TPutBucketOwnershipControlsRequest.SetOwnershipControls(const Value: TOwnershipControls);
begin
  if FOwnershipControls <> Value then
  begin
    if not KeepOwnershipControls then
      FOwnershipControls.Free;
    FOwnershipControls := Value;
  end;
end;

function TPutBucketOwnershipControlsRequest.GetKeepOwnershipControls: Boolean;
begin
  Result := FKeepOwnershipControls;
end;

procedure TPutBucketOwnershipControlsRequest.SetKeepOwnershipControls(const Value: Boolean);
begin
  FKeepOwnershipControls := Value;
end;

function TPutBucketOwnershipControlsRequest.IsSetOwnershipControls: Boolean;
begin
  Result := FOwnershipControls <> nil;
end;

end.
