unit AWS.Rekognition.Transform.PersonDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.PersonDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.PersonDetailUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPersonDetectionUnmarshaller = IUnmarshaller<TPersonDetection, TJsonUnmarshallerContext>;
  
  TPersonDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPersonDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPersonDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPersonDetection;
    class function JsonInstance: IPersonDetectionUnmarshaller; static;
  end;
  
implementation

{ TPersonDetectionUnmarshaller }

function TPersonDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPersonDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPersonDetection;
begin
  UnmarshalledObject := TPersonDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Person', TargetDepth) then
      begin
        var Unmarshaller := TPersonDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.Person := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Timestamp', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Timestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPersonDetectionUnmarshaller.Create;
begin
  FJsonInstance := TPersonDetectionUnmarshaller.Create;
end;

class function TPersonDetectionUnmarshaller.JsonInstance: IPersonDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
