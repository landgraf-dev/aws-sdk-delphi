unit AWS.Polly.Transform.SynthesisTaskUnmarshaller;

interface

uses
  AWS.Polly.Model.SynthesisTask, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  ISynthesisTaskUnmarshaller = IUnmarshaller<TSynthesisTask, TJsonUnmarshallerContext>;
  
  TSynthesisTaskUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSynthesisTask, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ISynthesisTaskUnmarshaller;
    class constructor Create;
  public
    class function Instance: ISynthesisTaskUnmarshaller; static;
  end;
  
implementation

{ TSynthesisTaskUnmarshaller }

class constructor TSynthesisTaskUnmarshaller.Create;
begin
  FInstance := TSynthesisTaskUnmarshaller.Create;
end;

class function TSynthesisTaskUnmarshaller.Instance: ISynthesisTaskUnmarshaller;
begin
  Result := FInstance;
end;

end.
