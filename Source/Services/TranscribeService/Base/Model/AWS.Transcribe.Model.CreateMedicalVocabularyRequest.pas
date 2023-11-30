unit AWS.Transcribe.Model.CreateMedicalVocabularyRequest;

interface

uses
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.Tag;

type
  TCreateMedicalVocabularyRequest = class;
  
  ICreateMedicalVocabularyRequest = interface
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TCreateMedicalVocabularyRequest;
    function IsSetLanguageCode: Boolean;
    function IsSetTags: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TCreateMedicalVocabularyRequest = class(TAmazonTranscribeServiceRequest, ICreateMedicalVocabularyRequest)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FVocabularyFileUri: Nullable<string>;
    FVocabularyName: Nullable<string>;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TCreateMedicalVocabularyRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLanguageCode: Boolean;
    function IsSetTags: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TCreateMedicalVocabularyRequest }

constructor TCreateMedicalVocabularyRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateMedicalVocabularyRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TCreateMedicalVocabularyRequest.Obj: TCreateMedicalVocabularyRequest;
begin
  Result := Self;
end;

function TCreateMedicalVocabularyRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCreateMedicalVocabularyRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateMedicalVocabularyRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateMedicalVocabularyRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateMedicalVocabularyRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateMedicalVocabularyRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateMedicalVocabularyRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TCreateMedicalVocabularyRequest.GetVocabularyFileUri: string;
begin
  Result := FVocabularyFileUri.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyRequest.SetVocabularyFileUri(const Value: string);
begin
  FVocabularyFileUri := Value;
end;

function TCreateMedicalVocabularyRequest.IsSetVocabularyFileUri: Boolean;
begin
  Result := FVocabularyFileUri.HasValue;
end;

function TCreateMedicalVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TCreateMedicalVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TCreateMedicalVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
