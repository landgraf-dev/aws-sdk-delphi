unit AWS.Rekognition.Transform.StreamProcessorSettingsMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorSettings, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.FaceSearchSettingsMarshaller;

type
  IStreamProcessorSettingsMarshaller = IRequestMarshaller<TStreamProcessorSettings, TJsonMarshallerContext>;
  
  TStreamProcessorSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessorSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessorSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessorSettings; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessorSettingsMarshaller; static;
  end;
  
implementation

{ TStreamProcessorSettingsMarshaller }

procedure TStreamProcessorSettingsMarshaller.Marshall(ARequestObject: TStreamProcessorSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFaceSearch then
  begin
    Context.Writer.WriteName('FaceSearch');
    Context.Writer.WriteBeginObject;
    TFaceSearchSettingsMarshaller.Instance.Marshall(ARequestObject.FaceSearch, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TStreamProcessorSettingsMarshaller.Create;
begin
  FInstance := TStreamProcessorSettingsMarshaller.Create;
end;

class function TStreamProcessorSettingsMarshaller.Instance: IStreamProcessorSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
