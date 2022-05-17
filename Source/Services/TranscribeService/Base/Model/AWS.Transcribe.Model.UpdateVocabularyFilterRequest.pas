unit AWS.Transcribe.Model.UpdateVocabularyFilterRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.Request;

type
  TUpdateVocabularyFilterRequest = class;
  
  IUpdateVocabularyFilterRequest = interface
    function GetVocabularyFilterFileUri: string;
    procedure SetVocabularyFilterFileUri(const Value: string);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetWords: TList<string>;
    procedure SetWords(const Value: TList<string>);
    function GetKeepWords: Boolean;
    procedure SetKeepWords(const Value: Boolean);
    function Obj: TUpdateVocabularyFilterRequest;
    function IsSetVocabularyFilterFileUri: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetWords: Boolean;
    property VocabularyFilterFileUri: string read GetVocabularyFilterFileUri write SetVocabularyFilterFileUri;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property Words: TList<string> read GetWords write SetWords;
    property KeepWords: Boolean read GetKeepWords write SetKeepWords;
  end;
  
  TUpdateVocabularyFilterRequest = class(TAmazonTranscribeServiceRequest, IUpdateVocabularyFilterRequest)
  strict private
    FVocabularyFilterFileUri: Nullable<string>;
    FVocabularyFilterName: Nullable<string>;
    FWords: TList<string>;
    FKeepWords: Boolean;
    function GetVocabularyFilterFileUri: string;
    procedure SetVocabularyFilterFileUri(const Value: string);
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function GetWords: TList<string>;
    procedure SetWords(const Value: TList<string>);
    function GetKeepWords: Boolean;
    procedure SetKeepWords(const Value: Boolean);
  strict protected
    function Obj: TUpdateVocabularyFilterRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetVocabularyFilterFileUri: Boolean;
    function IsSetVocabularyFilterName: Boolean;
    function IsSetWords: Boolean;
    property VocabularyFilterFileUri: string read GetVocabularyFilterFileUri write SetVocabularyFilterFileUri;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
    property Words: TList<string> read GetWords write SetWords;
    property KeepWords: Boolean read GetKeepWords write SetKeepWords;
  end;
  
implementation

{ TUpdateVocabularyFilterRequest }

constructor TUpdateVocabularyFilterRequest.Create;
begin
  inherited;
  FWords := TList<string>.Create;
end;

destructor TUpdateVocabularyFilterRequest.Destroy;
begin
  Words := nil;
  inherited;
end;

function TUpdateVocabularyFilterRequest.Obj: TUpdateVocabularyFilterRequest;
begin
  Result := Self;
end;

function TUpdateVocabularyFilterRequest.GetVocabularyFilterFileUri: string;
begin
  Result := FVocabularyFilterFileUri.ValueOrDefault;
end;

procedure TUpdateVocabularyFilterRequest.SetVocabularyFilterFileUri(const Value: string);
begin
  FVocabularyFilterFileUri := Value;
end;

function TUpdateVocabularyFilterRequest.IsSetVocabularyFilterFileUri: Boolean;
begin
  Result := FVocabularyFilterFileUri.HasValue;
end;

function TUpdateVocabularyFilterRequest.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TUpdateVocabularyFilterRequest.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TUpdateVocabularyFilterRequest.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

function TUpdateVocabularyFilterRequest.GetWords: TList<string>;
begin
  Result := FWords;
end;

procedure TUpdateVocabularyFilterRequest.SetWords(const Value: TList<string>);
begin
  if FWords <> Value then
  begin
    if not KeepWords then
      FWords.Free;
    FWords := Value;
  end;
end;

function TUpdateVocabularyFilterRequest.GetKeepWords: Boolean;
begin
  Result := FKeepWords;
end;

procedure TUpdateVocabularyFilterRequest.SetKeepWords(const Value: Boolean);
begin
  FKeepWords := Value;
end;

function TUpdateVocabularyFilterRequest.IsSetWords: Boolean;
begin
  Result := (FWords <> nil) and (FWords.Count > 0);
end;

end.
