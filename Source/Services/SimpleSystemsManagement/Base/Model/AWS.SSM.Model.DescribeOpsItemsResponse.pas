unit AWS.SSM.Model.DescribeOpsItemsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemSummary;

type
  TDescribeOpsItemsResponse = class;
  
  IDescribeOpsItemsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsItemSummaries: TObjectList<TOpsItemSummary>;
    procedure SetOpsItemSummaries(const Value: TObjectList<TOpsItemSummary>);
    function GetKeepOpsItemSummaries: Boolean;
    procedure SetKeepOpsItemSummaries(const Value: Boolean);
    function Obj: TDescribeOpsItemsResponse;
    function IsSetNextToken: Boolean;
    function IsSetOpsItemSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsItemSummaries: TObjectList<TOpsItemSummary> read GetOpsItemSummaries write SetOpsItemSummaries;
    property KeepOpsItemSummaries: Boolean read GetKeepOpsItemSummaries write SetKeepOpsItemSummaries;
  end;
  
  TDescribeOpsItemsResponse = class(TAmazonWebServiceResponse, IDescribeOpsItemsResponse)
  strict private
    FNextToken: Nullable<string>;
    FOpsItemSummaries: TObjectList<TOpsItemSummary>;
    FKeepOpsItemSummaries: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetOpsItemSummaries: TObjectList<TOpsItemSummary>;
    procedure SetOpsItemSummaries(const Value: TObjectList<TOpsItemSummary>);
    function GetKeepOpsItemSummaries: Boolean;
    procedure SetKeepOpsItemSummaries(const Value: Boolean);
  strict protected
    function Obj: TDescribeOpsItemsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetOpsItemSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property OpsItemSummaries: TObjectList<TOpsItemSummary> read GetOpsItemSummaries write SetOpsItemSummaries;
    property KeepOpsItemSummaries: Boolean read GetKeepOpsItemSummaries write SetKeepOpsItemSummaries;
  end;
  
implementation

{ TDescribeOpsItemsResponse }

constructor TDescribeOpsItemsResponse.Create;
begin
  inherited;
  FOpsItemSummaries := TObjectList<TOpsItemSummary>.Create;
end;

destructor TDescribeOpsItemsResponse.Destroy;
begin
  OpsItemSummaries := nil;
  inherited;
end;

function TDescribeOpsItemsResponse.Obj: TDescribeOpsItemsResponse;
begin
  Result := Self;
end;

function TDescribeOpsItemsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeOpsItemsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeOpsItemsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TDescribeOpsItemsResponse.GetOpsItemSummaries: TObjectList<TOpsItemSummary>;
begin
  Result := FOpsItemSummaries;
end;

procedure TDescribeOpsItemsResponse.SetOpsItemSummaries(const Value: TObjectList<TOpsItemSummary>);
begin
  if FOpsItemSummaries <> Value then
  begin
    if not KeepOpsItemSummaries then
      FOpsItemSummaries.Free;
    FOpsItemSummaries := Value;
  end;
end;

function TDescribeOpsItemsResponse.GetKeepOpsItemSummaries: Boolean;
begin
  Result := FKeepOpsItemSummaries;
end;

procedure TDescribeOpsItemsResponse.SetKeepOpsItemSummaries(const Value: Boolean);
begin
  FKeepOpsItemSummaries := Value;
end;

function TDescribeOpsItemsResponse.IsSetOpsItemSummaries: Boolean;
begin
  Result := (FOpsItemSummaries <> nil) and (FOpsItemSummaries.Count > 0);
end;

end.
