unit AWS.Rekognition.Transform.KinesisDataStreamUnmarshaller;

interface

uses
  AWS.Rekognition.Model.KinesisDataStream, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKinesisDataStreamUnmarshaller = IUnmarshaller<TKinesisDataStream, TJsonUnmarshallerContext>;
  
  TKinesisDataStreamUnmarshaller = class(TInterfacedObject, IUnmarshaller<TKinesisDataStream, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IKinesisDataStreamUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TKinesisDataStream;
    class function JsonInstance: IKinesisDataStreamUnmarshaller; static;
  end;
  
implementation

{ TKinesisDataStreamUnmarshaller }

function TKinesisDataStreamUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TKinesisDataStream;
var
  TargetDepth: Integer;
  UnmarshalledObject: TKinesisDataStream;
begin
  UnmarshalledObject := TKinesisDataStream.Create;
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

class constructor TKinesisDataStreamUnmarshaller.Create;
begin
  FJsonInstance := TKinesisDataStreamUnmarshaller.Create;
end;

class function TKinesisDataStreamUnmarshaller.JsonInstance: IKinesisDataStreamUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
