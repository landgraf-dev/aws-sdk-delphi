unit AWS.LexRuntimeService.Model.DialogAction;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeService.Enums;

type
  TDialogAction = class;
  
  IDialogAction = interface
    function GetFulfillmentState: TFulfillmentState;
    procedure SetFulfillmentState(const Value: TFulfillmentState);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function GetType: TDialogActionType;
    procedure SetType(const Value: TDialogActionType);
    function Obj: TDialogAction;
    function IsSetFulfillmentState: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    function IsSetType: Boolean;
    property FulfillmentState: TFulfillmentState read GetFulfillmentState write SetFulfillmentState;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
    property &Type: TDialogActionType read GetType write SetType;
  end;
  
  TDialogAction = class
  strict private
    FFulfillmentState: Nullable<TFulfillmentState>;
    FIntentName: Nullable<string>;
    FMessage: Nullable<string>;
    FMessageFormat: Nullable<TMessageFormatType>;
    FSlotToElicit: Nullable<string>;
    FSlots: TDictionary<string, string>;
    FKeepSlots: Boolean;
    FType: Nullable<TDialogActionType>;
    function GetFulfillmentState: TFulfillmentState;
    procedure SetFulfillmentState(const Value: TFulfillmentState);
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetMessageFormat: TMessageFormatType;
    procedure SetMessageFormat(const Value: TMessageFormatType);
    function GetSlotToElicit: string;
    procedure SetSlotToElicit(const Value: string);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function GetType: TDialogActionType;
    procedure SetType(const Value: TDialogActionType);
  strict protected
    function Obj: TDialogAction;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetFulfillmentState: Boolean;
    function IsSetIntentName: Boolean;
    function IsSetMessage: Boolean;
    function IsSetMessageFormat: Boolean;
    function IsSetSlotToElicit: Boolean;
    function IsSetSlots: Boolean;
    function IsSetType: Boolean;
    property FulfillmentState: TFulfillmentState read GetFulfillmentState write SetFulfillmentState;
    property IntentName: string read GetIntentName write SetIntentName;
    property Message: string read GetMessage write SetMessage;
    property MessageFormat: TMessageFormatType read GetMessageFormat write SetMessageFormat;
    property SlotToElicit: string read GetSlotToElicit write SetSlotToElicit;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
    property &Type: TDialogActionType read GetType write SetType;
  end;
  
implementation

{ TDialogAction }

constructor TDialogAction.Create;
begin
  inherited;
  FSlots := TDictionary<string, string>.Create;
end;

destructor TDialogAction.Destroy;
begin
  Slots := nil;
  inherited;
end;

function TDialogAction.Obj: TDialogAction;
begin
  Result := Self;
end;

function TDialogAction.GetFulfillmentState: TFulfillmentState;
begin
  Result := FFulfillmentState.ValueOrDefault;
end;

procedure TDialogAction.SetFulfillmentState(const Value: TFulfillmentState);
begin
  FFulfillmentState := Value;
end;

function TDialogAction.IsSetFulfillmentState: Boolean;
begin
  Result := FFulfillmentState.HasValue;
end;

function TDialogAction.GetIntentName: string;
begin
  Result := FIntentName.ValueOrDefault;
end;

procedure TDialogAction.SetIntentName(const Value: string);
begin
  FIntentName := Value;
end;

function TDialogAction.IsSetIntentName: Boolean;
begin
  Result := FIntentName.HasValue;
end;

function TDialogAction.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TDialogAction.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TDialogAction.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TDialogAction.GetMessageFormat: TMessageFormatType;
begin
  Result := FMessageFormat.ValueOrDefault;
end;

procedure TDialogAction.SetMessageFormat(const Value: TMessageFormatType);
begin
  FMessageFormat := Value;
end;

function TDialogAction.IsSetMessageFormat: Boolean;
begin
  Result := FMessageFormat.HasValue;
end;

function TDialogAction.GetSlotToElicit: string;
begin
  Result := FSlotToElicit.ValueOrDefault;
end;

procedure TDialogAction.SetSlotToElicit(const Value: string);
begin
  FSlotToElicit := Value;
end;

function TDialogAction.IsSetSlotToElicit: Boolean;
begin
  Result := FSlotToElicit.HasValue;
end;

function TDialogAction.GetSlots: TDictionary<string, string>;
begin
  Result := FSlots;
end;

procedure TDialogAction.SetSlots(const Value: TDictionary<string, string>);
begin
  if FSlots <> Value then
  begin
    if not KeepSlots then
      FSlots.Free;
    FSlots := Value;
  end;
end;

function TDialogAction.GetKeepSlots: Boolean;
begin
  Result := FKeepSlots;
end;

procedure TDialogAction.SetKeepSlots(const Value: Boolean);
begin
  FKeepSlots := Value;
end;

function TDialogAction.IsSetSlots: Boolean;
begin
  Result := (FSlots <> nil) and (FSlots.Count > 0);
end;

function TDialogAction.GetType: TDialogActionType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TDialogAction.SetType(const Value: TDialogActionType);
begin
  FType := Value;
end;

function TDialogAction.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
