unit AWS.Transcribe.Model.DeleteCallAnalyticsCategoryResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteCallAnalyticsCategoryResponse = class;
  
  IDeleteCallAnalyticsCategoryResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteCallAnalyticsCategoryResponse;
  end;
  
  TDeleteCallAnalyticsCategoryResponse = class(TAmazonWebServiceResponse, IDeleteCallAnalyticsCategoryResponse)
  strict protected
    function Obj: TDeleteCallAnalyticsCategoryResponse;
  end;
  
implementation

{ TDeleteCallAnalyticsCategoryResponse }

function TDeleteCallAnalyticsCategoryResponse.Obj: TDeleteCallAnalyticsCategoryResponse;
begin
  Result := Self;
end;

end.
