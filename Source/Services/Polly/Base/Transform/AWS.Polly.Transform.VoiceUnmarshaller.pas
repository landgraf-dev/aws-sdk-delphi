unit AWS.Polly.Transform.VoiceUnmarshaller;

interface

uses
  AWS.Polly.Model.Voice, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  IVoiceUnmarshaller = IUnmarshaller<TVoice, TJsonUnmarshallerContext>;
  
  TVoiceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVoice, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IVoiceUnmarshaller;
    class constructor Create;
  public
    class function Instance: IVoiceUnmarshaller; static;
  end;
  
implementation

{ TVoiceUnmarshaller }

class constructor TVoiceUnmarshaller.Create;
begin
  FInstance := TVoiceUnmarshaller.Create;
end;

class function TVoiceUnmarshaller.Instance: IVoiceUnmarshaller;
begin
  Result := FInstance;
end;

end.
