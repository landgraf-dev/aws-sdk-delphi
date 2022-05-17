unit AWS.Transcribe.Model.DeleteMedicalVocabularyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteMedicalVocabularyRequest = class;
  
  IDeleteMedicalVocabularyRequest = interface
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TDeleteMedicalVocabularyRequest;
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TDeleteMedicalVocabularyRequest = class(TAmazonTranscribeServiceRequest, IDeleteMedicalVocabularyRequest)
  strict private
    FVocabularyName: Nullable<string>;
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TDeleteMedicalVocabularyRequest;
  public
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TDeleteMedicalVocabularyRequest }

function TDeleteMedicalVocabularyRequest.Obj: TDeleteMedicalVocabularyRequest;
begin
  Result := Self;
end;

function TDeleteMedicalVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TDeleteMedicalVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TDeleteMedicalVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
