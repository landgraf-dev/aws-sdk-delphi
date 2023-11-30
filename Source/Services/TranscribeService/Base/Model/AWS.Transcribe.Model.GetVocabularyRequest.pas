unit AWS.Transcribe.Model.GetVocabularyRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable;

type
  TGetVocabularyRequest = class;
  
  IGetVocabularyRequest = interface
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TGetVocabularyRequest;
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TGetVocabularyRequest = class(TAmazonTranscribeServiceRequest, IGetVocabularyRequest)
  strict private
    FVocabularyName: Nullable<string>;
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TGetVocabularyRequest;
  public
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TGetVocabularyRequest }

function TGetVocabularyRequest.Obj: TGetVocabularyRequest;
begin
  Result := Self;
end;

function TGetVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TGetVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TGetVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
