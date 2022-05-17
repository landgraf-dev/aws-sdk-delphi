unit AWS.Transcribe.Model.GetVocabularyFilterRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TGetVocabularyFilterRequest = class;
  
  IGetVocabularyFilterRequest = interface
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function Obj: TGetVocabularyFilterRequest;
    function IsSetVocabularyFilterName: Boolean;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
  TGetVocabularyFilterRequest = class(TAmazonTranscribeServiceRequest, IGetVocabularyFilterRequest)
  strict private
    FVocabularyFilterName: Nullable<string>;
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
  strict protected
    function Obj: TGetVocabularyFilterRequest;
  public
    function IsSetVocabularyFilterName: Boolean;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
implementation

{ TGetVocabularyFilterRequest }

function TGetVocabularyFilterRequest.Obj: TGetVocabularyFilterRequest;
begin
  Result := Self;
end;

function TGetVocabularyFilterRequest.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TGetVocabularyFilterRequest.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TGetVocabularyFilterRequest.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

end.
