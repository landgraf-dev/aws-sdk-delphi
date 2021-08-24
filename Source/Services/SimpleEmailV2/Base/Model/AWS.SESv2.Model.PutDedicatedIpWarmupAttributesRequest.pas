unit AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TPutDedicatedIpWarmupAttributesRequest = class;
  
  IPutDedicatedIpWarmupAttributesRequest = interface
    function GetIp: string;
    procedure SetIp(const Value: string);
    function GetWarmupPercentage: Integer;
    procedure SetWarmupPercentage(const Value: Integer);
    function Obj: TPutDedicatedIpWarmupAttributesRequest;
    function IsSetIp: Boolean;
    function IsSetWarmupPercentage: Boolean;
    property Ip: string read GetIp write SetIp;
    property WarmupPercentage: Integer read GetWarmupPercentage write SetWarmupPercentage;
  end;
  
  TPutDedicatedIpWarmupAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutDedicatedIpWarmupAttributesRequest)
  strict private
    FIp: Nullable<string>;
    FWarmupPercentage: Nullable<Integer>;
    function GetIp: string;
    procedure SetIp(const Value: string);
    function GetWarmupPercentage: Integer;
    procedure SetWarmupPercentage(const Value: Integer);
  strict protected
    function Obj: TPutDedicatedIpWarmupAttributesRequest;
  public
    function IsSetIp: Boolean;
    function IsSetWarmupPercentage: Boolean;
    property Ip: string read GetIp write SetIp;
    property WarmupPercentage: Integer read GetWarmupPercentage write SetWarmupPercentage;
  end;
  
implementation

{ TPutDedicatedIpWarmupAttributesRequest }

function TPutDedicatedIpWarmupAttributesRequest.Obj: TPutDedicatedIpWarmupAttributesRequest;
begin
  Result := Self;
end;

function TPutDedicatedIpWarmupAttributesRequest.GetIp: string;
begin
  Result := FIp.ValueOrDefault;
end;

procedure TPutDedicatedIpWarmupAttributesRequest.SetIp(const Value: string);
begin
  FIp := Value;
end;

function TPutDedicatedIpWarmupAttributesRequest.IsSetIp: Boolean;
begin
  Result := FIp.HasValue;
end;

function TPutDedicatedIpWarmupAttributesRequest.GetWarmupPercentage: Integer;
begin
  Result := FWarmupPercentage.ValueOrDefault;
end;

procedure TPutDedicatedIpWarmupAttributesRequest.SetWarmupPercentage(const Value: Integer);
begin
  FWarmupPercentage := Value;
end;

function TPutDedicatedIpWarmupAttributesRequest.IsSetWarmupPercentage: Boolean;
begin
  Result := FWarmupPercentage.HasValue;
end;

end.
