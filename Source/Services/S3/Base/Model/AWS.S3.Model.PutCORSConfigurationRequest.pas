unit AWS.S3.Model.PutCORSConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.CORSConfiguration;

type
  TPutCORSConfigurationRequest = class;
  
  IPutCORSConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetConfiguration: TCORSConfiguration;
    procedure SetConfiguration(const Value: TCORSConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TPutCORSConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Configuration: TCORSConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TPutCORSConfigurationRequest = class(TAmazonS3Request, IPutCORSConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FConfiguration: TCORSConfiguration;
    FKeepConfiguration: Boolean;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetConfiguration: TCORSConfiguration;
    procedure SetConfiguration(const Value: TCORSConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TPutCORSConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Configuration: TCORSConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TPutCORSConfigurationRequest }

destructor TPutCORSConfigurationRequest.Destroy;
begin
  Configuration := nil;
  inherited;
end;

function TPutCORSConfigurationRequest.Obj: TPutCORSConfigurationRequest;
begin
  Result := Self;
end;

function TPutCORSConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutCORSConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutCORSConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutCORSConfigurationRequest.GetConfiguration: TCORSConfiguration;
begin
  Result := FConfiguration;
end;

procedure TPutCORSConfigurationRequest.SetConfiguration(const Value: TCORSConfiguration);
begin
  if FConfiguration <> Value then
  begin
    if not KeepConfiguration then
      FConfiguration.Free;
    FConfiguration := Value;
  end;
end;

function TPutCORSConfigurationRequest.GetKeepConfiguration: Boolean;
begin
  Result := FKeepConfiguration;
end;

procedure TPutCORSConfigurationRequest.SetKeepConfiguration(const Value: Boolean);
begin
  FKeepConfiguration := Value;
end;

function TPutCORSConfigurationRequest.IsSetConfiguration: Boolean;
begin
  Result := FConfiguration <> nil;
end;

function TPutCORSConfigurationRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutCORSConfigurationRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutCORSConfigurationRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutCORSConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutCORSConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutCORSConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
