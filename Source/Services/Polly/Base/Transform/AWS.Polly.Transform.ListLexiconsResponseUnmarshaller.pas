unit AWS.Polly.Transform.ListLexiconsResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.LexiconDescriptionUnmarshaller, 
  AWS.Polly.Model.LexiconDescription, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IListLexiconsResponseUnmarshaller = IResponseUnmarshaller;
  
  TListLexiconsResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListLexiconsResponseUnmarshaller)
  strict private
    class var FInstance: IListLexiconsResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IListLexiconsResponseUnmarshaller; static;
  end;
  
implementation

{ TListLexiconsResponseUnmarshaller }

function TListLexiconsResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListLexiconsResponse;
begin
  Response := TListLexiconsResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Lexicons', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TLexiconDescription, ILexiconDescriptionUnmarshaller>.JsonNew(TLexiconDescriptionUnmarshaller.JsonInstance);
        Response.Lexicons := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TListLexiconsResponseUnmarshaller.Create;
begin
  FInstance := TListLexiconsResponseUnmarshaller.Create;
end;

class function TListLexiconsResponseUnmarshaller.Instance: IListLexiconsResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
