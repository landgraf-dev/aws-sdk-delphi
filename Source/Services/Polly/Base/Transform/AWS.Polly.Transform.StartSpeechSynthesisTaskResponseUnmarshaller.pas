unit AWS.Polly.Transform.StartSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Transform.SynthesisTaskUnmarshaller;

type
  IStartSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartSpeechSynthesisTaskResponseUnmarshaller)
  strict private
    class var FInstance: IStartSpeechSynthesisTaskResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IStartSpeechSynthesisTaskResponseUnmarshaller; static;
  end;
  
implementation

{ TStartSpeechSynthesisTaskResponseUnmarshaller }

function TStartSpeechSynthesisTaskResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStartSpeechSynthesisTaskResponse;
begin
  Response := TStartSpeechSynthesisTaskResponse.Create;
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

class constructor TStartSpeechSynthesisTaskResponseUnmarshaller.Create;
begin
  FInstance := TStartSpeechSynthesisTaskResponseUnmarshaller.Create;
end;

class function TStartSpeechSynthesisTaskResponseUnmarshaller.Instance: IStartSpeechSynthesisTaskResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
