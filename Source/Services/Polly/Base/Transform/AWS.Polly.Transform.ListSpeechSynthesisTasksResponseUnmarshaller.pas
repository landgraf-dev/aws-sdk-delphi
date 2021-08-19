unit AWS.Polly.Transform.ListSpeechSynthesisTasksResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IListSpeechSynthesisTasksResponseUnmarshaller = IResponseUnmarshaller;
  
  TListSpeechSynthesisTasksResponseUnmarshaller = class(TJsonResponseUnmarshaller, IListSpeechSynthesisTasksResponseUnmarshaller)
  strict private
    class var FInstance: IListSpeechSynthesisTasksResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IListSpeechSynthesisTasksResponseUnmarshaller; static;
  end;
  
implementation

{ TListSpeechSynthesisTasksResponseUnmarshaller }

class constructor TListSpeechSynthesisTasksResponseUnmarshaller.Create;
begin
  FInstance := TListSpeechSynthesisTasksResponseUnmarshaller.Create;
end;

class function TListSpeechSynthesisTasksResponseUnmarshaller.Instance: IListSpeechSynthesisTasksResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
