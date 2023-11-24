unit AWS.S3.Model.PutBucketRequestPaymentRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.RequestPaymentConfiguration;

type
  TPutBucketRequestPaymentRequest = class;
  
  IPutBucketRequestPaymentRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetRequestPaymentConfiguration: TRequestPaymentConfiguration;
    procedure SetRequestPaymentConfiguration(const Value: TRequestPaymentConfiguration);
    function GetKeepRequestPaymentConfiguration: Boolean;
    procedure SetKeepRequestPaymentConfiguration(const Value: Boolean);
    function Obj: TPutBucketRequestPaymentRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetRequestPaymentConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property RequestPaymentConfiguration: TRequestPaymentConfiguration read GetRequestPaymentConfiguration write SetRequestPaymentConfiguration;
    property KeepRequestPaymentConfiguration: Boolean read GetKeepRequestPaymentConfiguration write SetKeepRequestPaymentConfiguration;
  end;
  
  TPutBucketRequestPaymentRequest = class(TAmazonS3Request, IPutBucketRequestPaymentRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FRequestPaymentConfiguration: TRequestPaymentConfiguration;
    FKeepRequestPaymentConfiguration: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetRequestPaymentConfiguration: TRequestPaymentConfiguration;
    procedure SetRequestPaymentConfiguration(const Value: TRequestPaymentConfiguration);
    function GetKeepRequestPaymentConfiguration: Boolean;
    procedure SetKeepRequestPaymentConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketRequestPaymentRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetRequestPaymentConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property RequestPaymentConfiguration: TRequestPaymentConfiguration read GetRequestPaymentConfiguration write SetRequestPaymentConfiguration;
    property KeepRequestPaymentConfiguration: Boolean read GetKeepRequestPaymentConfiguration write SetKeepRequestPaymentConfiguration;
  end;
  
implementation

{ TPutBucketRequestPaymentRequest }

destructor TPutBucketRequestPaymentRequest.Destroy;
begin
  RequestPaymentConfiguration := nil;
  inherited;
end;

function TPutBucketRequestPaymentRequest.Obj: TPutBucketRequestPaymentRequest;
begin
  Result := Self;
end;

function TPutBucketRequestPaymentRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketRequestPaymentRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketRequestPaymentRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketRequestPaymentRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketRequestPaymentRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketRequestPaymentRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketRequestPaymentRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketRequestPaymentRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketRequestPaymentRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketRequestPaymentRequest.GetRequestPaymentConfiguration: TRequestPaymentConfiguration;
begin
  Result := FRequestPaymentConfiguration;
end;

procedure TPutBucketRequestPaymentRequest.SetRequestPaymentConfiguration(const Value: TRequestPaymentConfiguration);
begin
  if FRequestPaymentConfiguration <> Value then
  begin
    if not KeepRequestPaymentConfiguration then
      FRequestPaymentConfiguration.Free;
    FRequestPaymentConfiguration := Value;
  end;
end;

function TPutBucketRequestPaymentRequest.GetKeepRequestPaymentConfiguration: Boolean;
begin
  Result := FKeepRequestPaymentConfiguration;
end;

procedure TPutBucketRequestPaymentRequest.SetKeepRequestPaymentConfiguration(const Value: Boolean);
begin
  FKeepRequestPaymentConfiguration := Value;
end;

function TPutBucketRequestPaymentRequest.IsSetRequestPaymentConfiguration: Boolean;
begin
  Result := FRequestPaymentConfiguration <> nil;
end;

end.
