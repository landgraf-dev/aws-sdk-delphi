unit AWS.S3Control.Model.CreateAccessPointRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Model.PublicAccessBlockConfiguration, 
  AWS.S3Control.Model.VpcConfiguration;

type
  TCreateAccessPointRequest = class;
  
  ICreateAccessPointRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function GetVpcConfiguration: TVpcConfiguration;
    procedure SetVpcConfiguration(const Value: TVpcConfiguration);
    function GetKeepVpcConfiguration: Boolean;
    procedure SetKeepVpcConfiguration(const Value: Boolean);
    function Obj: TCreateAccessPointRequest;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetName: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    function IsSetVpcConfiguration: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property Name: string read GetName write SetName;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
    property VpcConfiguration: TVpcConfiguration read GetVpcConfiguration write SetVpcConfiguration;
    property KeepVpcConfiguration: Boolean read GetKeepVpcConfiguration write SetKeepVpcConfiguration;
  end;
  
  TCreateAccessPointRequest = class(TAmazonS3ControlRequest, ICreateAccessPointRequest)
  strict private
    FAccountId: Nullable<string>;
    FBucket: Nullable<string>;
    FName: Nullable<string>;
    FPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    FKeepPublicAccessBlockConfiguration: Boolean;
    FVpcConfiguration: TVpcConfiguration;
    FKeepVpcConfiguration: Boolean;
    FOutpostId: string;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function GetVpcConfiguration: TVpcConfiguration;
    procedure SetVpcConfiguration(const Value: TVpcConfiguration);
    function GetKeepVpcConfiguration: Boolean;
    procedure SetKeepVpcConfiguration(const Value: Boolean);
  strict protected
    function Obj: TCreateAccessPointRequest;
  public
    destructor Destroy; override;
    function IsSetAccountId: Boolean;
    function IsSetBucket: Boolean;
    function IsSetName: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    function IsSetVpcConfiguration: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property Bucket: string read GetBucket write SetBucket;
    property Name: string read GetName write SetName;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
    property VpcConfiguration: TVpcConfiguration read GetVpcConfiguration write SetVpcConfiguration;
    property KeepVpcConfiguration: Boolean read GetKeepVpcConfiguration write SetKeepVpcConfiguration;
    property OutpostId: string read FOutpostId write FOutpostId;
  end;
  
implementation

{ TCreateAccessPointRequest }

destructor TCreateAccessPointRequest.Destroy;
begin
  VpcConfiguration := nil;
  PublicAccessBlockConfiguration := nil;
  inherited;
end;

function TCreateAccessPointRequest.Obj: TCreateAccessPointRequest;
begin
  Result := Self;
end;

function TCreateAccessPointRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TCreateAccessPointRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TCreateAccessPointRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TCreateAccessPointRequest.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TCreateAccessPointRequest.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TCreateAccessPointRequest.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TCreateAccessPointRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateAccessPointRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateAccessPointRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateAccessPointRequest.GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
begin
  Result := FPublicAccessBlockConfiguration;
end;

procedure TCreateAccessPointRequest.SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
begin
  if FPublicAccessBlockConfiguration <> Value then
  begin
    if not KeepPublicAccessBlockConfiguration then
      FPublicAccessBlockConfiguration.Free;
    FPublicAccessBlockConfiguration := Value;
  end;
end;

function TCreateAccessPointRequest.GetKeepPublicAccessBlockConfiguration: Boolean;
begin
  Result := FKeepPublicAccessBlockConfiguration;
end;

procedure TCreateAccessPointRequest.SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
begin
  FKeepPublicAccessBlockConfiguration := Value;
end;

function TCreateAccessPointRequest.IsSetPublicAccessBlockConfiguration: Boolean;
begin
  Result := FPublicAccessBlockConfiguration <> nil;
end;

function TCreateAccessPointRequest.GetVpcConfiguration: TVpcConfiguration;
begin
  Result := FVpcConfiguration;
end;

procedure TCreateAccessPointRequest.SetVpcConfiguration(const Value: TVpcConfiguration);
begin
  if FVpcConfiguration <> Value then
  begin
    if not KeepVpcConfiguration then
      FVpcConfiguration.Free;
    FVpcConfiguration := Value;
  end;
end;

function TCreateAccessPointRequest.GetKeepVpcConfiguration: Boolean;
begin
  Result := FKeepVpcConfiguration;
end;

procedure TCreateAccessPointRequest.SetKeepVpcConfiguration(const Value: Boolean);
begin
  FKeepVpcConfiguration := Value;
end;

function TCreateAccessPointRequest.IsSetVpcConfiguration: Boolean;
begin
  Result := FVpcConfiguration <> nil;
end;

end.
