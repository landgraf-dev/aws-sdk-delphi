unit AWS.Rekognition.Transform.StreamProcessingStartSelectorMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessingStartSelector, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.KinesisVideoStreamStartSelectorMarshaller;

type
  IStreamProcessingStartSelectorMarshaller = IRequestMarshaller<TStreamProcessingStartSelector, TJsonMarshallerContext>;
  
  TStreamProcessingStartSelectorMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessingStartSelector, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessingStartSelectorMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessingStartSelector; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessingStartSelectorMarshaller; static;
  end;
  
implementation

{ TStreamProcessingStartSelectorMarshaller }

procedure TStreamProcessingStartSelectorMarshaller.Marshall(ARequestObject: TStreamProcessingStartSelector; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKVSStreamStartSelector then
  begin
    Context.Writer.WriteName('KVSStreamStartSelector');
    Context.Writer.WriteBeginObject;
    TKinesisVideoStreamStartSelectorMarshaller.Instance.Marshall(ARequestObject.KVSStreamStartSelector, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TStreamProcessingStartSelectorMarshaller.Create;
begin
  FInstance := TStreamProcessingStartSelectorMarshaller.Create;
end;

class function TStreamProcessingStartSelectorMarshaller.Instance: IStreamProcessingStartSelectorMarshaller;
begin
  Result := FInstance;
end;

end.
