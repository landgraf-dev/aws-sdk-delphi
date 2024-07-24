unit AWS.SSM.Model.ListComplianceItemsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.ComplianceItem, 
  AWS.Nullable;

type
  TListComplianceItemsResponse = class;
  
  IListComplianceItemsResponse = interface(IAmazonWebServiceResponse)
    function GetComplianceItems: TObjectList<TComplianceItem>;
    procedure SetComplianceItems(const Value: TObjectList<TComplianceItem>);
    function GetKeepComplianceItems: Boolean;
    procedure SetKeepComplianceItems(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListComplianceItemsResponse;
    function IsSetComplianceItems: Boolean;
    function IsSetNextToken: Boolean;
    property ComplianceItems: TObjectList<TComplianceItem> read GetComplianceItems write SetComplianceItems;
    property KeepComplianceItems: Boolean read GetKeepComplianceItems write SetKeepComplianceItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListComplianceItemsResponse = class(TAmazonWebServiceResponse, IListComplianceItemsResponse)
  strict private
    FComplianceItems: TObjectList<TComplianceItem>;
    FKeepComplianceItems: Boolean;
    FNextToken: Nullable<string>;
    function GetComplianceItems: TObjectList<TComplianceItem>;
    procedure SetComplianceItems(const Value: TObjectList<TComplianceItem>);
    function GetKeepComplianceItems: Boolean;
    procedure SetKeepComplianceItems(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListComplianceItemsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetComplianceItems: Boolean;
    function IsSetNextToken: Boolean;
    property ComplianceItems: TObjectList<TComplianceItem> read GetComplianceItems write SetComplianceItems;
    property KeepComplianceItems: Boolean read GetKeepComplianceItems write SetKeepComplianceItems;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListComplianceItemsResponse }

constructor TListComplianceItemsResponse.Create;
begin
  inherited;
  FComplianceItems := TObjectList<TComplianceItem>.Create;
end;

destructor TListComplianceItemsResponse.Destroy;
begin
  ComplianceItems := nil;
  inherited;
end;

function TListComplianceItemsResponse.Obj: TListComplianceItemsResponse;
begin
  Result := Self;
end;

function TListComplianceItemsResponse.GetComplianceItems: TObjectList<TComplianceItem>;
begin
  Result := FComplianceItems;
end;

procedure TListComplianceItemsResponse.SetComplianceItems(const Value: TObjectList<TComplianceItem>);
begin
  if FComplianceItems <> Value then
  begin
    if not KeepComplianceItems then
      FComplianceItems.Free;
    FComplianceItems := Value;
  end;
end;

function TListComplianceItemsResponse.GetKeepComplianceItems: Boolean;
begin
  Result := FKeepComplianceItems;
end;

procedure TListComplianceItemsResponse.SetKeepComplianceItems(const Value: Boolean);
begin
  FKeepComplianceItems := Value;
end;

function TListComplianceItemsResponse.IsSetComplianceItems: Boolean;
begin
  Result := (FComplianceItems <> nil) and (FComplianceItems.Count > 0);
end;

function TListComplianceItemsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListComplianceItemsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListComplianceItemsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
