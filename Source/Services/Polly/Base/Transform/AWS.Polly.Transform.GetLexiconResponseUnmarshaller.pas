unit AWS.Polly.Transform.GetLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IGetLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IGetLexiconResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IGetLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TGetLexiconResponseUnmarshaller }

class constructor TGetLexiconResponseUnmarshaller.Create;
begin
  FInstance := TGetLexiconResponseUnmarshaller.Create;
end;

class function TGetLexiconResponseUnmarshaller.Instance: IGetLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
