unit AWS.SSM.Transform.ResourceDataSyncOrganizationalUnitUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncOrganizationalUnit, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResourceDataSyncOrganizationalUnitUnmarshaller = IUnmarshaller<TResourceDataSyncOrganizationalUnit, TJsonUnmarshallerContext>;
  
  TResourceDataSyncOrganizationalUnitUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceDataSyncOrganizationalUnit, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceDataSyncOrganizationalUnitUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncOrganizationalUnit;
    class function JsonInstance: IResourceDataSyncOrganizationalUnitUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncOrganizationalUnitUnmarshaller }

function TResourceDataSyncOrganizationalUnitUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncOrganizationalUnit;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceDataSyncOrganizationalUnit;
begin
  UnmarshalledObject := TResourceDataSyncOrganizationalUnit.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OrganizationalUnitId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OrganizationalUnitId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncOrganizationalUnitUnmarshaller.Create;
begin
  FJsonInstance := TResourceDataSyncOrganizationalUnitUnmarshaller.Create;
end;

class function TResourceDataSyncOrganizationalUnitUnmarshaller.JsonInstance: IResourceDataSyncOrganizationalUnitUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
