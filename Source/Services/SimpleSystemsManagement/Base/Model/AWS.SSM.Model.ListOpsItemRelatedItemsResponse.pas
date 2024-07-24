unit AWS.SSM.Model.ListOpsItemRelatedItemsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.OpsItemRelatedItemSummary;

type
  TListOpsItemRelatedItemsResponse = class;
  
  IListOpsItemRelatedItemsResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSummaries: TObjectList<TOpsItemRelatedItemSummary>;
    procedure SetSummaries(const Value: TObjectList<TOpsItemRelatedItemSummary>);
    function GetKeepSummaries: Boolean;
    procedure SetKeepSummaries(const Value: Boolean);
    function Obj: TListOpsItemRelatedItemsResponse;
    function IsSetNextToken: Boolean;
    function IsSetSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Summaries: TObjectList<TOpsItemRelatedItemSummary> read GetSummaries write SetSummaries;
    property KeepSummaries: Boolean read GetKeepSummaries write SetKeepSummaries;
  end;
  
  TListOpsItemRelatedItemsResponse = class(TAmazonWebServiceResponse, IListOpsItemRelatedItemsResponse)
  strict private
    FNextToken: Nullable<string>;
    FSummaries: TObjectList<TOpsItemRelatedItemSummary>;
    FKeepSummaries: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetSummaries: TObjectList<TOpsItemRelatedItemSummary>;
    procedure SetSummaries(const Value: TObjectList<TOpsItemRelatedItemSummary>);
    function GetKeepSummaries: Boolean;
    procedure SetKeepSummaries(const Value: Boolean);
  strict protected
    function Obj: TListOpsItemRelatedItemsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetSummaries: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property Summaries: TObjectList<TOpsItemRelatedItemSummary> read GetSummaries write SetSummaries;
    property KeepSummaries: Boolean read GetKeepSummaries write SetKeepSummaries;
  end;
  
implementation

{ TListOpsItemRelatedItemsResponse }

constructor TListOpsItemRelatedItemsResponse.Create;
begin
  inherited;
  FSummaries := TObjectList<TOpsItemRelatedItemSummary>.Create;
end;

destructor TListOpsItemRelatedItemsResponse.Destroy;
begin
  Summaries := nil;
  inherited;
end;

function TListOpsItemRelatedItemsResponse.Obj: TListOpsItemRelatedItemsResponse;
begin
  Result := Self;
end;

function TListOpsItemRelatedItemsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListOpsItemRelatedItemsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListOpsItemRelatedItemsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListOpsItemRelatedItemsResponse.GetSummaries: TObjectList<TOpsItemRelatedItemSummary>;
begin
  Result := FSummaries;
end;

procedure TListOpsItemRelatedItemsResponse.SetSummaries(const Value: TObjectList<TOpsItemRelatedItemSummary>);
begin
  if FSummaries <> Value then
  begin
    if not KeepSummaries then
      FSummaries.Free;
    FSummaries := Value;
  end;
end;

function TListOpsItemRelatedItemsResponse.GetKeepSummaries: Boolean;
begin
  Result := FKeepSummaries;
end;

procedure TListOpsItemRelatedItemsResponse.SetKeepSummaries(const Value: Boolean);
begin
  FKeepSummaries := Value;
end;

function TListOpsItemRelatedItemsResponse.IsSetSummaries: Boolean;
begin
  Result := (FSummaries <> nil) and (FSummaries.Count > 0);
end;

end.
