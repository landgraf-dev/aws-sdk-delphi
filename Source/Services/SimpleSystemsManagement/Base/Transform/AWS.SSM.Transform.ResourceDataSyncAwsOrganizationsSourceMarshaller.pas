unit AWS.SSM.Transform.ResourceDataSyncAwsOrganizationsSourceMarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncAwsOrganizationsSource, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.ResourceDataSyncOrganizationalUnitMarshaller;

type
  IResourceDataSyncAwsOrganizationsSourceMarshaller = IRequestMarshaller<TResourceDataSyncAwsOrganizationsSource, TJsonMarshallerContext>;
  
  TResourceDataSyncAwsOrganizationsSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TResourceDataSyncAwsOrganizationsSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncAwsOrganizationsSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TResourceDataSyncAwsOrganizationsSource; Context: TJsonMarshallerContext);
    class function Instance: IResourceDataSyncAwsOrganizationsSourceMarshaller; static;
  end;
  
implementation

{ TResourceDataSyncAwsOrganizationsSourceMarshaller }

procedure TResourceDataSyncAwsOrganizationsSourceMarshaller.Marshall(ARequestObject: TResourceDataSyncAwsOrganizationsSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetOrganizationSourceType then
  begin
    Context.Writer.WriteName('OrganizationSourceType');
    Context.Writer.WriteString(ARequestObject.OrganizationSourceType);
  end;
  if ARequestObject.IsSetOrganizationalUnits then
  begin
    Context.Writer.WriteName('OrganizationalUnits');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectOrganizationalUnitsListValue in ARequestObject.OrganizationalUnits do
    begin
      Context.Writer.WriteBeginObject;
      TResourceDataSyncOrganizationalUnitMarshaller.Instance.Marshall(ARequestObjectOrganizationalUnitsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TResourceDataSyncAwsOrganizationsSourceMarshaller.Create;
begin
  FInstance := TResourceDataSyncAwsOrganizationsSourceMarshaller.Create;
end;

class function TResourceDataSyncAwsOrganizationsSourceMarshaller.Instance: IResourceDataSyncAwsOrganizationsSourceMarshaller;
begin
  Result := FInstance;
end;

end.
