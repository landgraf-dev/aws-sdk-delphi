unit AWS.SSM.Model.DescribeInventoryDeletionsResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.InventoryDeletionStatusItem, 
  AWS.Nullable;

type
  TDescribeInventoryDeletionsResponse = class;
  
  IDescribeInventoryDeletionsResponse = interface(IAmazonWebServiceResponse)
    function GetInventoryDeletions: TObjectList<TInventoryDeletionStatusItem>;
    procedure SetInventoryDeletions(const Value: TObjectList<TInventoryDeletionStatusItem>);
    function GetKeepInventoryDeletions: Boolean;
    procedure SetKeepInventoryDeletions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeInventoryDeletionsResponse;
    function IsSetInventoryDeletions: Boolean;
    function IsSetNextToken: Boolean;
    property InventoryDeletions: TObjectList<TInventoryDeletionStatusItem> read GetInventoryDeletions write SetInventoryDeletions;
    property KeepInventoryDeletions: Boolean read GetKeepInventoryDeletions write SetKeepInventoryDeletions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeInventoryDeletionsResponse = class(TAmazonWebServiceResponse, IDescribeInventoryDeletionsResponse)
  strict private
    FInventoryDeletions: TObjectList<TInventoryDeletionStatusItem>;
    FKeepInventoryDeletions: Boolean;
    FNextToken: Nullable<string>;
    function GetInventoryDeletions: TObjectList<TInventoryDeletionStatusItem>;
    procedure SetInventoryDeletions(const Value: TObjectList<TInventoryDeletionStatusItem>);
    function GetKeepInventoryDeletions: Boolean;
    procedure SetKeepInventoryDeletions(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeInventoryDeletionsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetInventoryDeletions: Boolean;
    function IsSetNextToken: Boolean;
    property InventoryDeletions: TObjectList<TInventoryDeletionStatusItem> read GetInventoryDeletions write SetInventoryDeletions;
    property KeepInventoryDeletions: Boolean read GetKeepInventoryDeletions write SetKeepInventoryDeletions;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeInventoryDeletionsResponse }

constructor TDescribeInventoryDeletionsResponse.Create;
begin
  inherited;
  FInventoryDeletions := TObjectList<TInventoryDeletionStatusItem>.Create;
end;

destructor TDescribeInventoryDeletionsResponse.Destroy;
begin
  InventoryDeletions := nil;
  inherited;
end;

function TDescribeInventoryDeletionsResponse.Obj: TDescribeInventoryDeletionsResponse;
begin
  Result := Self;
end;

function TDescribeInventoryDeletionsResponse.GetInventoryDeletions: TObjectList<TInventoryDeletionStatusItem>;
begin
  Result := FInventoryDeletions;
end;

procedure TDescribeInventoryDeletionsResponse.SetInventoryDeletions(const Value: TObjectList<TInventoryDeletionStatusItem>);
begin
  if FInventoryDeletions <> Value then
  begin
    if not KeepInventoryDeletions then
      FInventoryDeletions.Free;
    FInventoryDeletions := Value;
  end;
end;

function TDescribeInventoryDeletionsResponse.GetKeepInventoryDeletions: Boolean;
begin
  Result := FKeepInventoryDeletions;
end;

procedure TDescribeInventoryDeletionsResponse.SetKeepInventoryDeletions(const Value: Boolean);
begin
  FKeepInventoryDeletions := Value;
end;

function TDescribeInventoryDeletionsResponse.IsSetInventoryDeletions: Boolean;
begin
  Result := (FInventoryDeletions <> nil) and (FInventoryDeletions.Count > 0);
end;

function TDescribeInventoryDeletionsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeInventoryDeletionsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeInventoryDeletionsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
