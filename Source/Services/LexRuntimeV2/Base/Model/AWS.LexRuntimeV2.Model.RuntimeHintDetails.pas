unit AWS.LexRuntimeV2.Model.RuntimeHintDetails;

interface

uses
  System.Generics.Collections, 
  AWS.LexRuntimeV2.Model.RuntimeHintValue;

type
  TRuntimeHintDetails = class;
  
  IRuntimeHintDetails = interface
    function GetRuntimeHintValues: TObjectList<TRuntimeHintValue>;
    procedure SetRuntimeHintValues(const Value: TObjectList<TRuntimeHintValue>);
    function GetKeepRuntimeHintValues: Boolean;
    procedure SetKeepRuntimeHintValues(const Value: Boolean);
    function Obj: TRuntimeHintDetails;
    function IsSetRuntimeHintValues: Boolean;
    property RuntimeHintValues: TObjectList<TRuntimeHintValue> read GetRuntimeHintValues write SetRuntimeHintValues;
    property KeepRuntimeHintValues: Boolean read GetKeepRuntimeHintValues write SetKeepRuntimeHintValues;
  end;
  
  TRuntimeHintDetails = class
  strict private
    FRuntimeHintValues: TObjectList<TRuntimeHintValue>;
    FKeepRuntimeHintValues: Boolean;
    function GetRuntimeHintValues: TObjectList<TRuntimeHintValue>;
    procedure SetRuntimeHintValues(const Value: TObjectList<TRuntimeHintValue>);
    function GetKeepRuntimeHintValues: Boolean;
    procedure SetKeepRuntimeHintValues(const Value: Boolean);
  strict protected
    function Obj: TRuntimeHintDetails;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetRuntimeHintValues: Boolean;
    property RuntimeHintValues: TObjectList<TRuntimeHintValue> read GetRuntimeHintValues write SetRuntimeHintValues;
    property KeepRuntimeHintValues: Boolean read GetKeepRuntimeHintValues write SetKeepRuntimeHintValues;
  end;
  
implementation

{ TRuntimeHintDetails }

constructor TRuntimeHintDetails.Create;
begin
  inherited;
  FRuntimeHintValues := TObjectList<TRuntimeHintValue>.Create;
end;

destructor TRuntimeHintDetails.Destroy;
begin
  RuntimeHintValues := nil;
  inherited;
end;

function TRuntimeHintDetails.Obj: TRuntimeHintDetails;
begin
  Result := Self;
end;

function TRuntimeHintDetails.GetRuntimeHintValues: TObjectList<TRuntimeHintValue>;
begin
  Result := FRuntimeHintValues;
end;

procedure TRuntimeHintDetails.SetRuntimeHintValues(const Value: TObjectList<TRuntimeHintValue>);
begin
  if FRuntimeHintValues <> Value then
  begin
    if not KeepRuntimeHintValues then
      FRuntimeHintValues.Free;
    FRuntimeHintValues := Value;
  end;
end;

function TRuntimeHintDetails.GetKeepRuntimeHintValues: Boolean;
begin
  Result := FKeepRuntimeHintValues;
end;

procedure TRuntimeHintDetails.SetKeepRuntimeHintValues(const Value: Boolean);
begin
  FKeepRuntimeHintValues := Value;
end;

function TRuntimeHintDetails.IsSetRuntimeHintValues: Boolean;
begin
  Result := (FRuntimeHintValues <> nil) and (FRuntimeHintValues.Count > 0);
end;

end.
