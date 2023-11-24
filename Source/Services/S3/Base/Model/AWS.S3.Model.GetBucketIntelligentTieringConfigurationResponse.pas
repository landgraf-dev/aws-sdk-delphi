unit AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.IntelligentTieringConfiguration;

type
  TGetBucketIntelligentTieringConfigurationResponse = class;
  
  IGetBucketIntelligentTieringConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
    procedure SetIntelligentTieringConfiguration(const Value: TIntelligentTieringConfiguration);
    function GetKeepIntelligentTieringConfiguration: Boolean;
    procedure SetKeepIntelligentTieringConfiguration(const Value: Boolean);
    function Obj: TGetBucketIntelligentTieringConfigurationResponse;
    function IsSetIntelligentTieringConfiguration: Boolean;
    property IntelligentTieringConfiguration: TIntelligentTieringConfiguration read GetIntelligentTieringConfiguration write SetIntelligentTieringConfiguration;
    property KeepIntelligentTieringConfiguration: Boolean read GetKeepIntelligentTieringConfiguration write SetKeepIntelligentTieringConfiguration;
  end;
  
  TGetBucketIntelligentTieringConfigurationResponse = class(TAmazonWebServiceResponse, IGetBucketIntelligentTieringConfigurationResponse)
  strict private
    FIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
    FKeepIntelligentTieringConfiguration: Boolean;
    function GetIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
    procedure SetIntelligentTieringConfiguration(const Value: TIntelligentTieringConfiguration);
    function GetKeepIntelligentTieringConfiguration: Boolean;
    procedure SetKeepIntelligentTieringConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetBucketIntelligentTieringConfigurationResponse;
  public
    destructor Destroy; override;
    function IsSetIntelligentTieringConfiguration: Boolean;
    property IntelligentTieringConfiguration: TIntelligentTieringConfiguration read GetIntelligentTieringConfiguration write SetIntelligentTieringConfiguration;
    property KeepIntelligentTieringConfiguration: Boolean read GetKeepIntelligentTieringConfiguration write SetKeepIntelligentTieringConfiguration;
  end;
  
implementation

{ TGetBucketIntelligentTieringConfigurationResponse }

destructor TGetBucketIntelligentTieringConfigurationResponse.Destroy;
begin
  IntelligentTieringConfiguration := nil;
  inherited;
end;

function TGetBucketIntelligentTieringConfigurationResponse.Obj: TGetBucketIntelligentTieringConfigurationResponse;
begin
  Result := Self;
end;

function TGetBucketIntelligentTieringConfigurationResponse.GetIntelligentTieringConfiguration: TIntelligentTieringConfiguration;
begin
  Result := FIntelligentTieringConfiguration;
end;

procedure TGetBucketIntelligentTieringConfigurationResponse.SetIntelligentTieringConfiguration(const Value: TIntelligentTieringConfiguration);
begin
  if FIntelligentTieringConfiguration <> Value then
  begin
    if not KeepIntelligentTieringConfiguration then
      FIntelligentTieringConfiguration.Free;
    FIntelligentTieringConfiguration := Value;
  end;
end;

function TGetBucketIntelligentTieringConfigurationResponse.GetKeepIntelligentTieringConfiguration: Boolean;
begin
  Result := FKeepIntelligentTieringConfiguration;
end;

procedure TGetBucketIntelligentTieringConfigurationResponse.SetKeepIntelligentTieringConfiguration(const Value: Boolean);
begin
  FKeepIntelligentTieringConfiguration := Value;
end;

function TGetBucketIntelligentTieringConfigurationResponse.IsSetIntelligentTieringConfiguration: Boolean;
begin
  Result := FIntelligentTieringConfiguration <> nil;
end;

end.
