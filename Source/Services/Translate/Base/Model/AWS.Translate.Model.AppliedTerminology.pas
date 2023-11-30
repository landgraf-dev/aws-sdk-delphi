unit AWS.Translate.Model.AppliedTerminology;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.Translate.Model.Term;

type
  TAppliedTerminology = class;
  
  IAppliedTerminology = interface
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTerms: TObjectList<TTerm>;
    procedure SetTerms(const Value: TObjectList<TTerm>);
    function GetKeepTerms: Boolean;
    procedure SetKeepTerms(const Value: Boolean);
    function Obj: TAppliedTerminology;
    function IsSetName: Boolean;
    function IsSetTerms: Boolean;
    property Name: string read GetName write SetName;
    property Terms: TObjectList<TTerm> read GetTerms write SetTerms;
    property KeepTerms: Boolean read GetKeepTerms write SetKeepTerms;
  end;
  
  TAppliedTerminology = class
  strict private
    FName: Nullable<string>;
    FTerms: TObjectList<TTerm>;
    FKeepTerms: Boolean;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetTerms: TObjectList<TTerm>;
    procedure SetTerms(const Value: TObjectList<TTerm>);
    function GetKeepTerms: Boolean;
    procedure SetKeepTerms(const Value: Boolean);
  strict protected
    function Obj: TAppliedTerminology;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetName: Boolean;
    function IsSetTerms: Boolean;
    property Name: string read GetName write SetName;
    property Terms: TObjectList<TTerm> read GetTerms write SetTerms;
    property KeepTerms: Boolean read GetKeepTerms write SetKeepTerms;
  end;
  
implementation

{ TAppliedTerminology }

constructor TAppliedTerminology.Create;
begin
  inherited;
  FTerms := TObjectList<TTerm>.Create;
end;

destructor TAppliedTerminology.Destroy;
begin
  Terms := nil;
  inherited;
end;

function TAppliedTerminology.Obj: TAppliedTerminology;
begin
  Result := Self;
end;

function TAppliedTerminology.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAppliedTerminology.SetName(const Value: string);
begin
  FName := Value;
end;

function TAppliedTerminology.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAppliedTerminology.GetTerms: TObjectList<TTerm>;
begin
  Result := FTerms;
end;

procedure TAppliedTerminology.SetTerms(const Value: TObjectList<TTerm>);
begin
  if FTerms <> Value then
  begin
    if not KeepTerms then
      FTerms.Free;
    FTerms := Value;
  end;
end;

function TAppliedTerminology.GetKeepTerms: Boolean;
begin
  Result := FKeepTerms;
end;

procedure TAppliedTerminology.SetKeepTerms(const Value: Boolean);
begin
  FKeepTerms := Value;
end;

function TAppliedTerminology.IsSetTerms: Boolean;
begin
  Result := (FTerms <> nil) and (FTerms.Count > 0);
end;

end.
