unit AWS.Rekognition.Transform.FaceRecordUnmarshaller;

interface

uses
  AWS.Rekognition.Model.FaceRecord, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.FaceUnmarshaller, 
  AWS.Rekognition.Transform.FaceDetailUnmarshaller;

type
  IFaceRecordUnmarshaller = IUnmarshaller<TFaceRecord, TJsonUnmarshallerContext>;
  
  TFaceRecordUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFaceRecord, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFaceRecordUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFaceRecord;
    class function JsonInstance: IFaceRecordUnmarshaller; static;
  end;
  
implementation

{ TFaceRecordUnmarshaller }

function TFaceRecordUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFaceRecord;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFaceRecord;
begin
  UnmarshalledObject := TFaceRecord.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TFaceUnmarshaller.JsonInstance;
        UnmarshalledObject.Face := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FaceDetail', TargetDepth) then
      begin
        var Unmarshaller := TFaceDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.FaceDetail := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFaceRecordUnmarshaller.Create;
begin
  FJsonInstance := TFaceRecordUnmarshaller.Create;
end;

class function TFaceRecordUnmarshaller.JsonInstance: IFaceRecordUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
