unit AWS.SSM.Model.InventoryDeletionSummary;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Model.InventoryDeletionSummaryItem;

type
  TInventoryDeletionSummary = class;
  
  IInventoryDeletionSummary = interface
    function GetRemainingCount: Integer;
    procedure SetRemainingCount(const Value: Integer);
    function GetSummaryItems: TObjectList<TInventoryDeletionSummaryItem>;
    procedure SetSummaryItems(const Value: TObjectList<TInventoryDeletionSummaryItem>);
    function GetKeepSummaryItems: Boolean;
    procedure SetKeepSummaryItems(const Value: Boolean);
    function GetTotalCount: Integer;
    procedure SetTotalCount(const Value: Integer);
    function Obj: TInventoryDeletionSummary;
    function IsSetRemainingCount: Boolean;
    function IsSetSummaryItems: Boolean;
    function IsSetTotalCount: Boolean;
    property RemainingCount: Integer read GetRemainingCount write SetRemainingCount;
    property SummaryItems: TObjectList<TInventoryDeletionSummaryItem> read GetSummaryItems write SetSummaryItems;
    property KeepSummaryItems: Boolean read GetKeepSummaryItems write SetKeepSummaryItems;
    property TotalCount: Integer read GetTotalCount write SetTotalCount;
  end;
  
  TInventoryDeletionSummary = class
  strict private
    FRemainingCount: Nullable<Integer>;
    FSummaryItems: TObjectList<TInventoryDeletionSummaryItem>;
    FKeepSummaryItems: Boolean;
    FTotalCount: Nullable<Integer>;
    function GetRemainingCount: Integer;
    procedure SetRemainingCount(const Value: Integer);
    function GetSummaryItems: TObjectList<TInventoryDeletionSummaryItem>;
    procedure SetSummaryItems(const Value: TObjectList<TInventoryDeletionSummaryItem>);
    function GetKeepSummaryItems: Boolean;
    procedure SetKeepSummaryItems(const Value: Boolean);
    function GetTotalCount: Integer;
    procedure SetTotalCount(const Value: Integer);
  strict protected
    function Obj: TInventoryDeletionSummary;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRemainingCount: Boolean;
    function IsSetSummaryItems: Boolean;
    function IsSetTotalCount: Boolean;
    property RemainingCount: Integer read GetRemainingCount write SetRemainingCount;
    property SummaryItems: TObjectList<TInventoryDeletionSummaryItem> read GetSummaryItems write SetSummaryItems;
    property KeepSummaryItems: Boolean read GetKeepSummaryItems write SetKeepSummaryItems;
    property TotalCount: Integer read GetTotalCount write SetTotalCount;
  end;
  
implementation

{ TInventoryDeletionSummary }

constructor TInventoryDeletionSummary.Create;
begin
  inherited;
  FSummaryItems := TObjectList<TInventoryDeletionSummaryItem>.Create;
end;

destructor TInventoryDeletionSummary.Destroy;
begin
  SummaryItems := nil;
  inherited;
end;

function TInventoryDeletionSummary.Obj: TInventoryDeletionSummary;
begin
  Result := Self;
end;

function TInventoryDeletionSummary.GetRemainingCount: Integer;
begin
  Result := FRemainingCount.ValueOrDefault;
end;

procedure TInventoryDeletionSummary.SetRemainingCount(const Value: Integer);
begin
  FRemainingCount := Value;
end;

function TInventoryDeletionSummary.IsSetRemainingCount: Boolean;
begin
  Result := FRemainingCount.HasValue;
end;

function TInventoryDeletionSummary.GetSummaryItems: TObjectList<TInventoryDeletionSummaryItem>;
begin
  Result := FSummaryItems;
end;

procedure TInventoryDeletionSummary.SetSummaryItems(const Value: TObjectList<TInventoryDeletionSummaryItem>);
begin
  if FSummaryItems <> Value then
  begin
    if not KeepSummaryItems then
      FSummaryItems.Free;
    FSummaryItems := Value;
  end;
end;

function TInventoryDeletionSummary.GetKeepSummaryItems: Boolean;
begin
  Result := FKeepSummaryItems;
end;

procedure TInventoryDeletionSummary.SetKeepSummaryItems(const Value: Boolean);
begin
  FKeepSummaryItems := Value;
end;

function TInventoryDeletionSummary.IsSetSummaryItems: Boolean;
begin
  Result := (FSummaryItems <> nil) and (FSummaryItems.Count > 0);
end;

function TInventoryDeletionSummary.GetTotalCount: Integer;
begin
  Result := FTotalCount.ValueOrDefault;
end;

procedure TInventoryDeletionSummary.SetTotalCount(const Value: Integer);
begin
  FTotalCount := Value;
end;

function TInventoryDeletionSummary.IsSetTotalCount: Boolean;
begin
  Result := FTotalCount.HasValue;
end;

end.
