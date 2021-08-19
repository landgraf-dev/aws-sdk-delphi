unit AWS.Polly.Transform.ListLexiconsResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IListLexiconsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListLexiconsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListLexiconsResponseUnmarshaller)
  strict private
    class var FInstance: IListLexiconsResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IListLexiconsResponseUnmarshaller; static;
  end;
  
implementation

{ TListLexiconsResponseUnmarshaller }

class constructor TListLexiconsResponseUnmarshaller.Create;
begin
  FInstance := TListLexiconsResponseUnmarshaller.Create;
end;

class function TListLexiconsResponseUnmarshaller.Instance: IListLexiconsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
