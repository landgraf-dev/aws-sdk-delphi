unit AWS.Rekognition.Transform.SegmentTypeInfoUnmarshaller;

interface

uses
  AWS.Rekognition.Model.SegmentTypeInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISegmentTypeInfoUnmarshaller = IUnmarshaller<TSegmentTypeInfo, TJsonUnmarshallerContext>;
  
  TSegmentTypeInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSegmentTypeInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISegmentTypeInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSegmentTypeInfo;
    class function JsonInstance: ISegmentTypeInfoUnmarshaller; static;
  end;
  
implementation

{ TSegmentTypeInfoUnmarshaller }

function TSegmentTypeInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSegmentTypeInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSegmentTypeInfo;
begin
  UnmarshalledObject := TSegmentTypeInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ModelVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ModelVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSegmentTypeInfoUnmarshaller.Create;
begin
  FJsonInstance := TSegmentTypeInfoUnmarshaller.Create;
end;

class function TSegmentTypeInfoUnmarshaller.JsonInstance: ISegmentTypeInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
