unit AWS.SESv2.Model.GetDedicatedIpsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DedicatedIp, 
  AWS.Nullable;

type
  TGetDedicatedIpsResponse = class;
  
  IGetDedicatedIpsResponse = interface(IAmazonWebServiceResponse)
    function GetDedicatedIps: TObjectList<TDedicatedIp>;
    procedure SetDedicatedIps(const Value: TObjectList<TDedicatedIp>);
    function GetKeepDedicatedIps: Boolean;
    procedure SetKeepDedicatedIps(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TGetDedicatedIpsResponse;
    function IsSetDedicatedIps: Boolean;
    function IsSetNextToken: Boolean;
    property DedicatedIps: TObjectList<TDedicatedIp> read GetDedicatedIps write SetDedicatedIps;
    property KeepDedicatedIps: Boolean read GetKeepDedicatedIps write SetKeepDedicatedIps;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TGetDedicatedIpsResponse = class(TAmazonWebServiceResponse, IGetDedicatedIpsResponse)
  strict private
    FDedicatedIps: TObjectList<TDedicatedIp>;
    FKeepDedicatedIps: Boolean;
    FNextToken: Nullable<string>;
    function GetDedicatedIps: TObjectList<TDedicatedIp>;
    procedure SetDedicatedIps(const Value: TObjectList<TDedicatedIp>);
    function GetKeepDedicatedIps: Boolean;
    procedure SetKeepDedicatedIps(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TGetDedicatedIpsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDedicatedIps: Boolean;
    function IsSetNextToken: Boolean;
    property DedicatedIps: TObjectList<TDedicatedIp> read GetDedicatedIps write SetDedicatedIps;
    property KeepDedicatedIps: Boolean read GetKeepDedicatedIps write SetKeepDedicatedIps;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TGetDedicatedIpsResponse }

constructor TGetDedicatedIpsResponse.Create;
begin
  inherited;
  FDedicatedIps := TObjectList<TDedicatedIp>.Create;
end;

destructor TGetDedicatedIpsResponse.Destroy;
begin
  DedicatedIps := nil;
  inherited;
end;

function TGetDedicatedIpsResponse.Obj: TGetDedicatedIpsResponse;
begin
  Result := Self;
end;

function TGetDedicatedIpsResponse.GetDedicatedIps: TObjectList<TDedicatedIp>;
begin
  Result := FDedicatedIps;
end;

procedure TGetDedicatedIpsResponse.SetDedicatedIps(const Value: TObjectList<TDedicatedIp>);
begin
  if FDedicatedIps <> Value then
  begin
    if not KeepDedicatedIps then
      FDedicatedIps.Free;
    FDedicatedIps := Value;
  end;
end;

function TGetDedicatedIpsResponse.GetKeepDedicatedIps: Boolean;
begin
  Result := FKeepDedicatedIps;
end;

procedure TGetDedicatedIpsResponse.SetKeepDedicatedIps(const Value: Boolean);
begin
  FKeepDedicatedIps := Value;
end;

function TGetDedicatedIpsResponse.IsSetDedicatedIps: Boolean;
begin
  Result := (FDedicatedIps <> nil) and (FDedicatedIps.Count > 0);
end;

function TGetDedicatedIpsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetDedicatedIpsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetDedicatedIpsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
