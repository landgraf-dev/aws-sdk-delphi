unit AWS.Transcribe.Model.ModelSettings;

interface

uses
  Bcl.Types.Nullable;

type
  TModelSettings = class;
  
  IModelSettings = interface
    function GetLanguageModelName: string;
    procedure SetLanguageModelName(const Value: string);
    function Obj: TModelSettings;
    function IsSetLanguageModelName: Boolean;
    property LanguageModelName: string read GetLanguageModelName write SetLanguageModelName;
  end;
  
  TModelSettings = class
  strict private
    FLanguageModelName: Nullable<string>;
    function GetLanguageModelName: string;
    procedure SetLanguageModelName(const Value: string);
  strict protected
    function Obj: TModelSettings;
  public
    function IsSetLanguageModelName: Boolean;
    property LanguageModelName: string read GetLanguageModelName write SetLanguageModelName;
  end;
  
implementation

{ TModelSettings }

function TModelSettings.Obj: TModelSettings;
begin
  Result := Self;
end;

function TModelSettings.GetLanguageModelName: string;
begin
  Result := FLanguageModelName.ValueOrDefault;
end;

procedure TModelSettings.SetLanguageModelName(const Value: string);
begin
  FLanguageModelName := Value;
end;

function TModelSettings.IsSetLanguageModelName: Boolean;
begin
  Result := FLanguageModelName.HasValue;
end;

end.
