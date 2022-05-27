unit AWS.Rekognition.Transform.DatasetSourceMarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetSource, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.GroundTruthManifestMarshaller;

type
  IDatasetSourceMarshaller = IRequestMarshaller<TDatasetSource, TJsonMarshallerContext>;
  
  TDatasetSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TDatasetSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDatasetSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDatasetSource; Context: TJsonMarshallerContext);
    class function Instance: IDatasetSourceMarshaller; static;
  end;
  
implementation

{ TDatasetSourceMarshaller }

procedure TDatasetSourceMarshaller.Marshall(ARequestObject: TDatasetSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDatasetArn then
  begin
    Context.Writer.WriteName('DatasetArn');
    Context.Writer.WriteString(ARequestObject.DatasetArn);
  end;
  if ARequestObject.IsSetGroundTruthManifest then
  begin
    Context.Writer.WriteName('GroundTruthManifest');
    Context.Writer.WriteBeginObject;
    TGroundTruthManifestMarshaller.Instance.Marshall(ARequestObject.GroundTruthManifest, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TDatasetSourceMarshaller.Create;
begin
  FInstance := TDatasetSourceMarshaller.Create;
end;

class function TDatasetSourceMarshaller.Instance: IDatasetSourceMarshaller;
begin
  Result := FInstance;
end;

end.
