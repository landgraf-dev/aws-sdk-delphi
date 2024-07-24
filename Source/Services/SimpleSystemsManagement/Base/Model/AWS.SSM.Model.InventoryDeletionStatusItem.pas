unit AWS.SSM.Model.InventoryDeletionStatusItem;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Model.InventoryDeletionSummary, 
  AWS.SSM.Enums;

type
  TInventoryDeletionStatusItem = class;
  
  IInventoryDeletionStatusItem = interface
    function GetDeletionId: string;
    procedure SetDeletionId(const Value: string);
    function GetDeletionStartTime: TDateTime;
    procedure SetDeletionStartTime(const Value: TDateTime);
    function GetDeletionSummary: TInventoryDeletionSummary;
    procedure SetDeletionSummary(const Value: TInventoryDeletionSummary);
    function GetKeepDeletionSummary: Boolean;
    procedure SetKeepDeletionSummary(const Value: Boolean);
    function GetLastStatus: TInventoryDeletionStatus;
    procedure SetLastStatus(const Value: TInventoryDeletionStatus);
    function GetLastStatusMessage: string;
    procedure SetLastStatusMessage(const Value: string);
    function GetLastStatusUpdateTime: TDateTime;
    procedure SetLastStatusUpdateTime(const Value: TDateTime);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
    function Obj: TInventoryDeletionStatusItem;
    function IsSetDeletionId: Boolean;
    function IsSetDeletionStartTime: Boolean;
    function IsSetDeletionSummary: Boolean;
    function IsSetLastStatus: Boolean;
    function IsSetLastStatusMessage: Boolean;
    function IsSetLastStatusUpdateTime: Boolean;
    function IsSetTypeName: Boolean;
    property DeletionId: string read GetDeletionId write SetDeletionId;
    property DeletionStartTime: TDateTime read GetDeletionStartTime write SetDeletionStartTime;
    property DeletionSummary: TInventoryDeletionSummary read GetDeletionSummary write SetDeletionSummary;
    property KeepDeletionSummary: Boolean read GetKeepDeletionSummary write SetKeepDeletionSummary;
    property LastStatus: TInventoryDeletionStatus read GetLastStatus write SetLastStatus;
    property LastStatusMessage: string read GetLastStatusMessage write SetLastStatusMessage;
    property LastStatusUpdateTime: TDateTime read GetLastStatusUpdateTime write SetLastStatusUpdateTime;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
  TInventoryDeletionStatusItem = class
  strict private
    FDeletionId: Nullable<string>;
    FDeletionStartTime: Nullable<TDateTime>;
    FDeletionSummary: TInventoryDeletionSummary;
    FKeepDeletionSummary: Boolean;
    FLastStatus: Nullable<TInventoryDeletionStatus>;
    FLastStatusMessage: Nullable<string>;
    FLastStatusUpdateTime: Nullable<TDateTime>;
    FTypeName: Nullable<string>;
    function GetDeletionId: string;
    procedure SetDeletionId(const Value: string);
    function GetDeletionStartTime: TDateTime;
    procedure SetDeletionStartTime(const Value: TDateTime);
    function GetDeletionSummary: TInventoryDeletionSummary;
    procedure SetDeletionSummary(const Value: TInventoryDeletionSummary);
    function GetKeepDeletionSummary: Boolean;
    procedure SetKeepDeletionSummary(const Value: Boolean);
    function GetLastStatus: TInventoryDeletionStatus;
    procedure SetLastStatus(const Value: TInventoryDeletionStatus);
    function GetLastStatusMessage: string;
    procedure SetLastStatusMessage(const Value: string);
    function GetLastStatusUpdateTime: TDateTime;
    procedure SetLastStatusUpdateTime(const Value: TDateTime);
    function GetTypeName: string;
    procedure SetTypeName(const Value: string);
  strict protected
    function Obj: TInventoryDeletionStatusItem;
  public
    destructor Destroy; override;
    function IsSetDeletionId: Boolean;
    function IsSetDeletionStartTime: Boolean;
    function IsSetDeletionSummary: Boolean;
    function IsSetLastStatus: Boolean;
    function IsSetLastStatusMessage: Boolean;
    function IsSetLastStatusUpdateTime: Boolean;
    function IsSetTypeName: Boolean;
    property DeletionId: string read GetDeletionId write SetDeletionId;
    property DeletionStartTime: TDateTime read GetDeletionStartTime write SetDeletionStartTime;
    property DeletionSummary: TInventoryDeletionSummary read GetDeletionSummary write SetDeletionSummary;
    property KeepDeletionSummary: Boolean read GetKeepDeletionSummary write SetKeepDeletionSummary;
    property LastStatus: TInventoryDeletionStatus read GetLastStatus write SetLastStatus;
    property LastStatusMessage: string read GetLastStatusMessage write SetLastStatusMessage;
    property LastStatusUpdateTime: TDateTime read GetLastStatusUpdateTime write SetLastStatusUpdateTime;
    property TypeName: string read GetTypeName write SetTypeName;
  end;
  
