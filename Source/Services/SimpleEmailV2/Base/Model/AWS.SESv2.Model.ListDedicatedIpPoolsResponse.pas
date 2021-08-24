unit AWS.SESv2.Model.ListDedicatedIpPoolsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TListDedicatedIpPoolsResponse = class;
  
  IListDedicatedIpPoolsResponse = interface(IAmazonWebServiceResponse)
    function GetDedicatedIpPools: TList<string>;
    procedure SetDedicatedIpPools(const Value: TList<string>);
    function GetKeepDedicatedIpPools: Boolean;
    procedure SetKeepDedicatedIpPools(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListDedicatedIpPoolsResponse;
    function IsSetDedicatedIpPools: Boolean;
    function IsSetNextToken: Boolean;
    property DedicatedIpPools: TList<string> read GetDedicatedIpPools write SetDedicatedIpPools;
    property KeepDedicatedIpPools: Boolean read GetKeepDedicatedIpPools write SetKeepDedicatedIpPools;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListDedicatedIpPoolsResponse = class(TAmazonWebServiceResponse, IListDedicatedIpPoolsResponse)
  strict private
    FDedicatedIpPools: TList<string>;
    FKeepDedicatedIpPools: Boolean;
    FNextToken: Nullable<string>;
    function GetDedicatedIpPools: TList<string>;
    procedure SetDedicatedIpPools(const Value: TList<string>);
    function GetKeepDedicatedIpPools: Boolean;
    procedure SetKeepDedicatedIpPools(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListDedicatedIpPoolsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetDedicatedIpPools: Boolean;
    function IsSetNextToken: Boolean;
    property DedicatedIpPools: TList<string> read GetDedicatedIpPools write SetDedicatedIpPools;
    property KeepDedicatedIpPools: Boolean read GetKeepDedicatedIpPools write SetKeepDedicatedIpPools;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListDedicatedIpPoolsResponse }

constructor TListDedicatedIpPoolsResponse.Create;
begin
  inherited;
  FDedicatedIpPools := TList<string>.Create;
end;

destructor TListDedicatedIpPoolsResponse.Destroy;
begin
  DedicatedIpPools := nil;
  inherited;
end;

function TListDedicatedIpPoolsResponse.Obj: TListDedicatedIpPoolsResponse;
begin
  Result := Self;
end;

function TListDedicatedIpPoolsResponse.GetDedicatedIpPools: TList<string>;
begin
  Result := FDedicatedIpPools;
end;

procedure TListDedicatedIpPoolsResponse.SetDedicatedIpPools(const Value: TList<string>);
begin
  if FDedicatedIpPools <> Value then
  begin
    if not KeepDedicatedIpPools then
      FDedicatedIpPools.Free;
    FDedicatedIpPools := Value;
  end;
end;

function TListDedicatedIpPoolsResponse.GetKeepDedicatedIpPools: Boolean;
begin
  Result := FKeepDedicatedIpPools;
end;

procedure TListDedicatedIpPoolsResponse.SetKeepDedicatedIpPools(const Value: Boolean);
begin
  FKeepDedicatedIpPools := Value;
end;

function TListDedicatedIpPoolsResponse.IsSetDedicatedIpPools: Boolean;
begin
  Result := (FDedicatedIpPools <> nil) and (FDedicatedIpPools.Count > 0);
end;

function TListDedicatedIpPoolsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListDedicatedIpPoolsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListDedicatedIpPoolsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
