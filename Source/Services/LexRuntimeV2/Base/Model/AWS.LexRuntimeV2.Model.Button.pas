unit AWS.LexRuntimeV2.Model.Button;

interface

uses
  Bcl.Types.Nullable;

type
  TButton = class;
  
  IButton = interface
    function GetText: string;
    procedure SetText(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
    function Obj: TButton;
    function IsSetText: Boolean;
    function IsSetValue: Boolean;
    property Text: string read GetText write SetText;
    property Value: string read GetValue write SetValue;
  end;
  
  TButton = class
  strict private
    FText: Nullable<string>;
    FValue: Nullable<string>;
    function GetText: string;
    procedure SetText(const Value: string);
    function GetValue: string;
    procedure SetValue(const Value: string);
  strict protected
    function Obj: TButton;
  public
    function IsSetText: Boolean;
    function IsSetValue: Boolean;
    property Text: string read GetText write SetText;
    property Value: string read GetValue write SetValue;
  end;
  
implementation

{ TButton }

function TButton.Obj: TButton;
begin
  Result := Self;
end;

function TButton.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TButton.SetText(const Value: string);
begin
  FText := Value;
end;

function TButton.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

function TButton.GetValue: string;
begin
  Result := FValue.ValueOrDefault;
end;

procedure TButton.SetValue(const Value: string);
begin
  FValue := Value;
end;

function TButton.IsSetValue: Boolean;
begin
  Result := FValue.HasValue;
end;

end.
