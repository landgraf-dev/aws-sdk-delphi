unit AWS.SSM.Transform.ResourceDataSyncAwsOrganizationsSourceUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncOrganizationalUnitUnmarshaller, 
  AWS.SSM.Model.ResourceDataSyncOrganizationalUnit;

type
  IResourceDataSyncAwsOrganizationsSourceUnmarshaller = IUnmarshaller<TResourceDataSyncAwsOrganizationsSource, TJsonUnmarshallerContext>;
  
  TResourceDataSyncAwsOrganizationsSourceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceDataSyncAwsOrganizationsSource, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceDataSyncAwsOrganizationsSourceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncAwsOrganizationsSource;
    class function JsonInstance: IResourceDataSyncAwsOrganizationsSourceUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncAwsOrganizationsSourceUnmarshaller }

function TResourceDataSyncAwsOrganizationsSourceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncAwsOrganizationsSource;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceDataSyncAwsOrganizationsSource;
begin
  UnmarshalledObject := TResourceDataSyncAwsOrganizationsSource.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('OrganizationSourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OrganizationSourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OrganizationalUnits', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TResourceDataSyncOrganizationalUnit, IResourceDataSyncOrganizationalUnitUnmarshaller>.JsonNew(TResourceDataSyncOrganizationalUnitUnmarshaller.JsonInstance);
        UnmarshalledObject.OrganizationalUnits := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncAwsOrganizationsSourceUnmarshaller.Create;
begin
  FJsonInstance := TResourceDataSyncAwsOrganizationsSourceUnmarshaller.Create;
end;

class function TResourceDataSyncAwsOrganizationsSourceUnmarshaller.JsonInstance: IResourceDataSyncAwsOrganizationsSourceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
