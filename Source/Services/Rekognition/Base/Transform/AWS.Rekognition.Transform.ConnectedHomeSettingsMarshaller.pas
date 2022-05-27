unit AWS.Rekognition.Transform.ConnectedHomeSettingsMarshaller;

interface

uses
  AWS.Rekognition.Model.ConnectedHomeSettings, 
  AWS.Transform.RequestMarshaller;

type
  IConnectedHomeSettingsMarshaller = IRequestMarshaller<TConnectedHomeSettings, TJsonMarshallerContext>;
  
  TConnectedHomeSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TConnectedHomeSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: IConnectedHomeSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TConnectedHomeSettings; Context: TJsonMarshallerContext);
    class function Instance: IConnectedHomeSettingsMarshaller; static;
  end;
  
implementation

{ TConnectedHomeSettingsMarshaller }

procedure TConnectedHomeSettingsMarshaller.Marshall(ARequestObject: TConnectedHomeSettings; Context: TJsonMarshallerContext);
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

class constructor TConnectedHomeSettingsMarshaller.Create;
begin
  FInstance := TConnectedHomeSettingsMarshaller.Create;
end;

class function TConnectedHomeSettingsMarshaller.Instance: IConnectedHomeSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
