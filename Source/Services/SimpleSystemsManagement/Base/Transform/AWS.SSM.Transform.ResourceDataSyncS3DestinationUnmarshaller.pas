unit AWS.SSM.Transform.ResourceDataSyncS3DestinationUnmarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncS3Destination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ResourceDataSyncDestinationDataSharingUnmarshaller;

type
  IResourceDataSyncS3DestinationUnmarshaller = IUnmarshaller<TResourceDataSyncS3Destination, TJsonUnmarshallerContext>;
  
  TResourceDataSyncS3DestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TResourceDataSyncS3Destination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IResourceDataSyncS3DestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncS3Destination;
    class function JsonInstance: IResourceDataSyncS3DestinationUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncS3DestinationUnmarshaller }

function TResourceDataSyncS3DestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TResourceDataSyncS3Destination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TResourceDataSyncS3Destination;
begin
  UnmarshalledObject := TResourceDataSyncS3Destination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AWSKMSKeyARN', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AWSKMSKeyARN := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('BucketName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BucketName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DestinationDataSharing', TargetDepth) then
      begin
        var Unmarshaller := TResourceDataSyncDestinationDataSharingUnmarshaller.JsonInstance;
        UnmarshalledObject.DestinationDataSharing := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Prefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Region', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Region := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncFormat := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncS3DestinationUnmarshaller.Create;
begin
  FJsonInstance := TResourceDataSyncS3DestinationUnmarshaller.Create;
end;

class function TResourceDataSyncS3DestinationUnmarshaller.JsonInstance: IResourceDataSyncS3DestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
