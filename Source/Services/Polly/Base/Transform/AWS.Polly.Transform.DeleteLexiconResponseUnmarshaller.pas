unit AWS.Polly.Transform.DeleteLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DeleteLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IDeleteLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteLexiconResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IDeleteLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteLexiconResponseUnmarshaller }

class constructor TDeleteLexiconResponseUnmarshaller.Create;
begin
  FInstance := TDeleteLexiconResponseUnmarshaller.Create;
end;

class function TDeleteLexiconResponseUnmarshaller.Instance: IDeleteLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
