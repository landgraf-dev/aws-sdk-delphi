unit AWS.Rekognition.Transform.StreamProcessorInputUnmarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.KinesisVideoStreamUnmarshaller;

type
  IStreamProcessorInputUnmarshaller = IUnmarshaller<TStreamProcessorInput, TJsonUnmarshallerContext>;
  
  TStreamProcessorInputUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStreamProcessorInput, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IStreamProcessorInputUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorInput;
    class function JsonInstance: IStreamProcessorInputUnmarshaller; static;
  end;
  
implementation

{ TStreamProcessorInputUnmarshaller }

function TStreamProcessorInputUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorInput;
var
  TargetDepth: Integer;
  UnmarshalledObject: TStreamProcessorInput;
begin
  UnmarshalledObject := TStreamProcessorInput.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('KinesisVideoStream', TargetDepth) then
      begin
        var Unmarshaller := TKinesisVideoStreamUnmarshaller.JsonInstance;
        UnmarshalledObject.KinesisVideoStream := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TStreamProcessorInputUnmarshaller.Create;
begin
  FJsonInstance := TStreamProcessorInputUnmarshaller.Create;
end;

class function TStreamProcessorInputUnmarshaller.JsonInstance: IStreamProcessorInputUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
