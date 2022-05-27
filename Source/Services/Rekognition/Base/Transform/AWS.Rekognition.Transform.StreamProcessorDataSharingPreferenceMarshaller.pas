unit AWS.Rekognition.Transform.StreamProcessorDataSharingPreferenceMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorDataSharingPreference, 
  AWS.Transform.RequestMarshaller;

type
  IStreamProcessorDataSharingPreferenceMarshaller = IRequestMarshaller<TStreamProcessorDataSharingPreference, TJsonMarshallerContext>;
  
  TStreamProcessorDataSharingPreferenceMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessorDataSharingPreference, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessorDataSharingPreferenceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessorDataSharingPreference; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessorDataSharingPreferenceMarshaller; static;
  end;
  
implementation

{ TStreamProcessorDataSharingPreferenceMarshaller }

procedure TStreamProcessorDataSharingPreferenceMarshaller.Marshall(ARequestObject: TStreamProcessorDataSharingPreference; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetOptIn then
  begin
    Context.Writer.WriteName('OptIn');
    Context.Writer.WriteBoolean(ARequestObject.OptIn);
  end;
end;

class constructor TStreamProcessorDataSharingPreferenceMarshaller.Create;
begin
  FInstance := TStreamProcessorDataSharingPreferenceMarshaller.Create;
end;

class function TStreamProcessorDataSharingPreferenceMarshaller.Instance: IStreamProcessorDataSharingPreferenceMarshaller;
begin
  Result := FInstance;
end;

end.
