unit AWS.Transcribe.Model.CreateVocabularyFilterRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Enums;

type
  TCreateVocabularyFilterRequest = class;
  
  ICreateVocabularyFilterRequest = interface
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetVocabularyFilterFileUri: string;
    procedure SetVocabularyFilterFileUri(const Value: string);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetWords: TList<string>;
    procedure SetWords(const Value: TList<string>);
    function GetKeepWords: Boolean;
    procedure SetKeepWords(const Value: Boolean);
    function Obj: TCreateVocabularyFilterRequest;
    function IsSetLanguageCode: Boolean;
    function IsSetVocabularyFilterFileUri: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetWords: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property VocabularyFilterFileUri: string read GetVocabularyFilterFileUri write SetVocabularyFilterFileUri;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property Words: TList<string> read GetWords write SetWords;
    property KeepWords: Boolean read GetKeepWords write SetKeepWords;
  end;
  
  TCreateVocabularyFilterRequest = class(TAmazonTranscribeServiceRequest, ICreateVocabularyFilterRequest)
  strict private
    FLanguageCode: Nullable<TLanguageCode>;
    FVocabularyFilterFileUri: Nullable<string>;
    FVocabularyFilterName: Nullable<string>;
    FWords: TList<string>;
    FKeepWords: Boolean;
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetVocabularyFilterFileUri: string;
    procedure SetVocabularyFilterFileUri(const Value: string);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetWords: TList<string>;
    procedure SetWords(const Value: TList<string>);
    function GetKeepWords: Boolean;
    procedure SetKeepWords(const Value: Boolean);
  strict protected
    function Obj: TCreateVocabularyFilterRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetLanguageCode: Boolean;
    function IsSetVocabularyFilterFileUri: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetWords: Boolean;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property VocabularyFilterFileUri: string read GetVocabularyFilterFileUri write SetVocabularyFilterFileUri;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property Words: TList<string> read GetWords write SetWords;
    property KeepWords: Boolean read GetKeepWords write SetKeepWords;
  end;
  
implementation

{ TCreateVocabularyFilterRequest }

constructor TCreateVocabularyFilterRequest.Create;
begin
  inherited;
  FWords := TList<string>.Create;
end;

destructor TCreateVocabularyFilterRequest.Destroy;
begin
  Words := nil;
  inherited;
end;

function TCreateVocabularyFilterRequest.Obj: TCreateVocabularyFilterRequest;
begin
  Result := Self;
end;

function TCreateVocabularyFilterRequest.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateVocabularyFilterRequest.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCreateVocabularyFilterRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateVocabularyFilterRequest.GetVocabularyFilterFileUri: string;
begin
  Result := FVocabularyFilterFileUri.ValueOrDefault;
end;

procedure TCreateVocabularyFilterRequest.SetVocabularyFilterFileUri(const Value: string);
begin
  FVocabularyFilterFileUri := Value;
end;

function TCreateVocabularyFilterRequest.IsSetVocabularyFilterFileUri: Boolean;
begin
  Result := FVocabularyFilterFileUri.HasValue;
end;

function TCreateVocabularyFilterRequest.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TCreateVocabularyFilterRequest.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TCreateVocabularyFilterRequest.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

function TCreateVocabularyFilterRequest.GetWords: TList<string>;
begin
  Result := FWords;
end;

procedure TCreateVocabularyFilterRequest.SetWords(const Value: TList<string>);
begin
  if FWords <> Value then
  begin
    if not KeepWords then
      FWords.Free;
    FWords := Value;
  end;
end;

function TCreateVocabularyFilterRequest.GetKeepWords: Boolean;
begin
  Result := FKeepWords;
end;

procedure TCreateVocabularyFilterRequest.SetKeepWords(const Value: Boolean);
begin
  FKeepWords := Value;
end;

function TCreateVocabularyFilterRequest.IsSetWords: Boolean;
begin
  Result := (FWords <> nil) and (FWords.Count > 0);
end;

end.
