unit AWS.Transcribe.Model.ContentRedaction;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TContentRedaction = class;
  
  IContentRedaction = interface
    function GetPiiEntityTypes: TList<string>;
    procedure SetPiiEntityTypes(const Value: TList<string>);
    function GetKeepPiiEntityTypes: Boolean;
    procedure SetKeepPiiEntityTypes(const Value: Boolean);
    function GetRedactionOutput: TRedactionOutput;
    procedure SetRedactionOutput(const Value: TRedactionOutput);
    function GetRedactionType: TRedactionType;
    procedure SetRedactionType(const Value: TRedactionType);
    function Obj: TContentRedaction;
    function IsSetPiiEntityTypes: Boolean;
    function IsSetRedactionOutput: Boolean;
    function IsSetRedactionType: Boolean;
    property PiiEntityTypes: TList<string> read GetPiiEntityTypes write SetPiiEntityTypes;
    property KeepPiiEntityTypes: Boolean read GetKeepPiiEntityTypes write SetKeepPiiEntityTypes;
    property RedactionOutput: TRedactionOutput read GetRedactionOutput write SetRedactionOutput;
    property RedactionType: TRedactionType read GetRedactionType write SetRedactionType;
  end;
  
  TContentRedaction = class
  strict private
    FPiiEntityTypes: TList<string>;
    FKeepPiiEntityTypes: Boolean;
    FRedactionOutput: Nullable<TRedactionOutput>;
    FRedactionType: Nullable<TRedactionType>;
    function GetPiiEntityTypes: TList<string>;
    procedure SetPiiEntityTypes(const Value: TList<string>);
    function GetKeepPiiEntityTypes: Boolean;
    procedure SetKeepPiiEntityTypes(const Value: Boolean);
    function GetRedactionOutput: TRedactionOutput;
    procedure SetRedactionOutput(const Value: TRedactionOutput);
    function GetRedactionType: TRedactionType;
    procedure SetRedactionType(const Value: TRedactionType);
  strict protected
    function Obj: TContentRedaction;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPiiEntityTypes: Boolean;
    function IsSetRedactionOutput: Boolean;
    function IsSetRedactionType: Boolean;
    property PiiEntityTypes: TList<string> read GetPiiEntityTypes write SetPiiEntityTypes;
    property KeepPiiEntityTypes: Boolean read GetKeepPiiEntityTypes write SetKeepPiiEntityTypes;
    property RedactionOutput: TRedactionOutput read GetRedactionOutput write SetRedactionOutput;
    property RedactionType: TRedactionType read GetRedactionType write SetRedactionType;
  end;
  
implementation

{ TContentRedaction }

constructor TContentRedaction.Create;
begin
  inherited;
  FPiiEntityTypes := TList<string>.Create;
end;

destructor TContentRedaction.Destroy;
begin
  PiiEntityTypes := nil;
  inherited;
end;

function TContentRedaction.Obj: TContentRedaction;
begin
  Result := Self;
end;

function TContentRedaction.GetPiiEntityTypes: TList<string>;
begin
  Result := FPiiEntityTypes;
end;

procedure TContentRedaction.SetPiiEntityTypes(const Value: TList<string>);
begin
  if FPiiEntityTypes <> Value then
  begin
    if not KeepPiiEntityTypes then
      FPiiEntityTypes.Free;
    FPiiEntityTypes := Value;
  end;
end;

function TContentRedaction.GetKeepPiiEntityTypes: Boolean;
begin
  Result := FKeepPiiEntityTypes;
end;

procedure TContentRedaction.SetKeepPiiEntityTypes(const Value: Boolean);
begin
  FKeepPiiEntityTypes := Value;
end;

function TContentRedaction.IsSetPiiEntityTypes: Boolean;
begin
  Result := (FPiiEntityTypes <> nil) and (FPiiEntityTypes.Count > 0);
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
