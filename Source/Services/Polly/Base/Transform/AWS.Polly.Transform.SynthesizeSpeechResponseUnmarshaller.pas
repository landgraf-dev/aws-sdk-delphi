unit AWS.Polly.Transform.SynthesizeSpeechResponseUnmarshaller;

interface

uses
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Transform.ResponseUnmarshaller;

type
  ISynthesizeSpeechResponseUnmarshaller = IResponseUnmarshaller;
  
  TSynthesizeSpeechResponseUnmarshaller = class(TJsonResponseUnmarshaller, ISynthesizeSpeechResponseUnmarshaller)
  strict private
    class var FInstance: ISynthesizeSpeechResponseUnmarshaller;
    class constructor Create;
  public
    class function Instance: ISynthesizeSpeechResponseUnmarshaller; static;
  end;
  
implementation

{ TSynthesizeSpeechResponseUnmarshaller }

class constructor TSynthesizeSpeechResponseUnmarshaller.Create;
begin
  FInstance := TSynthesizeSpeechResponseUnmarshaller.Create;
end;

class function TSynthesizeSpeechResponseUnmarshaller.Instance: ISynthesizeSpeechResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
