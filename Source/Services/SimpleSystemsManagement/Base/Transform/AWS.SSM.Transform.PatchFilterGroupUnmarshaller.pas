unit AWS.SSM.Transform.PatchFilterGroupUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.PatchFilterUnmarshaller, 
  AWS.SSM.Model.PatchFilter, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchFilterGroupUnmarshaller = IUnmarshaller<TPatchFilterGroup, TJsonUnmarshallerContext>;
  
  TPatchFilterGroupUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchFilterGroup, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchFilterGroupUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchFilterGroup;
    class function JsonInstance: IPatchFilterGroupUnmarshaller; static;
  end;
  
implementation

{ TPatchFilterGroupUnmarshaller }

function TPatchFilterGroupUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchFilterGroup;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchFilterGroup;
begin
  UnmarshalledObject := TPatchFilterGroup.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('PatchFilters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TPatchFilter, IPatchFilterUnmarshaller>.JsonNew(TPatchFilterUnmarshaller.JsonInstance);
        UnmarshalledObject.PatchFilters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchFilterGroupUnmarshaller.Create;
begin
  FJsonInstance := TPatchFilterGroupUnmarshaller.Create;
end;

class function TPatchFilterGroupUnmarshaller.JsonInstance: IPatchFilterGroupUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
