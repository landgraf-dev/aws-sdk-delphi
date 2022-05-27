unit AWS.Rekognition.Transform.StreamProcessorOutputUnmarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.KinesisDataStreamUnmarshaller, 
  AWS.Rekognition.Transform.S3DestinationUnmarshaller;

type
  IStreamProcessorOutputUnmarshaller = IUnmarshaller<TStreamProcessorOutput, TJsonUnmarshallerContext>;
  
  TStreamProcessorOutputUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStreamProcessorOutput, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IStreamProcessorOutputUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorOutput;
    class function JsonInstance: IStreamProcessorOutputUnmarshaller; static;
  end;
  
implementation

{ TStreamProcessorOutputUnmarshaller }

function TStreamProcessorOutputUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TStreamProcessorOutput;
var
  TargetDepth: Integer;
  UnmarshalledObject: TStreamProcessorOutput;
begin
  UnmarshalledObject := TStreamProcessorOutput.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('KinesisDataStream', TargetDepth) then
      begin
        var Unmarshaller := TKinesisDataStreamUnmarshaller.JsonInstance;
        UnmarshalledObject.KinesisDataStream := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('S3Destination', TargetDepth) then
      begin
        var Unmarshaller := TS3DestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Destination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TStreamProcessorOutputUnmarshaller.Create;
begin
  FJsonInstance := TStreamProcessorOutputUnmarshaller.Create;
end;

class function TStreamProcessorOutputUnmarshaller.JsonInstance: IStreamProcessorOutputUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
