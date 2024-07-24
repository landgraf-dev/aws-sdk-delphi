unit AWS.SSM.Transform.PatchGroupPatchBaselineMappingUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchGroupPatchBaselineMapping, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.PatchBaselineIdentityUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchGroupPatchBaselineMappingUnmarshaller = IUnmarshaller<TPatchGroupPatchBaselineMapping, TJsonUnmarshallerContext>;
  
  TPatchGroupPatchBaselineMappingUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchGroupPatchBaselineMapping, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchGroupPatchBaselineMappingUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchGroupPatchBaselineMapping;
    class function JsonInstance: IPatchGroupPatchBaselineMappingUnmarshaller; static;
  end;
  
implementation

{ TPatchGroupPatchBaselineMappingUnmarshaller }

function TPatchGroupPatchBaselineMappingUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchGroupPatchBaselineMapping;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchGroupPatchBaselineMapping;
begin
  UnmarshalledObject := TPatchGroupPatchBaselineMapping.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BaselineIdentity', TargetDepth) then
      begin
        var Unmarshaller := TPatchBaselineIdentityUnmarshaller.JsonInstance;
        UnmarshalledObject.BaselineIdentity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PatchGroup', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PatchGroup := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchGroupPatchBaselineMappingUnmarshaller.Create;
begin
  FJsonInstance := TPatchGroupPatchBaselineMappingUnmarshaller.Create;
end;

class function TPatchGroupPatchBaselineMappingUnmarshaller.JsonInstance: IPatchGroupPatchBaselineMappingUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
