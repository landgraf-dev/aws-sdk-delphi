unit AWS.Textract.Model.HumanLoopDataAttributes;

interface

uses
  System.Generics.Collections;

type
  THumanLoopDataAttributes = class;
  
  IHumanLoopDataAttributes = interface
    function GetContentClassifiers: TList<string>;
    procedure SetContentClassifiers(const Value: TList<string>);
    function GetKeepContentClassifiers: Boolean;
    procedure SetKeepContentClassifiers(const Value: Boolean);
    function Obj: THumanLoopDataAttributes;
    function IsSetContentClassifiers: Boolean;
    property ContentClassifiers: TList<string> read GetContentClassifiers write SetContentClassifiers;
    property KeepContentClassifiers: Boolean read GetKeepContentClassifiers write SetKeepContentClassifiers;
  end;
  
  THumanLoopDataAttributes = class
  strict private
    FContentClassifiers: TList<string>;
    FKeepContentClassifiers: Boolean;
    function GetContentClassifiers: TList<string>;
    procedure SetContentClassifiers(const Value: TList<string>);
    function GetKeepContentClassifiers: Boolean;
    procedure SetKeepContentClassifiers(const Value: Boolean);
  strict protected
    function Obj: THumanLoopDataAttributes;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetContentClassifiers: Boolean;
    property ContentClassifiers: TList<string> read GetContentClassifiers write SetContentClassifiers;
    property KeepContentClassifiers: Boolean read GetKeepContentClassifiers write SetKeepContentClassifiers;
  end;
  
implementation

{ THumanLoopDataAttributes }

constructor THumanLoopDataAttributes.Create;
begin
  inherited;
  FContentClassifiers := TList<string>.Create;
end;

destructor THumanLoopDataAttributes.Destroy;
begin
  ContentClassifiers := nil;
  inherited;
end;

function THumanLoopDataAttributes.Obj: THumanLoopDataAttributes;
begin
  Result := Self;
end;

function THumanLoopDataAttributes.GetContentClassifiers: TList<string>;
begin
  Result := FContentClassifiers;
end;

procedure THumanLoopDataAttributes.SetContentClassifiers(const Value: TList<string>);
begin
  if FContentClassifiers <> Value then
  begin
    if not KeepContentClassifiers then
      FContentClassifiers.Free;
    FContentClassifiers := Value;
  end;
end;

function THumanLoopDataAttributes.GetKeepContentClassifiers: Boolean;
begin
  Result := FKeepContentClassifiers;
end;

procedure THumanLoopDataAttributes.SetKeepContentClassifiers(const Value: Boolean);
begin
  FKeepContentClassifiers := Value;
end;

function THumanLoopDataAttributes.IsSetContentClassifiers: Boolean;
begin
  Result := (FContentClassifiers <> nil) and (FContentClassifiers.Count > 0);
end;

end.
