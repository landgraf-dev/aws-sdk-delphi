unit AWS.Translate.Model.Term;

interface

uses
  Bcl.Types.Nullable;

type
  TTerm = class;
  
  ITerm = interface
    function GetSourceText: string;
    procedure SetSourceText(const Value: string);
    function GetTargetText: string;
    procedure SetTargetText(const Value: string);
    function Obj: TTerm;
    function IsSetSourceText: Boolean;
    function IsSetTargetText: Boolean;
    property SourceText: string read GetSourceText write SetSourceText;
    property TargetText: string read GetTargetText write SetTargetText;
  end;
  
  TTerm = class
  strict private
    FSourceText: Nullable<string>;
    FTargetText: Nullable<string>;
    function GetSourceText: string;
    procedure SetSourceText(const Value: string);
    function GetTargetText: string;
    procedure SetTargetText(const Value: string);
  strict protected
    function Obj: TTerm;
  public
    function IsSetSourceText: Boolean;
    function IsSetTargetText: Boolean;
    property SourceText: string read GetSourceText write SetSourceText;
    property TargetText: string read GetTargetText write SetTargetText;
  end;
  
implementation

{ TTerm }

function TTerm.Obj: TTerm;
begin
  Result := Self;
end;

function TTerm.GetSourceText: string;
begin
  Result := FSourceText.ValueOrDefault;
end;

procedure TTerm.SetSourceText(const Value: string);
begin
  FSourceText := Value;
end;

function TTerm.IsSetSourceText: Boolean;
begin
  Result := FSourceText.HasValue;
end;

function TTerm.GetTargetText: string;
begin
  Result := FTargetText.ValueOrDefault;
end;

procedure TTerm.SetTargetText(const Value: string);
begin
  FTargetText := Value;
end;

function TTerm.IsSetTargetText: Boolean;
begin
  Result := FTargetText.HasValue;
end;

end.
