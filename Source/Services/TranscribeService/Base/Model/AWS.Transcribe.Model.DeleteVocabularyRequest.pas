unit AWS.Transcribe.Model.DeleteVocabularyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TDeleteVocabularyRequest = class;
  
  IDeleteVocabularyRequest = interface
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
    function Obj: TDeleteVocabularyRequest;
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
  TDeleteVocabularyRequest = class(TAmazonTranscribeServiceRequest, IDeleteVocabularyRequest)
  strict private
    FVocabularyName: Nullable<string>;
    function GetVocabularyName: string;
    procedure SetVocabularyName(const Value: string);
  strict protected
    function Obj: TDeleteVocabularyRequest;
  public
    function IsSetVocabularyName: Boolean;
    property VocabularyName: string read GetVocabularyName write SetVocabularyName;
  end;
  
implementation

{ TDeleteVocabularyRequest }

function TDeleteVocabularyRequest.Obj: TDeleteVocabularyRequest;
begin
  Result := Self;
end;

function TDeleteVocabularyRequest.GetVocabularyName: string;
begin
  Result := FVocabularyName.ValueOrDefault;
end;

procedure TDeleteVocabularyRequest.SetVocabularyName(const Value: string);
begin
  FVocabularyName := Value;
end;

function TDeleteVocabularyRequest.IsSetVocabularyName: Boolean;
begin
  Result := FVocabularyName.HasValue;
end;

end.
