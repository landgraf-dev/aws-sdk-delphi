unit AWS.SSM.Transform.ResourceDataSyncOrganizationalUnitMarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncOrganizationalUnit, 
  AWS.Transform.RequestMarshaller;

type
  IResourceDataSyncOrganizationalUnitMarshaller = IRequestMarshaller<TResourceDataSyncOrganizationalUnit, TJsonMarshallerContext>;
  
  TResourceDataSyncOrganizationalUnitMarshaller = class(TInterfacedObject, IRequestMarshaller<TResourceDataSyncOrganizationalUnit, TJsonMarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncOrganizationalUnitMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TResourceDataSyncOrganizationalUnit; Context: TJsonMarshallerContext);
    class function Instance: IResourceDataSyncOrganizationalUnitMarshaller; static;
  end;
  
implementation

{ TResourceDataSyncOrganizationalUnitMarshaller }

procedure TResourceDataSyncOrganizationalUnitMarshaller.Marshall(ARequestObject: TResourceDataSyncOrganizationalUnit; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetOrganizationalUnitId then
  begin
    Context.Writer.WriteName('OrganizationalUnitId');
    Context.Writer.WriteString(ARequestObject.OrganizationalUnitId);
  end;
end;

class constructor TResourceDataSyncOrganizationalUnitMarshaller.Create;
begin
  FInstance := TResourceDataSyncOrganizationalUnitMarshaller.Create;
end;

class function TResourceDataSyncOrganizationalUnitMarshaller.Instance: IResourceDataSyncOrganizationalUnitMarshaller;
begin
  Result := FInstance;
end;

end.
