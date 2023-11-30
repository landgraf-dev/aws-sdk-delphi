unit AWS.SESv2.Model.GetDedicatedIpsRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TGetDedicatedIpsRequest = class;
  
  IGetDedicatedIpsRequest = interface
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
    function Obj: TGetDedicatedIpsRequest;
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    function IsSetPoolName: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
    property PoolName: string read GetPoolName write SetPoolName;
  end;
  
  TGetDedicatedIpsRequest = class(TAmazonSimpleEmailServiceV2Request, IGetDedicatedIpsRequest)
  strict private
    FNextToken: Nullable<string>;
    FPageSize: Nullable<Integer>;
    FPoolName: Nullable<string>;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetPageSize: Integer;
    procedure SetPageSize(const Value: Integer);
    function GetPoolName: string;
    procedure SetPoolName(const Value: string);
  strict protected
    function Obj: TGetDedicatedIpsRequest;
  public
    function IsSetNextToken: Boolean;
    function IsSetPageSize: Boolean;
    function IsSetPoolName: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property PageSize: Integer read GetPageSize write SetPageSize;
    property PoolName: string read GetPoolName write SetPoolName;
  end;
  
implementation

{ TGetDedicatedIpsRequest }

function TGetDedicatedIpsRequest.Obj: TGetDedicatedIpsRequest;
begin
  Result := Self;
end;

function TGetDedicatedIpsRequest.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TGetDedicatedIpsRequest.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TGetDedicatedIpsRequest.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TGetDedicatedIpsRequest.GetPageSize: Integer;
begin
  Result := FPageSize.ValueOrDefault;
end;

procedure TGetDedicatedIpsRequest.SetPageSize(const Value: Integer);
begin
  FPageSize := Value;
end;

function TGetDedicatedIpsRequest.IsSetPageSize: Boolean;
begin
  Result := FPageSize.HasValue;
end;

function TGetDedicatedIpsRequest.GetPoolName: string;
begin
  Result := FPoolName.ValueOrDefault;
end;

procedure TGetDedicatedIpsRequest.SetPoolName(const Value: string);
begin
  FPoolName := Value;
end;

function TGetDedicatedIpsRequest.IsSetPoolName: Boolean;
begin
  Result := FPoolName.HasValue;
end;

end.
