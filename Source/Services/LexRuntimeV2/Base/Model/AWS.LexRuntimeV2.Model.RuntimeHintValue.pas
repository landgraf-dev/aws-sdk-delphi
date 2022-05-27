unit AWS.LexRuntimeV2.Model.RuntimeHintValue;

interface

uses
  Bcl.Types.Nullable;

type
  TRuntimeHintValue = class;
  
  IRuntimeHintValue = interface
    function GetPhrase: string;
    procedure SetPhrase(const Value: string);
    function Obj: TRuntimeHintValue;
    function IsSetPhrase: Boolean;
    property Phrase: string read GetPhrase write SetPhrase;
  end;
  
  TRuntimeHintValue = class
  strict private
    FPhrase: Nullable<string>;
    function GetPhrase: string;
    procedure SetPhrase(const Value: string);
  strict protected
    function Obj: TRuntimeHintValue;
  public
    function IsSetPhrase: Boolean;
    property Phrase: string read GetPhrase write SetPhrase;
  end;
  
implementation

{ TRuntimeHintValue }

function TRuntimeHintValue.Obj: TRuntimeHintValue;
begin
  Result := Self;
end;

function TRuntimeHintValue.GetPhrase: string;
begin
  Result := FPhrase.ValueOrDefault;
end;

procedure TRuntimeHintValue.SetPhrase(const Value: string);
begin
  FPhrase := Value;
end;

function TRuntimeHintValue.IsSetPhrase: Boolean;
begin
  Result := FPhrase.HasValue;
end;

end.
