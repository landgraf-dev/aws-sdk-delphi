unit AWS.Rekognition.Transform.AudioMetadataUnmarshaller;

interface

uses
  AWS.Rekognition.Model.AudioMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAudioMetadataUnmarshaller = IUnmarshaller<TAudioMetadata, TJsonUnmarshallerContext>;
  
  TAudioMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAudioMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAudioMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAudioMetadata;
    class function JsonInstance: IAudioMetadataUnmarshaller; static;
  end;
  
implementation

{ TAudioMetadataUnmarshaller }

function TAudioMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAudioMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAudioMetadata;
begin
  UnmarshalledObject := TAudioMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Codec', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Codec := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DurationMillis', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.DurationMillis := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NumberOfChannels', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.NumberOfChannels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SampleRate', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.SampleRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAudioMetadataUnmarshaller.Create;
begin
  FJsonInstance := TAudioMetadataUnmarshaller.Create;
end;

class function TAudioMetadataUnmarshaller.JsonInstance: IAudioMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
