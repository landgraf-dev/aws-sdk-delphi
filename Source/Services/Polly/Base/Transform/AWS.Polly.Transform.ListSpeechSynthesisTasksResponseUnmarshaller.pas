unit AWS.Polly.Transform.ListSpeechSynthesisTasksResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Polly.Transform.SynthesisTaskUnmarshaller, 
  AWS.Polly.Model.SynthesisTask;

type
  IListSpeechSynthesisTasksResponseUnmarshaller = IResponseUnmarshaller;
  
  TListSpeechSynthesisTasksResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListSpeechSynthesisTasksResponseUnmarshaller)
  strict private
    class var FInstance: IListSpeechSynthesisTasksResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    class function Instance: IListSpeechSynthesisTasksResponseUnmarshaller; static;
  end;
  
implementation

{ TListSpeechSynthesisTasksResponseUnmarshaller }

function TListSpeechSynthesisTasksResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListSpeechSynthesisTasksResponse;
begin
  Response := TListSpeechSynthesisTasksResponse.Create;
  try
    AContext.Read;
    var TargetDepth := TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SynthesisTasks', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<TSynthesisTask, ISynthesisTaskUnmarshaller>.JsonNew(TSynthesisTaskUnmarshaller.JsonInstance);
        Response.SynthesisTasks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TListSpeechSynthesisTasksResponseUnmarshaller.Create;
begin
  FInstance := TListSpeechSynthesisTasksResponseUnmarshaller.Create;
end;

class function TListSpeechSynthesisTasksResponseUnmarshaller.Instance: IListSpeechSynthesisTasksResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
