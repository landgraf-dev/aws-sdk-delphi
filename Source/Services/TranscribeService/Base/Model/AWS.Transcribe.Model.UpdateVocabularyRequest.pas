unit AWS.Transcribe.Model.UpdateVocabularyRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TUpdateVocabularyRequest = class;
  
  IUpdateVocabularyRequest = interface
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetPhrases: TList<string>;
    procedure SetPhrases(const Value: TList<string>);
    function GetKeepPhrases: Boolean;
    procedure SetKeepPhrases(const Value: Boolean);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TUpdateVocabularyRequest;
    function IsSetLanguageCode: Boolean;
    function IsSetPhrases: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Phrases: TList<string> read GetPhrases write SetPhrases;
    property KeepPhrases: Boolean read GetKeepPhrases write SetKeepPhrases;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TUpdateVocabularyRequest = class(TAmazonTranscribeServiceRequest, IUpdateVocabularyRequest)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FPhrases: TList<string>;
    FKeepPhrases: Boolean;
    FVocabularyFileUri: Nullable<string>;
    FVocabularyName: Nullable<string>;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetPhrases: TList<string>;
    procedure SetPhrases(const Value: TList<string>);
    function GetKeepPhrases: Boolean;
    procedure SetKeepPhrases(const Value: Boolean);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TUpdateVocabularyRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLanguageCode: Boolean;
    function IsSetPhrases: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Phrases: TList<string> read GetPhrases write SetPhrases;
    property KeepPhrases: Boolean read GetKeepPhrases write SetKeepPhrases;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TUpdateVocabularyRequest }

constructor TUpdateVocabularyRequest.Create;
begin
  inherited;
  FPhrases := TList<string>.Create;
end;

destructor TUpdateVocabularyRequest.Destroy;
begin
  Phrases := nil;
  inherited;
end;

function TUpdateVocabularyRequest.Obj: TUpdateVocabularyRequest;
begin
  Result := Self;
end;

function TUpdateVocabularyRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TUpdateVocabularyRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TUpdateVocabularyRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TUpdateVocabularyRequest.GetPhrases: TList<string>;
begin
  Result := FPhrases;
end;

procedure TUpdateVocabularyRequest.SetPhrases(const Value: TList<string>);
begin
  if FPhrases <> Value then
  begin
    if not KeepPhrases then
      FPhrases.Free;
    FPhrases := Value;
  end;
end;

function TUpdateVocabularyRequest.GetKeepPhrases: Boolean;
begin
  Result := FKeepPhrases;
end;

procedure TUpdateVocabularyRequest.SetKeepPhrases(const Value: Boolean);
begin
  FKeepPhrases := Value;
end;

function TUpdateVocabularyRequest.IsSetPhrases: Boolean;
begin
  Result := (FPhrases <> nil) and (FPhrases.Count > 0);
end;

function TUpdateVocabularyRequest.GetVocabularyFileUri: string;
begin
  Result := FVocabularyFileUri.ValueOrDefault;
end;

procedure TUpdateVocabularyRequest.SetVocabularyFileUri(const Value: string);
begin
  FVocabularyFileUri := Value;
end;

function TUpdateVocabularyRequest.IsSetVocabularyFileUri: Boolean;
begin
  Result := FVocabularyFileUri.HasValue;
end;

function TUpdateVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TUpdateVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TUpdateVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
