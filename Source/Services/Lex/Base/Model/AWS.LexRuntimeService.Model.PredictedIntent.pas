unit AWS.LexRuntimeService.Model.PredictedIntent;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.LexRuntimeService.Model.IntentConfidence;

type
  TPredictedIntent = class;
  
  IPredictedIntent = interface
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetNluIntentConfidence: TIntentConfidence;
    procedure SetNluIntentConfidence(const Value: TIntentConfidence);
    function GetKeepNluIntentConfidence: Boolean;
    procedure SetKeepNluIntentConfidence(const Value: Boolean);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
    function Obj: TPredictedIntent;
    function IsSetIntentName: Boolean;
    function IsSetNluIntentConfidence: Boolean;
    function IsSetSlots: Boolean;
    property IntentName: string read GetIntentName write SetIntentName;
    property NluIntentConfidence: TIntentConfidence read GetNluIntentConfidence write SetNluIntentConfidence;
    property KeepNluIntentConfidence: Boolean read GetKeepNluIntentConfidence write SetKeepNluIntentConfidence;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
  end;
  
  TPredictedIntent = class
  strict private
    FIntentName: Nullable<string>;
    FNluIntentConfidence: TIntentConfidence;
    FKeepNluIntentConfidence: Boolean;
    FSlots: TDictionary<string, string>;
    FKeepSlots: Boolean;
    function GetIntentName: string;
    procedure SetIntentName(const Value: string);
    function GetNluIntentConfidence: TIntentConfidence;
    procedure SetNluIntentConfidence(const Value: TIntentConfidence);
    function GetKeepNluIntentConfidence: Boolean;
    procedure SetKeepNluIntentConfidence(const Value: Boolean);
    function GetSlots: TDictionary<string, string>;
    procedure SetSlots(const Value: TDictionary<string, string>);
    function GetKeepSlots: Boolean;
    procedure SetKeepSlots(const Value: Boolean);
  strict protected
    function Obj: TPredictedIntent;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIntentName: Boolean;
    function IsSetNluIntentConfidence: Boolean;
    function IsSetSlots: Boolean;
    property IntentName: string read GetIntentName write SetIntentName;
    property NluIntentConfidence: TIntentConfidence read GetNluIntentConfidence write SetNluIntentConfidence;
    property KeepNluIntentConfidence: Boolean read GetKeepNluIntentConfidence write SetKeepNluIntentConfidence;
    property Slots: TDictionary<string, string> read GetSlots write SetSlots;
    property KeepSlots: Boolean read GetKeepSlots write SetKeepSlots;
  end;
  
implementation

{ TPredictedIntent }

constructor TPredictedIntent.Create;
begin
  inherited;
  FSlots := TDictionary<string, string>.Create;
end;

destructor TPredictedIntent.Destroy;
begin
  Slots := nil;
  NluIntentConfidence := nil;
  inherited;
end;

function TPredictedIntent.Obj: TPredictedIntent;
begin
  Result := Self;
end;

function TPredictedIntent.GetIntentName: string;
begin
  Result := FIntentName.ValueOrDefault;
end;

procedure TPredictedIntent.SetIntentName(const Value: string);
begin
  FIntentName := Value;
end;

function TPredictedIntent.IsSetIntentName: Boolean;
begin
  Result := FIntentName.HasValue;
end;

function TPredictedIntent.GetNluIntentConfidence: TIntentConfidence;
begin
  Result := FNluIntentConfidence;
end;

procedure TPredictedIntent.SetNluIntentConfidence(const Value: TIntentConfidence);
begin
  if FNluIntentConfidence <> Value then
  begin
    if not KeepNluIntentConfidence then
      FNluIntentConfidence.Free;
    FNluIntentConfidence := Value;
  end;
end;

function TPredictedIntent.GetKeepNluIntentConfidence: Boolean;
begin
  Result := FKeepNluIntentConfidence;
end;

procedure TPredictedIntent.SetKeepNluIntentConfidence(const Value: Boolean);
begin
  FKeepNluIntentConfidence := Value;
end;

function TPredictedIntent.IsSetNluIntentConfidence: Boolean;
begin
  Result := FNluIntentConfidence <> nil;
end;

function TPredictedIntent.GetSlots: TDictionary<string, string>;
begin
  Result := FSlots;
end;

procedure TPredictedIntent.SetSlots(const Value: TDictionary<string, string>);
begin
  if FSlots <> Value then
  begin
    if not KeepSlots then
      FSlots.Free;
    FSlots := Value;
  end;
end;

function TPredictedIntent.GetKeepSlots: Boolean;
begin
  Result := FKeepSlots;
end;

procedure TPredictedIntent.SetKeepSlots(const Value: Boolean);
begin
  FKeepSlots := Value;
end;

function TPredictedIntent.IsSetSlots: Boolean;
begin
  Result := (FSlots <> nil) and (FSlots.Count > 0);
end;

end.
