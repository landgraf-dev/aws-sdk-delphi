unit AWS.LexRuntimeV2.Model.RuntimeHints;

interface

uses
  System.Generics.Collections, 
  AWS.LexRuntimeV2.Model.RuntimeHintDetails;

type
  TRuntimeHints = class;
  
  IRuntimeHints = interface
    function GetSlotHints: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>;
    procedure SetSlotHints(const Value: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>);
    function GetKeepSlotHints: Boolean;
    procedure SetKeepSlotHints(const Value: Boolean);
    function Obj: TRuntimeHints;
    function IsSetSlotHints: Boolean;
    property SlotHints: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>> read GetSlotHints write SetSlotHints;
    property KeepSlotHints: Boolean read GetKeepSlotHints write SetKeepSlotHints;
  end;
  
  TRuntimeHints = class
  strict private
    FSlotHints: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>;
    FKeepSlotHints: Boolean;
    function GetSlotHints: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>;
    procedure SetSlotHints(const Value: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>);
    function GetKeepSlotHints: Boolean;
    procedure SetKeepSlotHints(const Value: Boolean);
  strict protected
    function Obj: TRuntimeHints;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSlotHints: Boolean;
    property SlotHints: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>> read GetSlotHints write SetSlotHints;
    property KeepSlotHints: Boolean read GetKeepSlotHints write SetKeepSlotHints;
  end;
  
implementation

{ TRuntimeHints }

constructor TRuntimeHints.Create;
begin
  inherited;
  FSlotHints := TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>.Create([doOwnsValues]);
end;

destructor TRuntimeHints.Destroy;
begin
  SlotHints := nil;
  inherited;
end;

function TRuntimeHints.Obj: TRuntimeHints;
begin
  Result := Self;
end;

function TRuntimeHints.GetSlotHints: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>;
begin
  Result := FSlotHints;
end;

procedure TRuntimeHints.SetSlotHints(const Value: TObjectDictionary<string, TObjectDictionary<string, TRuntimeHintDetails>>);
begin
  if FSlotHints <> Value then
  begin
    if not KeepSlotHints then
      FSlotHints.Free;
    FSlotHints := Value;
  end;
end;

function TRuntimeHints.GetKeepSlotHints: Boolean;
begin
  Result := FKeepSlotHints;
end;

procedure TRuntimeHints.SetKeepSlotHints(const Value: Boolean);
begin
  FKeepSlotHints := Value;
end;

function TRuntimeHints.IsSetSlotHints: Boolean;
begin
  Result := (FSlotHints <> nil) and (FSlotHints.Count > 0);
end;

end.
