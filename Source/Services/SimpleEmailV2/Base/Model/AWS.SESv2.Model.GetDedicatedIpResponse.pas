unit AWS.SESv2.Model.GetDedicatedIpResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DedicatedIp;

type
  TGetDedicatedIpResponse = class;
  
  IGetDedicatedIpResponse = interface(IAmazonWebServiceResponse)
    function GetDedicatedIp: TDedicatedIp;
    procedure SetDedicatedIp(const Value: TDedicatedIp);
    function GetKeepDedicatedIp: Boolean;
    procedure SetKeepDedicatedIp(const Value: Boolean);
    function Obj: TGetDedicatedIpResponse;
    function IsSetDedicatedIp: Boolean;
    property DedicatedIp: TDedicatedIp read GetDedicatedIp write SetDedicatedIp;
    property KeepDedicatedIp: Boolean read GetKeepDedicatedIp write SetKeepDedicatedIp;
  end;
  
  TGetDedicatedIpResponse = class(TAmazonWebServiceResponse, IGetDedicatedIpResponse)
  strict private
    FDedicatedIp: TDedicatedIp;
    FKeepDedicatedIp: Boolean;
    function GetDedicatedIp: TDedicatedIp;
    procedure SetDedicatedIp(const Value: TDedicatedIp);
    function GetKeepDedicatedIp: Boolean;
    procedure SetKeepDedicatedIp(const Value: Boolean);
  strict protected
    function Obj: TGetDedicatedIpResponse;
  public
    destructor Destroy; override;
    function IsSetDedicatedIp: Boolean;
    property DedicatedIp: TDedicatedIp read GetDedicatedIp write SetDedicatedIp;
    property KeepDedicatedIp: Boolean read GetKeepDedicatedIp write SetKeepDedicatedIp;
  end;
  
implementation

{ TGetDedicatedIpResponse }

destructor TGetDedicatedIpResponse.Destroy;
begin
  DedicatedIp := nil;
  inherited;
end;

function TGetDedicatedIpResponse.Obj: TGetDedicatedIpResponse;
begin
  Result := Self;
end;

function TGetDedicatedIpResponse.GetDedicatedIp: TDedicatedIp;
begin
  Result := FDedicatedIp;
end;

procedure TGetDedicatedIpResponse.SetDedicatedIp(const Value: TDedicatedIp);
begin
  if FDedicatedIp <> Value then
  begin
    if not KeepDedicatedIp then
      FDedicatedIp.Free;
    FDedicatedIp := Value;
  end;
end;

function TGetDedicatedIpResponse.GetKeepDedicatedIp: Boolean;
begin
  Result := FKeepDedicatedIp;
end;

procedure TGetDedicatedIpResponse.SetKeepDedicatedIp(const Value: Boolean);
begin
  FKeepDedicatedIp := Value;
end;

function TGetDedicatedIpResponse.IsSetDedicatedIp: Boolean;
begin
  Result := FDedicatedIp <> nil;
end;

end.
