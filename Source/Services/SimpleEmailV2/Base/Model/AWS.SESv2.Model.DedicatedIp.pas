unit AWS.SESv2.Model.DedicatedIp;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TDedicatedIp = class;
  
  IDedicatedIp = interface
    function GetIp: string;
    procedure SetIp(const Value: string);
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
    function GetWarmupPercentage: Integer;
    procedure SetWarmupPercentage(const Value: Integer);
    function GetWarmupStatus: TWarmupStatus;
    procedure SetWarmupStatus(const Value: TWarmupStatus);
    function Obj: TDedicatedIp;
    function IsSetIp: Boolean;
    function IsSetPoolName: Boolean;
    function IsSetWarmupPercentage: Boolean;
    function IsSetWarmupStatus: Boolean;
    property Ip: string read GetIp write SetIp;
    property PoolName: string read GetPoolName write SetPoolName;
    property WarmupPercentage: Integer read GetWarmupPercentage write SetWarmupPercentage;
    property WarmupStatus: TWarmupStatus read GetWarmupStatus write SetWarmupStatus;
  end;
  
  TDedicatedIp = class
  strict private
    FIp: Nullable<string>;
    FPoolName: Nullable<string>;
    FWarmupPercentage: Nullable<Integer>;
    FWarmupStatus: Nullable<TWarmupStatus>;
    function GetIp: string;
    procedure SetIp(const Value: string);
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
    function GetWarmupPercentage: Integer;
    procedure SetWarmupPercentage(const Value: Integer);
    function GetWarmupStatus: TWarmupStatus;
    procedure SetWarmupStatus(const Value: TWarmupStatus);
  strict protected
    function Obj: TDedicatedIp;
  public
    function IsSetIp: Boolean;
    function IsSetPoolName: Boolean;
    function IsSetWarmupPercentage: Boolean;
    function IsSetWarmupStatus: Boolean;
    property Ip: string read GetIp write SetIp;
    property PoolName: string read GetPoolName write SetPoolName;
    property WarmupPercentage: Integer read GetWarmupPercentage write SetWarmupPercentage;
    property WarmupStatus: TWarmupStatus read GetWarmupStatus write SetWarmupStatus;
  end;
  
implementation

{ TDedicatedIp }

function TDedicatedIp.Obj: TDedicatedIp;
begin
  Result := Self;
end;

function TDedicatedIp.GetIp: string;
begin
  Result := FIp.ValueOrDefault;
end;

procedure TDedicatedIp.SetIp(const Value: string);
begin
  FIp := Value;
end;

function TDedicatedIp.IsSetIp: Boolean;
begin
  Result := FIp.HasValue;
end;

function TDedicatedIp.GetPoolName: string;
begin
  Result := FPoolName.ValueOrDefault;
end;

procedure TDedicatedIp.SetPoolName(const Value: string);
begin
  FPoolName := Value;
end;

function TDedicatedIp.IsSetPoolName: Boolean;
begin
  Result := FPoolName.HasValue;
end;

function TDedicatedIp.GetWarmupPercentage: Integer;
begin
  Result := FWarmupPercentage.ValueOrDefault;
end;

procedure TDedicatedIp.SetWarmupPercentage(const Value: Integer);
begin
  FWarmupPercentage := Value;
end;

function TDedicatedIp.IsSetWarmupPercentage: Boolean;
begin
  Result := FWarmupPercentage.HasValue;
end;

function TDedicatedIp.GetWarmupStatus: TWarmupStatus;
begin
  Result := FWarmupStatus.ValueOrDefault;
end;

procedure TDedicatedIp.SetWarmupStatus(const Value: TWarmupStatus);
begin
  FWarmupStatus := Value;
end;

function TDedicatedIp.IsSetWarmupStatus: Boolean;
begin
  Result := FWarmupStatus.HasValue;
end;

end.
