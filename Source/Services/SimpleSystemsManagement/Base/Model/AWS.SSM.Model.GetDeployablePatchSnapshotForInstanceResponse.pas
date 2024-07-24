unit AWS.SSM.Model.GetDeployablePatchSnapshotForInstanceResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetDeployablePatchSnapshotForInstanceResponse = class;
  
  IGetDeployablePatchSnapshotForInstanceResponse = interface(IAmazonWebServiceResponse)
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetProduct: string;
    procedure SetProduct(const Value: string);
    function GetSnapshotDownloadUrl: string;
    procedure SetSnapshotDownloadUrl(const Value: string);
    function GetSnapshotId: string;
    procedure SetSnapshotId(const Value: string);
    function Obj: TGetDeployablePatchSnapshotForInstanceResponse;
    function IsSetInstanceId: Boolean;
    function IsSetProduct: Boolean;
    function IsSetSnapshotDownloadUrl: Boolean;
    function IsSetSnapshotId: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Product: string read GetProduct write SetProduct;
    property SnapshotDownloadUrl: string read GetSnapshotDownloadUrl write SetSnapshotDownloadUrl;
    property SnapshotId: string read GetSnapshotId write SetSnapshotId;
  end;
  
  TGetDeployablePatchSnapshotForInstanceResponse = class(TAmazonWebServiceResponse, IGetDeployablePatchSnapshotForInstanceResponse)
  strict private
    FInstanceId: Nullable<string>;
    FProduct: Nullable<string>;
    FSnapshotDownloadUrl: Nullable<string>;
    FSnapshotId: Nullable<string>;
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetProduct: string;
    procedure SetProduct(const Value: string);
    function GetSnapshotDownloadUrl: string;
    procedure SetSnapshotDownloadUrl(const Value: string);
    function GetSnapshotId: string;
    procedure SetSnapshotId(const Value: string);
  strict protected
    function Obj: TGetDeployablePatchSnapshotForInstanceResponse;
  public
    function IsSetInstanceId: Boolean;
    function IsSetProduct: Boolean;
    function IsSetSnapshotDownloadUrl: Boolean;
    function IsSetSnapshotId: Boolean;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property Product: string read GetProduct write SetProduct;
    property SnapshotDownloadUrl: string read GetSnapshotDownloadUrl write SetSnapshotDownloadUrl;
    property SnapshotId: string read GetSnapshotId write SetSnapshotId;
  end;
  
implementation

{ TGetDeployablePatchSnapshotForInstanceResponse }

function TGetDeployablePatchSnapshotForInstanceResponse.Obj: TGetDeployablePatchSnapshotForInstanceResponse;
begin
  Result := Self;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TGetDeployablePatchSnapshotForInstanceResponse.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.GetProduct: string;
begin
  Result := FProduct.ValueOrDefault;
end;

procedure TGetDeployablePatchSnapshotForInstanceResponse.SetProduct(const Value: string);
begin
  FProduct := Value;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.IsSetProduct: Boolean;
begin
  Result := FProduct.HasValue;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.GetSnapshotDownloadUrl: string;
begin
  Result := FSnapshotDownloadUrl.ValueOrDefault;
end;

procedure TGetDeployablePatchSnapshotForInstanceResponse.SetSnapshotDownloadUrl(const Value: string);
begin
  FSnapshotDownloadUrl := Value;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.IsSetSnapshotDownloadUrl: Boolean;
begin
  Result := FSnapshotDownloadUrl.HasValue;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.GetSnapshotId: string;
begin
  Result := FSnapshotId.ValueOrDefault;
end;

procedure TGetDeployablePatchSnapshotForInstanceResponse.SetSnapshotId(const Value: string);
begin
  FSnapshotId := Value;
end;

function TGetDeployablePatchSnapshotForInstanceResponse.IsSetSnapshotId: Boolean;
begin
  Result := FSnapshotId.HasValue;
end;

end.
