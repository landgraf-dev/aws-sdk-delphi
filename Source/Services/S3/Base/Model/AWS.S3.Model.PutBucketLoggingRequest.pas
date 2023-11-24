unit AWS.S3.Model.PutBucketLoggingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.BucketLoggingStatus;

type
  TPutBucketLoggingRequest = class;
  
  IPutBucketLoggingRequest = interface
    function GetBucketLoggingStatus: TBucketLoggingStatus;
    procedure SetBucketLoggingStatus(const Value: TBucketLoggingStatus);
    function GetKeepBucketLoggingStatus: Boolean;
    procedure SetKeepBucketLoggingStatus(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TPutBucketLoggingRequest;
    function IsSetBucketLoggingStatus: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketLoggingStatus: TBucketLoggingStatus read GetBucketLoggingStatus write SetBucketLoggingStatus;
    property KeepBucketLoggingStatus: Boolean read GetKeepBucketLoggingStatus write SetKeepBucketLoggingStatus;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TPutBucketLoggingRequest = class(TAmazonS3Request, IPutBucketLoggingRequest)
  strict private
    FBucketLoggingStatus: TBucketLoggingStatus;
    FKeepBucketLoggingStatus: Boolean;
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketLoggingStatus: TBucketLoggingStatus;
    procedure SetBucketLoggingStatus(const Value: TBucketLoggingStatus);
    function GetKeepBucketLoggingStatus: Boolean;
    procedure SetKeepBucketLoggingStatus(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TPutBucketLoggingRequest;
  public
    destructor Destroy; override;
    function IsSetBucketLoggingStatus: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketLoggingStatus: TBucketLoggingStatus read GetBucketLoggingStatus write SetBucketLoggingStatus;
    property KeepBucketLoggingStatus: Boolean read GetKeepBucketLoggingStatus write SetKeepBucketLoggingStatus;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TPutBucketLoggingRequest }

destructor TPutBucketLoggingRequest.Destroy;
begin
  BucketLoggingStatus := nil;
  inherited;
end;

function TPutBucketLoggingRequest.Obj: TPutBucketLoggingRequest;
begin
  Result := Self;
end;

function TPutBucketLoggingRequest.GetBucketLoggingStatus: TBucketLoggingStatus;
begin
  Result := FBucketLoggingStatus;
end;

procedure TPutBucketLoggingRequest.SetBucketLoggingStatus(const Value: TBucketLoggingStatus);
begin
  if FBucketLoggingStatus <> Value then
  begin
    if not KeepBucketLoggingStatus then
      FBucketLoggingStatus.Free;
    FBucketLoggingStatus := Value;
  end;
end;

function TPutBucketLoggingRequest.GetKeepBucketLoggingStatus: Boolean;
begin
  Result := FKeepBucketLoggingStatus;
end;

procedure TPutBucketLoggingRequest.SetKeepBucketLoggingStatus(const Value: Boolean);
begin
  FKeepBucketLoggingStatus := Value;
end;

function TPutBucketLoggingRequest.IsSetBucketLoggingStatus: Boolean;
begin
  Result := FBucketLoggingStatus <> nil;
end;

function TPutBucketLoggingRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketLoggingRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketLoggingRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketLoggingRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketLoggingRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketLoggingRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketLoggingRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketLoggingRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketLoggingRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
