unit AWS.Rekognition.Transform.VideoMetadataUnmarshaller;

interface

uses
  AWS.Rekognition.Model.VideoMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVideoMetadataUnmarshaller = IUnmarshaller<TVideoMetadata, TJsonUnmarshallerContext>;
  
  TVideoMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVideoMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IVideoMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TVideoMetadata;
    class function JsonInstance: IVideoMetadataUnmarshaller; static;
  end;
  
implementation

{ TVideoMetadataUnmarshaller }

function TVideoMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TVideoMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TVideoMetadata;
begin
  UnmarshalledObject := TVideoMetadata.Create;
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
      if AContext.TestExpression('Format', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Format := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FrameHeight', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.FrameHeight := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FrameRate', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.FrameRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FrameWidth', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.FrameWidth := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TVideoMetadataUnmarshaller.Create;
begin
  FJsonInstance := TVideoMetadataUnmarshaller.Create;
end;

class function TVideoMetadataUnmarshaller.JsonInstance: IVideoMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
