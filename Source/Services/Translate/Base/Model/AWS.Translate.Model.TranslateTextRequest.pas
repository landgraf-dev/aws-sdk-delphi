unit AWS.Translate.Model.TranslateTextRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Translate.Model.Request, 
  AWS.Translate.Model.TranslationSettings;

type
  TTranslateTextRequest = class;
  
  ITranslateTextRequest = interface
    function GetSettings: TTranslationSettings;
    procedure SetSettings(const Value: TTranslationSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCode: string;
    procedure SetTargetLanguageCode(const Value: string);
    function GetTerminologyNames: TList<string>;
    procedure SetTerminologyNames(const Value: TList<string>);
    function GetKeepTerminologyNames: Boolean;
    procedure SetKeepTerminologyNames(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
    function Obj: TTranslateTextRequest;
    function IsSetSettings: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    function IsSetTerminologyNames: Boolean;
    function IsSetText: Boolean;
    property Settings: TTranslationSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCode: string read GetTargetLanguageCode write SetTargetLanguageCode;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
    property Text: string read GetText write SetText;
  end;
  
  TTranslateTextRequest = class(TAmazonTranslateRequest, ITranslateTextRequest)
  strict private
    FSettings: TTranslationSettings;
    FKeepSettings: Boolean;
    FSourceLanguageCode: Nullable<string>;
    FTargetLanguageCode: Nullable<string>;
    FTerminologyNames: TList<string>;
    FKeepTerminologyNames: Boolean;
    FText: Nullable<string>;
    function GetSettings: TTranslationSettings;
    procedure SetSettings(const Value: TTranslationSettings);
    function GetKeepSettings: Boolean;
    procedure SetKeepSettings(const Value: Boolean);
    function GetSourceLanguageCode: string;
    procedure SetSourceLanguageCode(const Value: string);
    function GetTargetLanguageCode: string;
    procedure SetTargetLanguageCode(const Value: string);
    function GetTerminologyNames: TList<string>;
    procedure SetTerminologyNames(const Value: TList<string>);
    function GetKeepTerminologyNames: Boolean;
    procedure SetKeepTerminologyNames(const Value: Boolean);
    function GetText: string;
    procedure SetText(const Value: string);
  strict protected
    function Obj: TTranslateTextRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetSettings: Boolean;
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    function IsSetTerminologyNames: Boolean;
    function IsSetText: Boolean;
    property Settings: TTranslationSettings read GetSettings write SetSettings;
    property KeepSettings: Boolean read GetKeepSettings write SetKeepSettings;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCode: string read GetTargetLanguageCode write SetTargetLanguageCode;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
    property Text: string read GetText write SetText;
  end;
  
implementation

{ TTranslateTextRequest }

constructor TTranslateTextRequest.Create;
begin
  inherited;
  FTerminologyNames := TList<string>.Create;
end;

destructor TTranslateTextRequest.Destroy;
begin
  TerminologyNames := nil;
  Settings := nil;
  inherited;
end;

function TTranslateTextRequest.Obj: TTranslateTextRequest;
begin
  Result := Self;
end;

function TTranslateTextRequest.GetSettings: TTranslationSettings;
begin
  Result := FSettings;
end;

procedure TTranslateTextRequest.SetSettings(const Value: TTranslationSettings);
begin
  if FSettings <> Value then
  begin
    if not KeepSettings then
      FSettings.Free;
    FSettings := Value;
  end;
end;

function TTranslateTextRequest.GetKeepSettings: Boolean;
begin
  Result := FKeepSettings;
end;

procedure TTranslateTextRequest.SetKeepSettings(const Value: Boolean);
begin
  FKeepSettings := Value;
end;

function TTranslateTextRequest.IsSetSettings: Boolean;
begin
  Result := FSettings <> nil;
end;

function TTranslateTextRequest.GetSourceLanguageCode: string;
begin
  Result := FSourceLanguageCode.ValueOrDefault;
end;

procedure TTranslateTextRequest.SetSourceLanguageCode(const Value: string);
begin
  FSourceLanguageCode := Value;
end;

function TTranslateTextRequest.IsSetSourceLanguageCode: Boolean;
begin
  Result := FSourceLanguageCode.HasValue;
end;

function TTranslateTextRequest.GetTargetLanguageCode: string;
begin
  Result := FTargetLanguageCode.ValueOrDefault;
end;

procedure TTranslateTextRequest.SetTargetLanguageCode(const Value: string);
begin
  FTargetLanguageCode := Value;
end;

function TTranslateTextRequest.IsSetTargetLanguageCode: Boolean;
begin
  Result := FTargetLanguageCode.HasValue;
end;

function TTranslateTextRequest.GetTerminologyNames: TList<string>;
begin
  Result := FTerminologyNames;
end;

procedure TTranslateTextRequest.SetTerminologyNames(const Value: TList<string>);
begin
  if FTerminologyNames <> Value then
  begin
    if not KeepTerminologyNames then
      FTerminologyNames.Free;
    FTerminologyNames := Value;
  end;
end;

function TTranslateTextRequest.GetKeepTerminologyNames: Boolean;
begin
  Result := FKeepTerminologyNames;
end;

procedure TTranslateTextRequest.SetKeepTerminologyNames(const Value: Boolean);
begin
  FKeepTerminologyNames := Value;
end;

function TTranslateTextRequest.IsSetTerminologyNames: Boolean;
begin
  Result := (FTerminologyNames <> nil) and (FTerminologyNames.Count > 0);
end;

function TTranslateTextRequest.GetText: string;
begin
  Result := FText.ValueOrDefault;
end;

procedure TTranslateTextRequest.SetText(const Value: string);
begin
  FText := Value;
end;

function TTranslateTextRequest.IsSetText: Boolean;
begin
  Result := FText.HasValue;
end;

end.
