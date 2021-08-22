unit AWS.LexRuntimeService.Model.IntentSummary;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeService.Enums;

type
  TIntentSummary = class;
  
  IIntentSummary = interface
    function GetCheckpointLabel: string;
    procedure SetCheckpointLabel(const Value: string);
    function GetConfirmationStatus: TConfirmationStatus;
    procedure SetConfirmationStatus(const Value: TConfirmationStatus);
    function GetDialogActionType: TDialogActionType;
    procedure SetDialogActionType(const Value: TDialogActionType);
    function GetFulfillmentState: TFulfillmentState;
    procedure SetFulfillmentState(const Value: TFulfillmentState);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function Obj: TIntentSummary;
    function IsSetCheckpointLabel: Boolean;
    function IsSetConfirmationStatus: Boolean;
    function IsSetDialogActionType: Boolean;
    function IsSetFulfillmentState: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property CheckpointLabel: string read GetCheckpointLabel write SetCheckpointLabel;
    property ConfirmationStatus: TConfirmationStatus read GetConfirmationStatus write SetConfirmationStatus;
    property DialogActionType: TDialogActionType read GetDialogActionType write SetDialogActionType;
    property FulfillmentState: TFulfillmentState read GetFulfillmentState write SetFulfillmentState;
    property IntentName: string read GetIntentName write SetIntentName;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
  end;
  
  TIntentSummary = class
  strict private
    FCheckpointLabel: Nullable<string>;
    FConfirmationStatus: Nullable<TConfirmationStatus>;
    FDialogActionType: Nullable<TDialogActionType>;
    FFulfillmentState: Nullable<TFulfillmentState>;
    FIntentName: Nullable<string>;
    FSlotToElicit: Nullable<string>;
    FSlots: TDictionary<string, string>;
    FKeepSlots: Boolean;
    function GetCheckpointLabel: string;
    procedure SetCheckpointLabel(const Value: string);
    function GetConfirmationStatus: TConfirmationStatus;
    procedure SetConfirmationStatus(const Value: TConfirmationStatus);
    function GetDialogActionType: TDialogActionType;
    procedure SetDialogActionType(const Value: TDialogActionType);
    function GetFulfillmentState: TFulfillmentState;
    procedure SetFulfillmentState(const Value: TFulfillmentState);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
  strict protected
    function Obj: TIntentSummary;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCheckpointLabel: Boolean;
    function IsSetConfirmationStatus: Boolean;
    function IsSetDialogActionType: Boolean;
    function IsSetFulfillmentState: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    property CheckpointLabel: string read GetCheckpointLabel write SetCheckpointLabel;
    property ConfirmationStatus: TConfirmationStatus read GetConfirmationStatus write SetConfirmationStatus;
    property DialogActionType: TDialogActionType read GetDialogActionType write SetDialogActionType;
    property FulfillmentState: TFulfillmentState read GetFulfillmentState write SetFulfillmentState;
    property IntentName: string read GetIntentName write SetIntentName;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
  end;
  
implementation

{ TIntentSummary }

constructor TIntentSummary.Create;
begin
  inherited;
  FSlots := TDictionary<string, string>.Create;
end;

destructor TIntentSummary.Destroy;
begin
  Slots := nil;
  inherited;
end;

function TIntentSummary.Obj: TIntentSummary;
begin
  Result := Self;
end;

function TIntentSummary.GetCheckpointLabel: string;
begin
  Result := FCheckpointLabel.ValueOrDefault;
end;

procedure TIntentSummary.SetCheckpointLabel(const Value: string);
begin
  FCheckpointLabel := Value;
end;

function TIntentSummary.IsSetCheckpointLabel: Boolean;
begin
  Result := FCheckpointLabel.HasValue;
end;

function TIntentSummary.GetConfirmationStatus: TConfirmationStatus;
begin
  Result := FConfirmationStatus.ValueOrDefault;
end;

procedure TIntentSummary.SetConfirmationStatus(const Value: TConfirmationStatus);
begin
  FConfirmationStatus := Value;
end;

function TIntentSummary.IsSetConfirmationStatus: Boolean;
begin
  Result := FConfirmationStatus.HasValue;
end;

function TIntentSummary.GetDialogActionType: TDialogActionType;
begin
  Result := FDialogActionType.ValueOrDefault;
end;

procedure TIntentSummary.SetDialogActionType(const Value: TDialogActionType);
begin
  FDialogActionType := Value;
end;

function TIntentSummary.IsSetDialogActionType: Boolean;
begin
  Result := FDialogActionType.HasValue;
end;

function TIntentSummary.GetFulfillmentState: TFulfillmentState;
begin
  Result := FFulfillmentState.ValueOrDefault;
end;

procedure TIntentSummary.SetFulfillmentState(const Value: TFulfillmentState);
begin
  FFulfillmentState := Value;
end;

function TIntentSummary.IsSetFulfillmentState: Boolean;
begin
  Result := FFulfillmentState.HasValue;
end;

function TIntentSummary.GetIntentName: string;
begin
  Result := FIntentName.ValueOrDefault;
end;

procedure TIntentSummary.SetIntentName(const Value: string);
begin
  FIntentName := Value;
end;

function TIntentSummary.IsSetIntentName: Boolean;
begin
  Result := FIntentName.HasValue;
end;

function TIntentSummary.GetSlotToElicit: string;
begin
  Result := FSlotToElicit.ValueOrDefault;
end;

procedure TIntentSummary.SetSlotToElicit(const Value: string);
begin
  FSlotToElicit := Value;
end;

function TIntentSummary.IsSetSlotToElicit: Boolean;
begin
  Result := FSlotToElicit.HasValue;
end;

function TIntentSummary.GetSlots: TDictionary<string, string>;
begin
  Result := FSlots;
end;

procedure TIntentSummary.SetSlots(const Value: TDictionary<string, string>);
begin
  if FSlots <> Value then
  begin
    if not KeepSlots then
      FSlots.Free;
    FSlots := Value;
  end;
end;

function TIntentSummary.GetKeepSlots: Boolean;
begin
  Result := FKeepSlots;
end;

procedure TIntentSummary.SetKeepSlots(const Value: Boolean);
begin
  FKeepSlots := Value;
end;

function TIntentSummary.IsSetSlots: Boolean;
begin
  Result := (FSlots <> nil) and (FSlots.Count > 0);
end;

end.
