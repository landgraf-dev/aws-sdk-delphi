unit AWS.SESv2.Model.GetDedicatedIpRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetDedicatedIpRequest = class;
  
  IGetDedicatedIpRequest = interface
    function GetIp: string;
    procedure SetIp(const Value: string);
    function Obj: TGetDedicatedIpRequest;
    function IsSetIp: Boolean;
    property Ip: string read GetIp write SetIp;
  end;
  
  TGetDedicatedIpRequest = class(TAmazonSimpleEmailServiceV2Request, IGetDedicatedIpRequest)
  strict private
    FIp: Nullable<string>;
    function GetIp: string;
    procedure SetIp(const Value: string);
  strict protected
    function Obj: TGetDedicatedIpRequest;
  public
    function IsSetIp: Boolean;
    property Ip: string read GetIp write SetIp;
  end;
  
implementation

{ TGetDedicatedIpRequest }

function TGetDedicatedIpRequest.Obj: TGetDedicatedIpRequest;
begin
  Result := Self;
end;

function TGetDedicatedIpRequest.GetIp: string;
begin
  Result := FIp.ValueOrDefault;
end;

procedure TGetDedicatedIpRequest.SetIp(const Value: string);
begin
  FIp := Value;
end;

function TGetDedicatedIpRequest.IsSetIp: Boolean;
begin
  Result := FIp.HasValue;
end;

end.
