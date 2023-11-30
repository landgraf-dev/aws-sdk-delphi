unit AWS.Transcribe.Model.UpdateMedicalVocabularyRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable, 
  AWS.Transcribe.Enums;

type
  TUpdateMedicalVocabularyRequest = class;
  
  IUpdateMedicalVocabularyRequest = interface
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TUpdateMedicalVocabularyRequest;
    function IsSetLanguageCode: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TUpdateMedicalVocabularyRequest = class(TAmazonTranscribeServiceRequest, IUpdateMedicalVocabularyRequest)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FVocabularyFileUri: Nullable<string>;
    FVocabularyName: Nullable<string>;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetVocabularyFileUri: string;
    procedure SetVocabularyFileUri(const Value: string);
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TUpdateMedicalVocabularyRequest;
  public
    function IsSetLanguageCode: Boolean;
    function IsSetVocabularyFileUri: Boolean;
    function IsSetVocabularyName: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property VocabularyFileUri: string read GetVocabularyFileUri write SetVocabularyFileUri;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TUpdateMedicalVocabularyRequest }

function TUpdateMedicalVocabularyRequest.Obj: TUpdateMedicalVocabularyRequest;
begin
  Result := Self;
end;

function TUpdateMedicalVocabularyRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TUpdateMedicalVocabularyRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TUpdateMedicalVocabularyRequest.GetVocabularyFileUri: string;
begin
  Result := FVocabularyFileUri.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyRequest.SetVocabularyFileUri(const Value: string);
begin
  FVocabularyFileUri := Value;
end;

function TUpdateMedicalVocabularyRequest.IsSetVocabularyFileUri: Boolean;
begin
  Result := FVocabularyFileUri.HasValue;
end;

function TUpdateMedicalVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TUpdateMedicalVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TUpdateMedicalVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
