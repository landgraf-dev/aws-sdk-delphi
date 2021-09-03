unit AWS.Rekognition.Transform.FaceSearchSettingsMarshaller;

interface

uses
  AWS.Rekognition.Model.FaceSearchSettings, 
  AWS.Transform.RequestMarshaller;

type
  IFaceSearchSettingsMarshaller = IRequestMarshaller<TFaceSearchSettings, TJsonMarshallerContext>;
  
  TFaceSearchSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TFaceSearchSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: IFaceSearchSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TFaceSearchSettings; Context: TJsonMarshallerContext);
    class function Instance: IFaceSearchSettingsMarshaller; static;
  end;
  
implementation

{ TFaceSearchSettingsMarshaller }

procedure TFaceSearchSettingsMarshaller.Marshall(ARequestObject: TFaceSearchSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCollectionId then
  begin
    Context.Writer.WriteName('CollectionId');
    Context.Writer.WriteString(ARequestObject.CollectionId);
  end;
  if ARequestObject.IsSetFaceMatchThreshold then
  begin
    Context.Writer.WriteName('FaceMatchThreshold');
    Context.Writer.WriteDouble(ARequestObject.FaceMatchThreshold);
  end;
end;

class constructor TFaceSearchSettingsMarshaller.Create;
begin
  FInstance := TFaceSearchSettingsMarshaller.Create;
end;

class function TFaceSearchSettingsMarshaller.Instance: IFaceSearchSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
