unit AWS.Transcribe.Model.DeleteVocabularyFilterRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteVocabularyFilterRequest = class;
  
  IDeleteVocabularyFilterRequest = interface
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
    function Obj: TDeleteVocabularyFilterRequest;
    function IsSetVocabularyFilterName: Boolean;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
  TDeleteVocabularyFilterRequest = class(TAmazonTranscribeServiceRequest, IDeleteVocabularyFilterRequest)
  strict private
    FVocabularyFilterName: Nullable<string>;
    function GetVocabularyFilterName: string;
    procedure SetVocabularyFilterName(const Value: string);
  strict protected
    function Obj: TDeleteVocabularyFilterRequest;
  public
    function IsSetVocabularyFilterName: Boolean;
    property VocabularyFilterName: string read GetVocabularyFilterName write SetVocabularyFilterName;
  end;
  
implementation

{ TDeleteVocabularyFilterRequest }

function TDeleteVocabularyFilterRequest.Obj: TDeleteVocabularyFilterRequest;
begin
  Result := Self;
end;

function TDeleteVocabularyFilterRequest.GetVocabularyFilterName: string;
begin
  Result := FVocabularyFilterName.ValueOrDefault;
end;

procedure TDeleteVocabularyFilterRequest.SetVocabularyFilterName(const Value: string);
begin
  FVocabularyFilterName := Value;
end;

function TDeleteVocabularyFilterRequest.IsSetVocabularyFilterName: Boolean;
begin
  Result := FVocabularyFilterName.HasValue;
end;

end.
