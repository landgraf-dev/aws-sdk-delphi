unit AWS.S3.Model.GetBucketEncryptionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.ServerSideEncryptionConfiguration;

type
  TGetBucketEncryptionResponse = class;
  
  IGetBucketEncryptionResponse = interface(IAmazonWebServiceResponse)
    function GetServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
    procedure SetServerSideEncryptionConfiguration(const Value: TServerSideEncryptionConfiguration);
    function GetKeepServerSideEncryptionConfiguration: Boolean;
    procedure SetKeepServerSideEncryptionConfiguration(const Value: Boolean);
    function Obj: TGetBucketEncryptionResponse;
    function IsSetServerSideEncryptionConfiguration: Boolean;
    property ServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration read GetServerSideEncryptionConfiguration write SetServerSideEncryptionConfiguration;
    property KeepServerSideEncryptionConfiguration: Boolean read GetKeepServerSideEncryptionConfiguration write SetKeepServerSideEncryptionConfiguration;
  end;
  
  TGetBucketEncryptionResponse = class(TAmazonWebServiceResponse, IGetBucketEncryptionResponse)
  strict private
    FServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
    FKeepServerSideEncryptionConfiguration: Boolean;
    function GetServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
    procedure SetServerSideEncryptionConfiguration(const Value: TServerSideEncryptionConfiguration);
    function GetKeepServerSideEncryptionConfiguration: Boolean;
    procedure SetKeepServerSideEncryptionConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetBucketEncryptionResponse;
  public
    destructor Destroy; override;
    function IsSetServerSideEncryptionConfiguration: Boolean;
    property ServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration read GetServerSideEncryptionConfiguration write SetServerSideEncryptionConfiguration;
    property KeepServerSideEncryptionConfiguration: Boolean read GetKeepServerSideEncryptionConfiguration write SetKeepServerSideEncryptionConfiguration;
  end;
  
implementation

{ TGetBucketEncryptionResponse }

destructor TGetBucketEncryptionResponse.Destroy;
begin
  ServerSideEncryptionConfiguration := nil;
  inherited;
end;

function TGetBucketEncryptionResponse.Obj: TGetBucketEncryptionResponse;
begin
  Result := Self;
end;

function TGetBucketEncryptionResponse.GetServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
begin
  Result := FServerSideEncryptionConfiguration;
end;

procedure TGetBucketEncryptionResponse.SetServerSideEncryptionConfiguration(const Value: TServerSideEncryptionConfiguration);
begin
  if FServerSideEncryptionConfiguration <> Value then
  begin
    if not KeepServerSideEncryptionConfiguration then
      FServerSideEncryptionConfiguration.Free;
    FServerSideEncryptionConfiguration := Value;
  end;
end;

function TGetBucketEncryptionResponse.GetKeepServerSideEncryptionConfiguration: Boolean;
begin
  Result := FKeepServerSideEncryptionConfiguration;
end;

procedure TGetBucketEncryptionResponse.SetKeepServerSideEncryptionConfiguration(const Value: Boolean);
begin
  FKeepServerSideEncryptionConfiguration := Value;
end;

function TGetBucketEncryptionResponse.IsSetServerSideEncryptionConfiguration: Boolean;
begin
  Result := FServerSideEncryptionConfiguration <> nil;
end;

end.
