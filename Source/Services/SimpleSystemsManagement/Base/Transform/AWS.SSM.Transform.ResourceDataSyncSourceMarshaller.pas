unit AWS.SSM.Transform.ResourceDataSyncSourceMarshaller;

interface

uses
  AWS.SSM.Model.ResourceDataSyncSource, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.ResourceDataSyncAwsOrganizationsSourceMarshaller;

type
  IResourceDataSyncSourceMarshaller = IRequestMarshaller<TResourceDataSyncSource, TJsonMarshallerContext>;
  
  TResourceDataSyncSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TResourceDataSyncSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TResourceDataSyncSource; Context: TJsonMarshallerContext);
    class function Instance: IResourceDataSyncSourceMarshaller; static;
  end;
  
implementation

{ TResourceDataSyncSourceMarshaller }

procedure TResourceDataSyncSourceMarshaller.Marshall(ARequestObject: TResourceDataSyncSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAwsOrganizationsSource then
  begin
    Context.Writer.WriteName('AwsOrganizationsSource');
    Context.Writer.WriteBeginObject;
    TResourceDataSyncAwsOrganizationsSourceMarshaller.Instance.Marshall(ARequestObject.AwsOrganizationsSource, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetEnableAllOpsDataSources then
  begin
    Context.Writer.WriteName('EnableAllOpsDataSources');
    Context.Writer.WriteBoolean(ARequestObject.EnableAllOpsDataSources);
  end;
  if ARequestObject.IsSetIncludeFutureRegions then
  begin
    Context.Writer.WriteName('IncludeFutureRegions');
    Context.Writer.WriteBoolean(ARequestObject.IncludeFutureRegions);
  end;
  if ARequestObject.IsSetSourceRegions then
  begin
    Context.Writer.WriteName('SourceRegions');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectSourceRegionsListValue in ARequestObject.SourceRegions do
      Context.Writer.WriteString(ARequestObjectSourceRegionsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetSourceType then
  begin
    Context.Writer.WriteName('SourceType');
    Context.Writer.WriteString(ARequestObject.SourceType);
  end;
end;

class constructor TResourceDataSyncSourceMarshaller.Create;
begin
  FInstance := TResourceDataSyncSourceMarshaller.Create;
end;

class function TResourceDataSyncSourceMarshaller.Instance: IResourceDataSyncSourceMarshaller;
begin
  Result := FInstance;
end;

end.
