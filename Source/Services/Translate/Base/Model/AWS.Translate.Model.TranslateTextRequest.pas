unit AWS.Translate.Model.TranslateTextRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Translate.Model.Request;

type
  TTranslateTextRequest = class;
  
  ITranslateTextRequest = interface
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
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    function IsSetTerminologyNames: Boolean;
    function IsSetText: Boolean;
    property SourceLanguageCode: string read GetSourceLanguageCode write SetSourceLanguageCode;
    property TargetLanguageCode: string read GetTargetLanguageCode write SetTargetLanguageCode;
    property TerminologyNames: TList<string> read GetTerminologyNames write SetTerminologyNames;
    property KeepTerminologyNames: Boolean read GetKeepTerminologyNames write SetKeepTerminologyNames;
    property Text: string read GetText write SetText;
  end;
  
  TTranslateTextRequest = class(TAmazonTranslateRequest, ITranslateTextRequest)
  strict private
    FSourceLanguageCode: Nullable<string>;
    FTargetLanguageCode: Nullable<string>;
    FTerminologyNames: TList<string>;
    FKeepTerminologyNames: Boolean;
    FText: Nullable<string>;
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
    function IsSetSourceLanguageCode: Boolean;
    function IsSetTargetLanguageCode: Boolean;
    function IsSetTerminologyNames: Boolean;
    function IsSetText: Boolean;
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
  inherited;
end;

function TTranslateTextRequest.Obj: TTranslateTextRequest;
begin
  Result := Self;
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
