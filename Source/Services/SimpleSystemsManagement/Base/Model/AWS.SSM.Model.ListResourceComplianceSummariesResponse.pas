unit AWS.SSM.Model.ListResourceComplianceSummariesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Model.ResourceComplianceSummaryItem;

type
  TListResourceComplianceSummariesResponse = class;
  
  IListResourceComplianceSummariesResponse = interface(IAmazonWebServiceResponse)
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceComplianceSummaryItems: TObjectList<TResourceComplianceSummaryItem>;
    procedure SetResourceComplianceSummaryItems(const Value: TObjectList<TResourceComplianceSummaryItem>);
    function GetKeepResourceComplianceSummaryItems: Boolean;
    procedure SetKeepResourceComplianceSummaryItems(const Value: Boolean);
    function Obj: TListResourceComplianceSummariesResponse;
    function IsSetNextToken: Boolean;
    function IsSetResourceComplianceSummaryItems: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceComplianceSummaryItems: TObjectList<TResourceComplianceSummaryItem> read GetResourceComplianceSummaryItems write SetResourceComplianceSummaryItems;
    property KeepResourceComplianceSummaryItems: Boolean read GetKeepResourceComplianceSummaryItems write SetKeepResourceComplianceSummaryItems;
  end;
  
  TListResourceComplianceSummariesResponse = class(TAmazonWebServiceResponse, IListResourceComplianceSummariesResponse)
  strict private
    FNextToken: Nullable<string>;
    FResourceComplianceSummaryItems: TObjectList<TResourceComplianceSummaryItem>;
    FKeepResourceComplianceSummaryItems: Boolean;
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function GetResourceComplianceSummaryItems: TObjectList<TResourceComplianceSummaryItem>;
    procedure SetResourceComplianceSummaryItems(const Value: TObjectList<TResourceComplianceSummaryItem>);
    function GetKeepResourceComplianceSummaryItems: Boolean;
    procedure SetKeepResourceComplianceSummaryItems(const Value: Boolean);
  strict protected
    function Obj: TListResourceComplianceSummariesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetNextToken: Boolean;
    function IsSetResourceComplianceSummaryItems: Boolean;
    property NextToken: string read GetNextToken write SetNextToken;
    property ResourceComplianceSummaryItems: TObjectList<TResourceComplianceSummaryItem> read GetResourceComplianceSummaryItems write SetResourceComplianceSummaryItems;
    property KeepResourceComplianceSummaryItems: Boolean read GetKeepResourceComplianceSummaryItems write SetKeepResourceComplianceSummaryItems;
  end;
  
implementation

{ TListResourceComplianceSummariesResponse }

constructor TListResourceComplianceSummariesResponse.Create;
begin
  inherited;
  FResourceComplianceSummaryItems := TObjectList<TResourceComplianceSummaryItem>.Create;
end;

destructor TListResourceComplianceSummariesResponse.Destroy;
begin
  ResourceComplianceSummaryItems := nil;
  inherited;
end;

function TListResourceComplianceSummariesResponse.Obj: TListResourceComplianceSummariesResponse;
begin
  Result := Self;
end;

function TListResourceComplianceSummariesResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListResourceComplianceSummariesResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListResourceComplianceSummariesResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

function TListResourceComplianceSummariesResponse.GetResourceComplianceSummaryItems: TObjectList<TResourceComplianceSummaryItem>;
begin
  Result := FResourceComplianceSummaryItems;
end;

procedure TListResourceComplianceSummariesResponse.SetResourceComplianceSummaryItems(const Value: TObjectList<TResourceComplianceSummaryItem>);
begin
  if FResourceComplianceSummaryItems <> Value then
  begin
    if not KeepResourceComplianceSummaryItems then
      FResourceComplianceSummaryItems.Free;
    FResourceComplianceSummaryItems := Value;
  end;
end;

function TListResourceComplianceSummariesResponse.GetKeepResourceComplianceSummaryItems: Boolean;
begin
  Result := FKeepResourceComplianceSummaryItems;
end;

procedure TListResourceComplianceSummariesResponse.SetKeepResourceComplianceSummaryItems(const Value: Boolean);
begin
  FKeepResourceComplianceSummaryItems := Value;
end;

function TListResourceComplianceSummariesResponse.IsSetResourceComplianceSummaryItems: Boolean;
begin
  Result := (FResourceComplianceSummaryItems <> nil) and (FResourceComplianceSummaryItems.Count > 0);
end;

end.
