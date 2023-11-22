unit AWS.S3Control.Model.AccessPoint;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3Control.Enums, 
  AWS.S3Control.Model.VpcConfiguration;

type
  TAccessPoint = class;
  
  IAccessPoint = interface
    function GetAccessPointArn: string;
    procedure SetAccessPointArn(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNetworkOrigin: TNetworkOrigin;
    procedure SetNetworkOrigin(const Value: TNetworkOrigin);
    function GetVpcConfiguration: TVpcConfiguration;
    procedure SetVpcConfiguration(const Value: TVpcConfiguration);
    function GetKeepVpcConfiguration: Boolean;
    procedure SetKeepVpcConfiguration(const Value: Boolean);
    function Obj: TAccessPoint;
    function IsSetAccessPointArn: Boolean;
    function IsSetBucket: Boolean;
    function IsSetName: Boolean;
    function IsSetNetworkOrigin: Boolean;
    function IsSetVpcConfiguration: Boolean;
    property AccessPointArn: string read GetAccessPointArn write SetAccessPointArn;
    property Bucket: string read GetBucket write SetBucket;
    property Name: string read GetName write SetName;
    property NetworkOrigin: TNetworkOrigin read GetNetworkOrigin write SetNetworkOrigin;
    property VpcConfiguration: TVpcConfiguration read GetVpcConfiguration write SetVpcConfiguration;
    property KeepVpcConfiguration: Boolean read GetKeepVpcConfiguration write SetKeepVpcConfiguration;
  end;
  
  TAccessPoint = class
  strict private
    FAccessPointArn: Nullable<string>;
    FBucket: Nullable<string>;
    FName: Nullable<string>;
    FNetworkOrigin: Nullable<TNetworkOrigin>;
    FVpcConfiguration: TVpcConfiguration;
    FKeepVpcConfiguration: Boolean;
    function GetAccessPointArn: string;
    procedure SetAccessPointArn(const Value: string);
    function GetBucket: string;
    procedure SetBucket(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNetworkOrigin: TNetworkOrigin;
    procedure SetNetworkOrigin(const Value: TNetworkOrigin);
    function GetVpcConfiguration: TVpcConfiguration;
    procedure SetVpcConfiguration(const Value: TVpcConfiguration);
    function GetKeepVpcConfiguration: Boolean;
    procedure SetKeepVpcConfiguration(const Value: Boolean);
  strict protected
    function Obj: TAccessPoint;
  public
    destructor Destroy; override;
    function IsSetAccessPointArn: Boolean;
    function IsSetBucket: Boolean;
    function IsSetName: Boolean;
    function IsSetNetworkOrigin: Boolean;
    function IsSetVpcConfiguration: Boolean;
    property AccessPointArn: string read GetAccessPointArn write SetAccessPointArn;
    property Bucket: string read GetBucket write SetBucket;
    property Name: string read GetName write SetName;
    property NetworkOrigin: TNetworkOrigin read GetNetworkOrigin write SetNetworkOrigin;
    property VpcConfiguration: TVpcConfiguration read GetVpcConfiguration write SetVpcConfiguration;
    property KeepVpcConfiguration: Boolean read GetKeepVpcConfiguration write SetKeepVpcConfiguration;
  end;
  
implementation

{ TAccessPoint }

destructor TAccessPoint.Destroy;
begin
  VpcConfiguration := nil;
  inherited;
end;

function TAccessPoint.Obj: TAccessPoint;
begin
  Result := Self;
end;

function TAccessPoint.GetAccessPointArn: string;
begin
  Result := FAccessPointArn.ValueOrDefault;
end;

procedure TAccessPoint.SetAccessPointArn(const Value: string);
begin
  FAccessPointArn := Value;
end;

function TAccessPoint.IsSetAccessPointArn: Boolean;
begin
  Result := FAccessPointArn.HasValue;
end;

function TAccessPoint.GetBucket: string;
begin
  Result := FBucket.ValueOrDefault;
end;

procedure TAccessPoint.SetBucket(const Value: string);
begin
  FBucket := Value;
end;

function TAccessPoint.IsSetBucket: Boolean;
begin
  Result := FBucket.HasValue;
end;

function TAccessPoint.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAccessPoint.SetName(const Value: string);
begin
  FName := Value;
end;

function TAccessPoint.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAccessPoint.GetNetworkOrigin: TNetworkOrigin;
begin
  Result := FNetworkOrigin.ValueOrDefault;
end;

procedure TAccessPoint.SetNetworkOrigin(const Value: TNetworkOrigin);
begin
  FNetworkOrigin := Value;
end;

function TAccessPoint.IsSetNetworkOrigin: Boolean;
begin
  Result := FNetworkOrigin.HasValue;
end;

function TAccessPoint.GetVpcConfiguration: TVpcConfiguration;
begin
  Result := FVpcConfiguration;
end;

procedure TAccessPoint.SetVpcConfiguration(const Value: TVpcConfiguration);
begin
  if FVpcConfiguration <> Value then
  begin
    if not KeepVpcConfiguration then
      FVpcConfiguration.Free;
    FVpcConfiguration := Value;
  end;
end;

function TAccessPoint.GetKeepVpcConfiguration: Boolean;
begin
  Result := FKeepVpcConfiguration;
end;

procedure TAccessPoint.SetKeepVpcConfiguration(const Value: Boolean);
begin
  FKeepVpcConfiguration := Value;
end;

function TAccessPoint.IsSetVpcConfiguration: Boolean;
begin
  Result := FVpcConfiguration <> nil;
end;

end.
