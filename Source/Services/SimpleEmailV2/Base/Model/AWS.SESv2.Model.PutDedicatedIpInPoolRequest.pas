unit AWS.SESv2.Model.PutDedicatedIpInPoolRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TPutDedicatedIpInPoolRequest = class;
  
  IPutDedicatedIpInPoolRequest = interface
    function GetDestinationPoolName: string;
    procedure SetDestinationPoolName(const Value: string);
    function GetIp: string;
    procedure SetIp(const Value: string);
    function Obj: TPutDedicatedIpInPoolRequest;
    function IsSetDestinationPoolName: Boolean;
    function IsSetIp: Boolean;
    property DestinationPoolName: string read GetDestinationPoolName write SetDestinationPoolName;
    property Ip: string read GetIp write SetIp;
  end;
  
  TPutDedicatedIpInPoolRequest = class(TAmazonSimpleEmailServiceV2Request, IPutDedicatedIpInPoolRequest)
  strict private
    FDestinationPoolName: Nullable<string>;
    FIp: Nullable<string>;
    function GetDestinationPoolName: string;
    procedure SetDestinationPoolName(const Value: string);
    function GetIp: string;
    procedure SetIp(const Value: string);
  strict protected
    function Obj: TPutDedicatedIpInPoolRequest;
  public
    function IsSetDestinationPoolName: Boolean;
    function IsSetIp: Boolean;
    property DestinationPoolName: string read GetDestinationPoolName write SetDestinationPoolName;
    property Ip: string read GetIp write SetIp;
  end;
  
implementation

{ TPutDedicatedIpInPoolRequest }

function TPutDedicatedIpInPoolRequest.Obj: TPutDedicatedIpInPoolRequest;
begin
  Result := Self;
end;

function TPutDedicatedIpInPoolRequest.GetDestinationPoolName: string;
begin
  Result := FDestinationPoolName.ValueOrDefault;
end;

procedure TPutDedicatedIpInPoolRequest.SetDestinationPoolName(const Value: string);
begin
  FDestinationPoolName := Value;
end;

function TPutDedicatedIpInPoolRequest.IsSetDestinationPoolName: Boolean;
begin
  Result := FDestinationPoolName.HasValue;
end;

function TPutDedicatedIpInPoolRequest.GetIp: string;
begin
  Result := FIp.ValueOrDefault;
end;

procedure TPutDedicatedIpInPoolRequest.SetIp(const Value: string);
begin
  FIp := Value;
end;

function TPutDedicatedIpInPoolRequest.IsSetIp: Boolean;
begin
  Result := FIp.HasValue;
end;

end.
