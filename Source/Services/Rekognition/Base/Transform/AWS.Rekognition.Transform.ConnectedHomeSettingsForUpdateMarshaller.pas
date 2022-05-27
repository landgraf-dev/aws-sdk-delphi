unit AWS.Rekognition.Transform.ConnectedHomeSettingsForUpdateMarshaller;

interface

uses
  AWS.Rekognition.Model.ConnectedHomeSettingsForUpdate, 
  AWS.Transform.RequestMarshaller;

type
  IConnectedHomeSettingsForUpdateMarshaller = IRequestMarshaller<TConnectedHomeSettingsForUpdate, TJsonMarshallerContext>;
  
  TConnectedHomeSettingsForUpdateMarshaller = class(TInterfacedObject, IRequestMarshaller<TConnectedHomeSettingsForUpdate, TJsonMarshallerContext>)
  strict private
    class var FInstance: IConnectedHomeSettingsForUpdateMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TConnectedHomeSettingsForUpdate; Context: TJsonMarshallerContext);
    class function Instance: IConnectedHomeSettingsForUpdateMarshaller; static;
  end;
  
implementation

{ TConnectedHomeSettingsForUpdateMarshaller }

procedure TConnectedHomeSettingsForUpdateMarshaller.Marshall(ARequestObject: TConnectedHomeSettingsForUpdate; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetLabels then
  begin
    Context.Writer.WriteName('Labels');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectLabelsListValue in ARequestObject.Labels do
      Context.Writer.WriteString(ARequestObjectLabelsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetMinConfidence then
  begin
    Context.Writer.WriteName('MinConfidence');
    Context.Writer.WriteDouble(ARequestObject.MinConfidence);
  end;
end;

class constructor TConnectedHomeSettingsForUpdateMarshaller.Create;
begin
  FInstance := TConnectedHomeSettingsForUpdateMarshaller.Create;
end;

class function TConnectedHomeSettingsForUpdateMarshaller.Instance: IConnectedHomeSettingsForUpdateMarshaller;
begin
  Result := FInstance;
end;

end.
