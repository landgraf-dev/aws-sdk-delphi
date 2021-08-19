unit AWS.Polly.Transform.GetSpeechSynthesisTaskResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  IGetSpeechSynthesisTaskResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetSpeechSynthesisTaskResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetSpeechSynthesisTaskResponseUnmarshaller)
  strict private
    class var FInstance: IGetSpeechSynthesisTaskResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: IGetSpeechSynthesisTaskResponseUnmarshaller; static;
  end;
  
implementation

{ TGetSpeechSynthesisTaskResponseUnmarshaller }

class constructor TGetSpeechSynthesisTaskResponseUnmarshaller.Create;
begin
  FInstance := TGetSpeechSynthesisTaskResponseUnmarshaller.Create;
end;

class function TGetSpeechSynthesisTaskResponseUnmarshaller.Instance: IGetSpeechSynthesisTaskResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
