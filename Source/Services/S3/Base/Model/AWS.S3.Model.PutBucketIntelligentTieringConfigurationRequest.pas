unit AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.IntelligentTieringConfiguration;

type
  TPutBucketIntelligentTieringConfigurationRequest = class;
  
  IPutBucketIntelligentTieringConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
    procedure SetIntelligentTieringConfiguration(const Value: TIntelligentTieringConfiguration);
    function GetKeepIntelligentTieringConfiguration: Boolean;
    procedure SetKeepIntelligentTieringConfiguration(const Value: Boolean);
    function Obj: TPutBucketIntelligentTieringConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetId: Boolean;
    function IsSetIntelligentTieringConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Id: string read GetId write SetId;
    property IntelligentTieringConfiguration: TIntelligentTieringConfiguration read GetIntelligentTieringConfiguration write SetIntelligentTieringConfiguration;
    property KeepIntelligentTieringConfiguration: Boolean read GetKeepIntelligentTieringConfiguration write SetKeepIntelligentTieringConfiguration;
  end;
  
  TPutBucketIntelligentTieringConfigurationRequest = class(TAmazonS3Request, IPutBucketIntelligentTieringConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FId: Nullable<string>;
    FIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
    FKeepIntelligentTieringConfiguration: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
    procedure SetIntelligentTieringConfiguration(const Value: TIntelligentTieringConfiguration);
    function GetKeepIntelligentTieringConfiguration: Boolean;
    procedure SetKeepIntelligentTieringConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketIntelligentTieringConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetId: Boolean;
    function IsSetIntelligentTieringConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Id: string read GetId write SetId;
    property IntelligentTieringConfiguration: TIntelligentTieringConfiguration read GetIntelligentTieringConfiguration write SetIntelligentTieringConfiguration;
    property KeepIntelligentTieringConfiguration: Boolean read GetKeepIntelligentTieringConfiguration write SetKeepIntelligentTieringConfiguration;
  end;
  
implementation

{ TPutBucketIntelligentTieringConfigurationRequest }

destructor TPutBucketIntelligentTieringConfigurationRequest.Destroy;
begin
  IntelligentTieringConfiguration := nil;
  inherited;
end;

function TPutBucketIntelligentTieringConfigurationRequest.Obj: TPutBucketIntelligentTieringConfigurationRequest;
begin
  Result := Self;
end;

function TPutBucketIntelligentTieringConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketIntelligentTieringConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketIntelligentTieringConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketIntelligentTieringConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPutBucketIntelligentTieringConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TPutBucketIntelligentTieringConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TPutBucketIntelligentTieringConfigurationRequest.GetIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
begin
  Result := FIntelligentTieringConfiguration;
end;

procedure TPutBucketIntelligentTieringConfigurationRequest.SetIntelligentTieringConfiguration(const Value: TIntelligentTieringConfiguration);
begin
  if FIntelligentTieringConfiguration <> Value then
  begin
    if not KeepIntelligentTieringConfiguration then
      FIntelligentTieringConfiguration.Free;
    FIntelligentTieringConfiguration := Value;
  end;
end;

function TPutBucketIntelligentTieringConfigurationRequest.GetKeepIntelligentTieringConfiguration: Boolean;
begin
  Result := FKeepIntelligentTieringConfiguration;
end;

procedure TPutBucketIntelligentTieringConfigurationRequest.SetKeepIntelligentTieringConfiguration(const Value: Boolean);
begin
  FKeepIntelligentTieringConfiguration := Value;
end;

function TPutBucketIntelligentTieringConfigurationRequest.IsSetIntelligentTieringConfiguration: Boolean;
begin
  Result := FIntelligentTieringConfiguration <> nil;
end;

end.
