unit AWS.Rekognition.Transform.ShotSegmentUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ShotSegment, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IShotSegmentUnmarshaller = IUnmarshaller<TShotSegment, TJsonUnmarshallerContext>;
  
  TShotSegmentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TShotSegment, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IShotSegmentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TShotSegment;
    class function JsonInstance: IShotSegmentUnmarshaller; static;
  end;
  
implementation

{ TShotSegmentUnmarshaller }

function TShotSegmentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TShotSegment;
var
  TargetDepth: Integer;
  UnmarshalledObject: TShotSegment;
begin
  UnmarshalledObject := TShotSegment.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Index', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Index := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TShotSegmentUnmarshaller.Create;
begin
  FJsonInstance := TShotSegmentUnmarshaller.Create;
end;

class function TShotSegmentUnmarshaller.JsonInstance: IShotSegmentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
