unit AWS.S3.Model.PutBucketWebsiteRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.WebsiteConfiguration;

type
  TPutBucketWebsiteRequest = class;
  
  IPutBucketWebsiteRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetWebsiteConfiguration: TWebsiteConfiguration;
    procedure SetWebsiteConfiguration(const Value: TWebsiteConfiguration);
    function GetKeepWebsiteConfiguration: Boolean;
    procedure SetKeepWebsiteConfiguration(const Value: Boolean);
    function Obj: TPutBucketWebsiteRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetWebsiteConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property WebsiteConfiguration: TWebsiteConfiguration read GetWebsiteConfiguration write SetWebsiteConfiguration;
    property KeepWebsiteConfiguration: Boolean read GetKeepWebsiteConfiguration write SetKeepWebsiteConfiguration;
  end;
  
  TPutBucketWebsiteRequest = class(TAmazonS3Request, IPutBucketWebsiteRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FWebsiteConfiguration: TWebsiteConfiguration;
    FKeepWebsiteConfiguration: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetWebsiteConfiguration: TWebsiteConfiguration;
    procedure SetWebsiteConfiguration(const Value: TWebsiteConfiguration);
    function GetKeepWebsiteConfiguration: Boolean;
    procedure SetKeepWebsiteConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketWebsiteRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetWebsiteConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property WebsiteConfiguration: TWebsiteConfiguration read GetWebsiteConfiguration write SetWebsiteConfiguration;
    property KeepWebsiteConfiguration: Boolean read GetKeepWebsiteConfiguration write SetKeepWebsiteConfiguration;
  end;
  
implementation

{ TPutBucketWebsiteRequest }

destructor TPutBucketWebsiteRequest.Destroy;
begin
  WebsiteConfiguration := nil;
  inherited;
end;

function TPutBucketWebsiteRequest.Obj: TPutBucketWebsiteRequest;
begin
  Result := Self;
end;

function TPutBucketWebsiteRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketWebsiteRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketWebsiteRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketWebsiteRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketWebsiteRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketWebsiteRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketWebsiteRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketWebsiteRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketWebsiteRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketWebsiteRequest.GetWebsiteConfiguration: TWebsiteConfiguration;
begin
  Result := FWebsiteConfiguration;
end;

procedure TPutBucketWebsiteRequest.SetWebsiteConfiguration(const Value: TWebsiteConfiguration);
begin
  if FWebsiteConfiguration <> Value then
  begin
    if not KeepWebsiteConfiguration then
      FWebsiteConfiguration.Free;
    FWebsiteConfiguration := Value;
  end;
end;

function TPutBucketWebsiteRequest.GetKeepWebsiteConfiguration: Boolean;
begin
  Result := FKeepWebsiteConfiguration;
end;

procedure TPutBucketWebsiteRequest.SetKeepWebsiteConfiguration(const Value: Boolean);
begin
  FKeepWebsiteConfiguration := Value;
end;

function TPutBucketWebsiteRequest.IsSetWebsiteConfiguration: Boolean;
begin
  Result := FWebsiteConfiguration <> nil;
end;

end.
