unit AWS.Transcribe.Model.DeleteLanguageModelResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteLanguageModelResponse = class;
  
  IDeleteLanguageModelResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteLanguageModelResponse;
  end;
  
  TDeleteLanguageModelResponse = class(TAmazonWebServiceResponse, IDeleteLanguageModelResponse)
  strict protected
    function Obj: TDeleteLanguageModelResponse;
  end;
  
implementation

{ TDeleteLanguageModelResponse }

function TDeleteLanguageModelResponse.Obj: TDeleteLanguageModelResponse;
begin
  Result := Self;
end;

end.
