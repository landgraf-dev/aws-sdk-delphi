unit AWS.SSM.Transform.ResourceDataSyncSourceWithStateUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncSourceWithState, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.ResourceDataSyncAwsOrganizationsSourceUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResourceDataSyncSourceWithStateUnmarshaller = IUnmarshaller<TResourceDataSyncSourceWithState, TJsonUnmarshallerContext>;
  
  TResourceDataSyncSourceWithStateUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceDataSyncSourceWithState, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceDataSyncSourceWithStateUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncSourceWithState;
    class function JsonInstance: IResourceDataSyncSourceWithStateUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncSourceWithStateUnmarshaller }

function TResourceDataSyncSourceWithStateUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncSourceWithState;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceDataSyncSourceWithState;
begin
  UnmarshalledObject := TResourceDataSyncSourceWithState.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AwsOrganizationsSource', TargetDepth) then
      begin
        var Unmarshaller := TResourceDataSyncAwsOrganizationsSourceUnmarshaller.JsonInstance;
        UnmarshalledObject.AwsOrganizationsSource := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EnableAllOpsDataSources', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.EnableAllOpsDataSources := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IncludeFutureRegions', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.IncludeFutureRegions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceRegions', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SourceRegions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('State', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.State := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncSourceWithStateUnmarshaller.Create;
begin
  FJsonInstance := TResourceDataSyncSourceWithStateUnmarshaller.Create;
end;

class function TResourceDataSyncSourceWithStateUnmarshaller.JsonInstance: IResourceDataSyncSourceWithStateUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
