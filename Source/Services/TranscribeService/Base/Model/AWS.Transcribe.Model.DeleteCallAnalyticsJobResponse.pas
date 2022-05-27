unit AWS.Transcribe.Model.DeleteCallAnalyticsJobResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteCallAnalyticsJobResponse = class;
  
  IDeleteCallAnalyticsJobResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteCallAnalyticsJobResponse;
  end;
  
  TDeleteCallAnalyticsJobResponse = class(TAmazonWebServiceResponse, IDeleteCallAnalyticsJobResponse)
  strict protected
    function Obj: TDeleteCallAnalyticsJobResponse;
  end;
  
implementation

{ TDeleteCallAnalyticsJobResponse }

function TDeleteCallAnalyticsJobResponse.Obj: TDeleteCallAnalyticsJobResponse;
begin
  Result := Self;
end;

end.
