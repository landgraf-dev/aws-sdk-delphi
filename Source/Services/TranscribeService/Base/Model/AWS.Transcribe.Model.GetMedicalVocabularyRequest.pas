unit AWS.Transcribe.Model.GetMedicalVocabularyRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable;

type
  TGetMedicalVocabularyRequest = class;
  
  IGetMedicalVocabularyRequest = interface
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TGetMedicalVocabularyRequest;
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TGetMedicalVocabularyRequest = class(TAmazonTranscribeServiceRequest, IGetMedicalVocabularyRequest)
  strict private
    FVocabularyName: Nullable<string>;
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TGetMedicalVocabularyRequest;
  public
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TGetMedicalVocabularyRequest }

function TGetMedicalVocabularyRequest.Obj: TGetMedicalVocabularyRequest;
begin
  Result := Self;
end;

function TGetMedicalVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TGetMedicalVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TGetMedicalVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
