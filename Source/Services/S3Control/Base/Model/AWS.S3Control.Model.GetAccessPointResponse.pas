unit AWS.S3Control.Model.GetAccessPointResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3Control.Enums, 
  AWS.S3Control.Model.PublicAccessBlockConfiguration, 
  AWS.S3Control.Model.VpcConfiguration;

type
  TGetAccessPointResponse = class;
  
  IGetAccessPointResponse = interface(IAmazonWebServiceResponse)
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNetworkOrigin: TNetworkOrigin;
    procedure SetNetworkOrigin(const Value: TNetworkOrigin);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function GetVpcConfiguration: TVpcConfiguration;
    procedure SetVpcConfiguration(const Value: TVpcConfiguration);
    function GetKeepVpcConfiguration: Boolean;
    procedure SetKeepVpcConfiguration(const Value: Boolean);
    function Obj: TGetAccessPointResponse;
    function IsSetBucket: Boolean;
    function IsSetCreationDate: Boolean;
    function IsSetName: Boolean;
    function IsSetNetworkOrigin: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    function IsSetVpcConfiguration: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property Name: string read GetName write SetName;
    property NetworkOrigin: TNetworkOrigin read GetNetworkOrigin write SetNetworkOrigin;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
    property VpcConfiguration: TVpcConfiguration read GetVpcConfiguration write SetVpcConfiguration;
    property KeepVpcConfiguration: Boolean read GetKeepVpcConfiguration write SetKeepVpcConfiguration;
  end;
  
  TGetAccessPointResponse = class(TAmazonWebServiceResponse, IGetAccessPointResponse)
  strict private
    FBucket: Nullable<string>;
    FCreationDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FNetworkOrigin: Nullable<TNetworkOrigin>;
    FPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    FKeepPublicAccessBlockConfiguration: Boolean;
    FVpcConfiguration: TVpcConfiguration;
    FKeepVpcConfiguration: Boolean;
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetCreationDate: TDateTime;
    procedure SetCreationDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNetworkOrigin: TNetworkOrigin;
    procedure SetNetworkOrigin(const Value: TNetworkOrigin);
    function GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
    procedure SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
    function GetKeepPublicAccessBlockConfiguration: Boolean;
    procedure SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
    function GetVpcConfiguration: TVpcConfiguration;
    procedure SetVpcConfiguration(const Value: TVpcConfiguration);
    function GetKeepVpcConfiguration: Boolean;
    procedure SetKeepVpcConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetAccessPointResponse;
  public
    destructor Destroy; override;
    function IsSetBucket: Boolean;
    function IsSetCreationDate: Boolean;
    function IsSetName: Boolean;
    function IsSetNetworkOrigin: Boolean;
    function IsSetPublicAccessBlockConfiguration: Boolean;
    function IsSetVpcConfiguration: Boolean;
    property Bucket: string read GetBucket write SetBucket;
    property CreationDate: TDateTime read GetCreationDate write SetCreationDate;
    property Name: string read GetName write SetName;
    property NetworkOrigin: TNetworkOrigin read GetNetworkOrigin write SetNetworkOrigin;
    property PublicAccessBlockConfiguration: TPublicAccessBlockConfiguration read GetPublicAccessBlockConfiguration write SetPublicAccessBlockConfiguration;
    property KeepPublicAccessBlockConfiguration: Boolean read GetKeepPublicAccessBlockConfiguration write SetKeepPublicAccessBlockConfiguration;
    property VpcConfiguration: TVpcConfiguration read GetVpcConfiguration write SetVpcConfiguration;
    property KeepVpcConfiguration: Boolean read GetKeepVpcConfiguration write SetKeepVpcConfiguration;
  end;
  
implementation

{ TGetAccessPointResponse }

destructor TGetAccessPointResponse.Destroy;
begin
  VpcConfiguration := nil;
  PublicAccessBlockConfiguration := nil;
  inherited;
end;

function TGetAccessPointResponse.Obj: TGetAccessPointResponse;
begin
  Result := Self;
end;

function TGetAccessPointResponse.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TGetAccessPointResponse.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TGetAccessPointResponse.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TGetAccessPointResponse.GetCreationDate: TDateTime;
begin
  Result := FCreationDate.ValueOrDefault;
end;

procedure TGetAccessPointResponse.SetCreationDate(const Value: TDateTime);
begin
  FCreationDate := Value;
end;

function TGetAccessPointResponse.IsSetCreationDate: Boolean;
begin
  Result := FCreationDate.HasValue;
end;

function TGetAccessPointResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetAccessPointResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetAccessPointResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetAccessPointResponse.GetNetworkOrigin: TNetworkOrigin;
begin
  Result := FNetworkOrigin.ValueOrDefault;
end;

procedure TGetAccessPointResponse.SetNetworkOrigin(const Value: TNetworkOrigin);
begin
  FNetworkOrigin := Value;
end;

function TGetAccessPointResponse.IsSetNetworkOrigin: Boolean;
begin
  Result := FNetworkOrigin.HasValue;
end;

function TGetAccessPointResponse.GetPublicAccessBlockConfiguration: TPublicAccessBlockConfiguration;
begin
  Result := FPublicAccessBlockConfiguration;
end;

procedure TGetAccessPointResponse.SetPublicAccessBlockConfiguration(const Value: TPublicAccessBlockConfiguration);
begin
  if FPublicAccessBlockConfiguration <> Value then
  begin
    if not KeepPublicAccessBlockConfiguration then
      FPublicAccessBlockConfiguration.Free;
    FPublicAccessBlockConfiguration := Value;
  end;
end;

function TGetAccessPointResponse.GetKeepPublicAccessBlockConfiguration: Boolean;
begin
  Result := FKeepPublicAccessBlockConfiguration;
end;

procedure TGetAccessPointResponse.SetKeepPublicAccessBlockConfiguration(const Value: Boolean);
begin
  FKeepPublicAccessBlockConfiguration := Value;
end;

function TGetAccessPointResponse.IsSetPublicAccessBlockConfiguration: Boolean;
begin
  Result := FPublicAccessBlockConfiguration <> nil;
end;

function TGetAccessPointResponse.GetVpcConfiguration: TVpcConfiguration;
begin
  Result := FVpcConfiguration;
end;

procedure TGetAccessPointResponse.SetVpcConfiguration(const Value: TVpcConfiguration);
begin
  if FVpcConfiguration <> Value then
  begin
    if not KeepVpcConfiguration then
      FVpcConfiguration.Free;
    FVpcConfiguration := Value;
  end;
end;

function TGetAccessPointResponse.GetKeepVpcConfiguration: Boolean;
begin
  Result := FKeepVpcConfiguration;
end;

procedure TGetAccessPointResponse.SetKeepVpcConfiguration(const Value: Boolean);
begin
  FKeepVpcConfiguration := Value;
end;

function TGetAccessPointResponse.IsSetVpcConfiguration: Boolean;
begin
  Result := FVpcConfiguration <> nil;
end;

end.
