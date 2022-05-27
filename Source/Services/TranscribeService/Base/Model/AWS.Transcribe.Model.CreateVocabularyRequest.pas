unit AWS.Transcribe.Model.CreateVocabularyRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.Tag;

type
  TCreateVocabularyRequest = class;
  
  ICreateVocabularyRequest = interface
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetPhrases: TList<string>;
    procedure SetPhrases(const Value: TList<string>);
    function GetKeepPhrases: Boolean;
    procedure SetKeepPhrases(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TCreateVocabularyRequest;
    function IsSetLanguageCode: Boolean;
    function IsSetPhrases: Boolean;
    function IsSetTags: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Phrases: TList<string> read GetPhrases write SetPhrases;
    property KeepPhrases: Boolean read GetKeepPhrases write SetKeepPhrases;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TCreateVocabularyRequest = class(TAmazonTranscribeServiceRequest, ICreateVocabularyRequest)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FPhrases: TList<string>;
    FKeepPhrases: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FVocabularyFileUri: Nullable<string>;
    FVocabularyName: Nullable<string>;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetPhrases: TList<string>;
    procedure SetPhrases(const Value: TList<string>);
    function GetKeepPhrases: Boolean;
    procedure SetKeepPhrases(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TCreateVocabularyRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLanguageCode: Boolean;
    function IsSetPhrases: Boolean;
    function IsSetTags: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Phrases: TList<string> read GetPhrases write SetPhrases;
    property KeepPhrases: Boolean read GetKeepPhrases write SetKeepPhrases;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TCreateVocabularyRequest }

constructor TCreateVocabularyRequest.Create;
begin
  inherited;
  FPhrases := TList<string>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateVocabularyRequest.Destroy;
begin
  Tags := nil;
  Phrases := nil;
  inherited;
end;

function TCreateVocabularyRequest.Obj: TCreateVocabularyRequest;
begin
  Result := Self;
end;

function TCreateVocabularyRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateVocabularyRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCreateVocabularyRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateVocabularyRequest.GetPhrases: TList<string>;
begin
  Result := FPhrases;
end;

procedure TCreateVocabularyRequest.SetPhrases(const Value: TList<string>);
begin
  if FPhrases <> Value then
  begin
    if not KeepPhrases then
      FPhrases.Free;
    FPhrases := Value;
  end;
end;

function TCreateVocabularyRequest.GetKeepPhrases: Boolean;
begin
  Result := FKeepPhrases;
end;

procedure TCreateVocabularyRequest.SetKeepPhrases(const Value: Boolean);
begin
  FKeepPhrases := Value;
end;

function TCreateVocabularyRequest.IsSetPhrases: Boolean;
begin
  Result := (FPhrases <> nil) and (FPhrases.Count > 0);
end;

function TCreateVocabularyRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateVocabularyRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateVocabularyRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateVocabularyRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateVocabularyRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateVocabularyRequest.GetVocabularyFileUri: string;
begin
  Result := FVocabularyFileUri.ValueOrDefault;
end;

procedure TCreateVocabularyRequest.SetVocabularyFileUri(const Value: string);
begin
  FVocabularyFileUri := Value;
end;

function TCreateVocabularyRequest.IsSetVocabularyFileUri: Boolean;
begin
  Result := FVocabularyFileUri.HasValue;
end;

function TCreateVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TCreateVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TCreateVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
