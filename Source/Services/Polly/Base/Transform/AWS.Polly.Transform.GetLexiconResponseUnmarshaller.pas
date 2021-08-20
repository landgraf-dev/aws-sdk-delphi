unit AWS.Polly.Transform.GetLexiconResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.LexiconUnmarshaller, 
  AWS.Polly.Transform.LexiconAttributesUnmarshaller;

type
  IGetLexiconResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetLexiconResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetLexiconResponseUnmarshaller)
  strict private
    class var FInstance: IGetLexiconResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IGetLexiconResponseUnmarshaller; static;
  end;
  
implementation

{ TGetLexiconResponseUnmarshaller }

function TGetLexiconResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetLexiconResponse;
begin
  Response := TGetLexiconResponse.Create;
  try
    AContext.Read;
    var TargetDepth := TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Lexicon', TargetDepth) then
      begin
        var Unmarshaller := TLexiconUnmarshaller.JsonInstance;
        Response.Lexicon := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LexiconAttributes', TargetDepth) then
      begin
        var Unmarshaller := TLexiconAttributesUnmarshaller.JsonInstance;
        Response.LexiconAttributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TGetLexiconResponseUnmarshaller.Create;
begin
  FInstance := TGetLexiconResponseUnmarshaller.Create;
end;

class function TGetLexiconResponseUnmarshaller.Instance: IGetLexiconResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