implementation

{ TInventoryDeletionStatusItem }

destructor TInventoryDeletionStatusItem.Destroy;
begin
  DeletionSummary := nil;
  inherited;
end;

function TInventoryDeletionStatusItem.Obj: TInventoryDeletionStatusItem;
begin
  Result := Self;
end;

function TInventoryDeletionStatusItem.GetDeletionId: string;
begin
  Result := FDeletionId.ValueOrDefault;
end;

procedure TInventoryDeletionStatusItem.SetDeletionId(const Value: string);
begin
  FDeletionId := Value;
end;

function TInventoryDeletionStatusItem.IsSetDeletionId: Boolean;
begin
  Result := FDeletionId.HasValue;
end;

function TInventoryDeletionStatusItem.GetDeletionStartTime: TDateTime;
begin
  Result := FDeletionStartTime.ValueOrDefault;
end;

procedure TInventoryDeletionStatusItem.SetDeletionStartTime(const Value: TDateTime);
begin
  FDeletionStartTime := Value;
end;

function TInventoryDeletionStatusItem.IsSetDeletionStartTime: Boolean;
begin
  Result := FDeletionStartTime.HasValue;
end;

function TInventoryDeletionStatusItem.GetDeletionSummary: TInventoryDeletionSummary;
begin
  Result := FDeletionSummary;
end;

procedure TInventoryDeletionStatusItem.SetDeletionSummary(const Value: TInventoryDeletionSummary);
begin
  if FDeletionSummary <> Value then
  begin
    if not KeepDeletionSummary then
      FDeletionSummary.Free;
    FDeletionSummary := Value;
  end;
end;

function TInventoryDeletionStatusItem.GetKeepDeletionSummary: Boolean;
begin
  Result := FKeepDeletionSummary;
end;

procedure TInventoryDeletionStatusItem.SetKeepDeletionSummary(const Value: Boolean);
begin
  FKeepDeletionSummary := Value;
end;

function TInventoryDeletionStatusItem.IsSetDeletionSummary: Boolean;
begin
  Result := FDeletionSummary <> nil;
end;

function TInventoryDeletionStatusItem.GetLastStatus: TInventoryDeletionStatus;
begin
  Result := FLastStatus.ValueOrDefault;
end;

procedure TInventoryDeletionStatusItem.SetLastStatus(const Value: TInventoryDeletionStatus);
begin
  FLastStatus := Value;
end;

function TInventoryDeletionStatusItem.IsSetLastStatus: Boolean;
begin
  Result := FLastStatus.HasValue;
end;

function TInventoryDeletionStatusItem.GetLastStatusMessage: string;
begin
  Result := FLastStatusMessage.ValueOrDefault;
end;

procedure TInventoryDeletionStatusItem.SetLastStatusMessage(const Value: string);
begin
  FLastStatusMessage := Value;
end;

function TInventoryDeletionStatusItem.IsSetLastStatusMessage: Boolean;
begin
  Result := FLastStatusMessage.HasValue;
end;

function TInventoryDeletionStatusItem.GetLastStatusUpdateTime: TDateTime;
begin
  Result := FLastStatusUpdateTime.ValueOrDefault;
end;

procedure TInventoryDeletionStatusItem.SetLastStatusUpdateTime(const Value: TDateTime);
begin
  FLastStatusUpdateTime := Value;
end;

function TInventoryDeletionStatusItem.IsSetLastStatusUpdateTime: Boolean;
begin
  Result := FLastStatusUpdateTime.HasValue;
end;

function TInventoryDeletionStatusItem.GetTypeName: string;
begin
  Result := FTypeName.ValueOrDefault;
end;

procedure TInventoryDeletionStatusItem.SetTypeName(const Value: string);
begin
  FTypeName := Value;
end;

function TInventoryDeletionStatusItem.IsSetTypeName: Boolean;
begin
  Result := FTypeName.HasValue;
end;

end.
