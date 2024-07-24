unit AWS.SSM.Transform.EffectivePatchUnmarshaller;

interface

uses
  AWS.SSM.Model.EffectivePatch, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.PatchUnmarshaller, 
  AWS.SSM.Transform.PatchStatusUnmarshaller;

type
  IEffectivePatchUnmarshaller = IUnmarshaller<TEffectivePatch, TJsonUnmarshallerContext>;
  
  TEffectivePatchUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEffectivePatch, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEffectivePatchUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEffectivePatch;
    class function JsonInstance: IEffectivePatchUnmarshaller; static;
  end;
  
implementation

{ TEffectivePatchUnmarshaller }

function TEffectivePatchUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEffectivePatch;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEffectivePatch;
begin
  UnmarshalledObject := TEffectivePatch.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Patch', TargetDepth) then
      begin
        var Unmarshaller := TPatchUnmarshaller.JsonInstance;
        UnmarshalledObject.Patch := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PatchStatus', TargetDepth) then
      begin
        var Unmarshaller := TPatchStatusUnmarshaller.JsonInstance;
        UnmarshalledObject.PatchStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEffectivePatchUnmarshaller.Create;
begin
  FJsonInstance := TEffectivePatchUnmarshaller.Create;
end;

class function TEffectivePatchUnmarshaller.JsonInstance: IEffectivePatchUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
