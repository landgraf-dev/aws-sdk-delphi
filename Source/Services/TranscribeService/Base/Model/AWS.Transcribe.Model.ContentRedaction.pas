unit AWS.Transcribe.Model.ContentRedaction;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Enums;

type
  TContentRedaction = class;
  
  IContentRedaction = interface
    function GetRedactionOutput: TRedactionOutput;
    procedure SetRedactionOutput(const Value: TRedactionOutput);
    function GetRedactionType: TRedactionType;
    procedure SetRedactionType(const Value: TRedactionType);
    function Obj: TContentRedaction;
    function IsSetRedactionOutput: Boolean;
    function IsSetRedactionType: Boolean;
    property RedactionOutput: TRedactionOutput read GetRedactionOutput write SetRedactionOutput;
    property RedactionType: TRedactionType read GetRedactionType write SetRedactionType;
  end;
  
  TContentRedaction = class
  strict private
    FRedactionOutput: Nullable<TRedactionOutput>;
    FRedactionType: Nullable<TRedactionType>;
    function GetRedactionOutput: TRedactionOutput;
    procedure SetRedactionOutput(const Value: TRedactionOutput);
    function GetRedactionType: TRedactionType;
    procedure SetRedactionType(const Value: TRedactionType);
  strict protected
    function Obj: TContentRedaction;
  public
    function IsSetRedactionOutput: Boolean;
    function IsSetRedactionType: Boolean;
    property RedactionOutput: TRedactionOutput read GetRedactionOutput write SetRedactionOutput;
    property RedactionType: TRedactionType read GetRedactionType write SetRedactionType;
  end;
  
implementation

{ TContentRedaction }

function TContentRedaction.Obj: TContentRedaction;
begin
  Result := Self;
end;

function TContentRedaction.GetRedactionOutput: TRedactionOutput;
begin
  Result := FRedactionOutput.ValueOrDefault;
end;

procedure TContentRedaction.SetRedactionOutput(const Value: TRedactionOutput);
begin
  FRedactionOutput := Value;
end;

function TContentRedaction.IsSetRedactionOutput: Boolean;
begin
  Result := FRedactionOutput.HasValue;
end;

function TContentRedaction.GetRedactionType: TRedactionType;
begin
  Result := FRedactionType.ValueOrDefault;
end;

procedure TContentRedaction.SetRedactionType(const Value: TRedactionType);
begin
  FRedactionType := Value;
end;

function TContentRedaction.IsSetRedactionType: Boolean;
begin
  Result := FRedactionType.HasValue;
end;

end.
