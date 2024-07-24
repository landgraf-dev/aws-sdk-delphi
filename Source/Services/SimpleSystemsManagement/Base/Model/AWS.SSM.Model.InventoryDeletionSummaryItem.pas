unit AWS.SSM.Model.InventoryDeletionSummaryItem;

interface

uses
  AWS.Nullable;

type
  TInventoryDeletionSummaryItem = class;
  
  IInventoryDeletionSummaryItem = interface
    function GetCount: Integer;
    procedure SetCount(const Value: Integer);
    function GetRemainingCount: Integer;
    procedure SetRemainingCount(const Value: Integer);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
    function Obj: TInventoryDeletionSummaryItem;
    function IsSetCount: Boolean;
    function IsSetRemainingCount: Boolean;
    function IsSetVersion: Boolean;
    property Count: Integer read GetCount write SetCount;
    property RemainingCount: Integer read GetRemainingCount write SetRemainingCount;
    property Version: string read GetVersion write SetVersion;
  end;
  
  TInventoryDeletionSummaryItem = class
  strict private
    FCount: Nullable<Integer>;
    FRemainingCount: Nullable<Integer>;
    FVersion: Nullable<string>;
    function GetCount: Integer;
    procedure SetCount(const Value: Integer);
    function GetRemainingCount: Integer;
    procedure SetRemainingCount(const Value: Integer);
    function GetVersion: string;
    procedure SetVersion(const Value: string);
  strict protected
    function Obj: TInventoryDeletionSummaryItem;
  public
    function IsSetCount: Boolean;
    function IsSetRemainingCount: Boolean;
    function IsSetVersion: Boolean;
    property Count: Integer read GetCount write SetCount;
    property RemainingCount: Integer read GetRemainingCount write SetRemainingCount;
    property Version: string read GetVersion write SetVersion;
  end;
  
implementation

{ TInventoryDeletionSummaryItem }

function TInventoryDeletionSummaryItem.Obj: TInventoryDeletionSummaryItem;
begin
  Result := Self;
end;

function TInventoryDeletionSummaryItem.GetCount: Integer;
begin
  Result := FCount.ValueOrDefault;
end;

procedure TInventoryDeletionSummaryItem.SetCount(const Value: Integer);
begin
  FCount := Value;
end;

function TInventoryDeletionSummaryItem.IsSetCount: Boolean;
begin
  Result := FCount.HasValue;
end;

function TInventoryDeletionSummaryItem.GetRemainingCount: Integer;
begin
  Result := FRemainingCount.ValueOrDefault;
end;

procedure TInventoryDeletionSummaryItem.SetRemainingCount(const Value: Integer);
begin
  FRemainingCount := Value;
end;

function TInventoryDeletionSummaryItem.IsSetRemainingCount: Boolean;
begin
  Result := FRemainingCount.HasValue;
end;

function TInventoryDeletionSummaryItem.GetVersion: string;
begin
  Result := FVersion.ValueOrDefault;
end;

procedure TInventoryDeletionSummaryItem.SetVersion(const Value: string);
begin
  FVersion := Value;
end;

function TInventoryDeletionSummaryItem.IsSetVersion: Boolean;
begin
  Result := FVersion.HasValue;
end;

end.
