unit AWS.Rekognition.Transform.KinesisVideoStreamUnmarshaller;

interface

uses
  AWS.Rekognition.Model.KinesisVideoStream, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKinesisVideoStreamUnmarshaller = IUnmarshaller<TKinesisVideoStream, TJsonUnmarshallerContext>;
  
  TKinesisVideoStreamUnmarshaller = class(TInterfacedObject, IUnmarshaller<TKinesisVideoStream, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IKinesisVideoStreamUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TKinesisVideoStream;
    class function JsonInstance: IKinesisVideoStreamUnmarshaller; static;
  end;
  
implementation

{ TKinesisVideoStreamUnmarshaller }

function TKinesisVideoStreamUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TKinesisVideoStream;
var
  TargetDepth: Integer;
  UnmarshalledObject: TKinesisVideoStream;
begin
  UnmarshalledObject := TKinesisVideoStream.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Arn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Arn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TKinesisVideoStreamUnmarshaller.Create;
begin
  FJsonInstance := TKinesisVideoStreamUnmarshaller.Create;
end;

class function TKinesisVideoStreamUnmarshaller.JsonInstance: IKinesisVideoStreamUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
