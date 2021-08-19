unit AWS.Polly.Transform.PutLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IPutLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TPutLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IPutLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IPutLexiconResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IPutLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TPutLexiconResponseUnmarshaller }

class constructor TPutLexiconResponseUnmarshaller.Create;
begin
  FInstance := TPutLexiconResponseUnmarshaller.Create;
end;

class function TPutLexiconResponseUnmarshaller.Instance: IPutLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
