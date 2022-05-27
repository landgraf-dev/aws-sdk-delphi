unit AWS.Rekognition.Transform.StreamProcessorSettingsForUpdateMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorSettingsForUpdate, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.ConnectedHomeSettingsForUpdateMarshaller;

type
  IStreamProcessorSettingsForUpdateMarshaller = IRequestMarshaller<TStreamProcessorSettingsForUpdate, TJsonMarshallerContext>;
  
  TStreamProcessorSettingsForUpdateMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessorSettingsForUpdate, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessorSettingsForUpdateMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessorSettingsForUpdate; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessorSettingsForUpdateMarshaller; static;
  end;
  
implementation

{ TStreamProcessorSettingsForUpdateMarshaller }

procedure TStreamProcessorSettingsForUpdateMarshaller.Marshall(ARequestObject: TStreamProcessorSettingsForUpdate; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetConnectedHomeForUpdate then
  begin
    Context.Writer.WriteName('ConnectedHomeForUpdate');
    Context.Writer.WriteBeginObject;
    TConnectedHomeSettingsForUpdateMarshaller.Instance.Marshall(ARequestObject.ConnectedHomeForUpdate, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TStreamProcessorSettingsForUpdateMarshaller.Create;
begin
  FInstance := TStreamProcessorSettingsForUpdateMarshaller.Create;
end;

class function TStreamProcessorSettingsForUpdateMarshaller.Instance: IStreamProcessorSettingsForUpdateMarshaller;
begin
  Result := FInstance;
end;

end.
