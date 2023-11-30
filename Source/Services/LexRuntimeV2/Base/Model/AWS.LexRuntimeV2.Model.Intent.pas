unit AWS.LexRuntimeV2.Model.Intent;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.LexRuntimeV2.Enums, 
  AWS.LexRuntimeV2.Model.Slot;

type
  TIntent = class;
  
  IIntent = interface
    function GetConfirmationState: TConfirmationState;
    procedure SetConfirmationState(const Value: TConfirmationState);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSlots: TObjectDictionary<string, TSlot>;
    procedure SetSlots(const Value: TObjectDictionary<string, TSlot>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function GetState: TIntentState;
    procedure SetState(const Value: TIntentState);
    function Obj: TIntent;
    function IsSetConfirmationState: Boolean;
    function IsSetName: Boolean;
    function IsSetSlots: Boolean;
    function IsSetState: Boolean;
    property ConfirmationState: TConfirmationState read GetConfirmationState write SetConfirmationState;
    property Name: string read GetName write SetName;
    property Slots: TObjectDictionary<string, TSlot> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
    property State: TIntentState read GetState write SetState;
  end;
  
  TIntent = class
  strict private
    FConfirmationState: Nullable<TConfirmationState>;
    FName: Nullable<string>;
    FSlots: TObjectDictionary<string, TSlot>;
    FKeepSlots: Boolean;
    FState: Nullable<TIntentState>;
    function GetConfirmationState: TConfirmationState;
    procedure SetConfirmationState(const Value: TConfirmationState);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetSlots: TObjectDictionary<string, TSlot>;
    procedure SetSlots(const Value: TObjectDictionary<string, TSlot>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function GetState: TIntentState;
    procedure SetState(const Value: TIntentState);
  strict protected
    function Obj: TIntent;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfirmationState: Boolean;
    function IsSetName: Boolean;
    function IsSetSlots: Boolean;
    function IsSetState: Boolean;
    property ConfirmationState: TConfirmationState read GetConfirmationState write SetConfirmationState;
    property Name: string read GetName write SetName;
    property Slots: TObjectDictionary<string, TSlot> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
    property State: TIntentState read GetState write SetState;
  end;
  
implementation

{ TIntent }

constructor TIntent.Create;
begin
  inherited;
  FSlots := TObjectDictionary<string, TSlot>.Create([doOwnsValues]);
end;

destructor TIntent.Destroy;
begin
  Slots := nil;
  inherited;
end;

function TIntent.Obj: TIntent;
begin
  Result := Self;
end;

function TIntent.GetConfirmationState: TConfirmationState;
begin
  Result := FConfirmationState.ValueOrDefault;
end;

procedure TIntent.SetConfirmationState(const Value: TConfirmationState);
begin
  FConfirmationState := Value;
end;

function TIntent.IsSetConfirmationState: Boolean;
begin
  Result := FConfirmationState.HasValue;
end;

function TIntent.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TIntent.SetName(const Value: string);
begin
  FName := Value;
end;

function TIntent.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TIntent.GetSlots: TObjectDictionary<string, TSlot>;
begin
  Result := FSlots;
end;

procedure TIntent.SetSlots(const Value: TObjectDictionary<string, TSlot>);
begin
  if FSlots <> Value then
  begin
    if not KeepSlots then
      FSlots.Free;
    FSlots := Value;
  end;
end;

function TIntent.GetKeepSlots: Boolean;
begin
  Result := FKeepSlots;
end;

procedure TIntent.SetKeepSlots(const Value: Boolean);
begin
  FKeepSlots := Value;
end;

function TIntent.IsSetSlots: Boolean;
begin
  Result := (FSlots <> nil) and (FSlots.Count > 0);
end;

function TIntent.GetState: TIntentState;
begin
  Result := FState.ValueOrDefault;
end;

procedure TIntent.SetState(const Value: TIntentState);
begin
  FState := Value;
end;

function TIntent.IsSetState: Boolean;
begin
  Result := FState.HasValue;
end;

end.
