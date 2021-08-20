unit AWS.Polly.Transform.GetSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.SynthesisTaskUnmarshaller;

type
  IGetSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetSpeechSynthesisTaskResponseUnmarshaller)
  strict private
    class var FInstance: IGetSpeechSynthesisTaskResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IGetSpeechSynthesisTaskResponseUnmarshaller; static;
  end;
  
implementation

{ TGetSpeechSynthesisTaskResponseUnmarshaller }

function TGetSpeechSynthesisTaskResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetSpeechSynthesisTaskResponse;
begin
  Response := TGetSpeechSynthesisTaskResponse.Create;
  try
    AContext.Read;
    var TargetDepth := TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SynthesisTask', TargetDepth) then
      begin
        var Unmarshaller := TSynthesisTaskUnmarshaller.JsonInstance;
        Response.SynthesisTask := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TGetSpeechSynthesisTaskResponseUnmarshaller.Create;
begin
  FInstance := TGetSpeechSynthesisTaskResponseUnmarshaller.Create;
end;

class function TGetSpeechSynthesisTaskResponseUnmarshaller.Instance: IGetSpeechSynthesisTaskResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
