unit AWS.SSM.Transform.ResourceDataSyncDestinationDataSharingMarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncDestinationDataSharing, 
  AWS.Transform.RequestMarshaller;

type
  IResourceDataSyncDestinationDataSharingMarshaller = IRequestMarshaller<TResourceDataSyncDestinationDataSharing, TJsonMarshallerContext>;
  
  TResourceDataSyncDestinationDataSharingMarshaller = class(TInterfacedObject, IRequestMarshaller<TResourceDataSyncDestinationDataSharing, TJsonMarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncDestinationDataSharingMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TResourceDataSyncDestinationDataSharing; Context: TJsonMarshallerContext);
    class function Instance: IResourceDataSyncDestinationDataSharingMarshaller; static;
  end;
  
implementation

{ TResourceDataSyncDestinationDataSharingMarshaller }

procedure TResourceDataSyncDestinationDataSharingMarshaller.Marshall(ARequestObject: TResourceDataSyncDestinationDataSharing; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDestinationDataSharingType then
  begin
    Context.Writer.WriteName('DestinationDataSharingType');
    Context.Writer.WriteString(ARequestObject.DestinationDataSharingType);
  end;
end;

class constructor TResourceDataSyncDestinationDataSharingMarshaller.Create;
begin
  FInstance := TResourceDataSyncDestinationDataSharingMarshaller.Create;
end;

class function TResourceDataSyncDestinationDataSharingMarshaller.Instance: IResourceDataSyncDestinationDataSharingMarshaller;
begin
  Result := FInstance;
end;

end.
