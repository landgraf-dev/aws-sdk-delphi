unit AWS.Polly.Transform.DeleteLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.DeleteLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext;

type
  IDeleteLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IDeleteLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteLexiconResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IDeleteLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteLexiconResponseUnmarshaller }

function TDeleteLexiconResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteLexiconResponse;
begin
  Response := TDeleteLexiconResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TDeleteLexiconResponseUnmarshaller.Create;
begin
  FInstance := TDeleteLexiconResponseUnmarshaller.Create;
end;

class function TDeleteLexiconResponseUnmarshaller.Instance: IDeleteLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
