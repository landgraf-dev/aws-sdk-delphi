unit AWS.Polly.Transform.PutLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext;

type
  IPutLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IPutLexiconResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IPutLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TPutLexiconResponseUnmarshaller }

function TPutLexiconResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TPutLexiconResponse;
begin
  Response := TPutLexiconResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TPutLexiconResponseUnmarshaller.Create;
begin
  FInstance := TPutLexiconResponseUnmarshaller.Create;
end;

class function TPutLexiconResponseUnmarshaller.Instance: IPutLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
