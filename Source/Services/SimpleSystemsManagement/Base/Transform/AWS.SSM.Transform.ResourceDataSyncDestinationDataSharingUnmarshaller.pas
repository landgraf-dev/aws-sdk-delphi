unit AWS.SSM.Transform.ResourceDataSyncDestinationDataSharingUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncDestinationDataSharing, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResourceDataSyncDestinationDataSharingUnmarshaller = IUnmarshaller<TResourceDataSyncDestinationDataSharing, TJsonUnmarshallerContext>;
  
  TResourceDataSyncDestinationDataSharingUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceDataSyncDestinationDataSharing, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceDataSyncDestinationDataSharingUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncDestinationDataSharing;
    class function JsonInstance: IResourceDataSyncDestinationDataSharingUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncDestinationDataSharingUnmarshaller }

function TResourceDataSyncDestinationDataSharingUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncDestinationDataSharing;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceDataSyncDestinationDataSharing;
begin
  UnmarshalledObject := TResourceDataSyncDestinationDataSharing.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('DestinationDataSharingType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DestinationDataSharingType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncDestinationDataSharingUnmarshaller.Create;
begin
  FJsonInstance := TResourceDataSyncDestinationDataSharingUnmarshaller.Create;
end;

class function TResourceDataSyncDestinationDataSharingUnmarshaller.JsonInstance: IResourceDataSyncDestinationDataSharingUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
