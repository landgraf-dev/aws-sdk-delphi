unit AWS.Rekognition.Transform.KinesisVideoStreamStartSelectorMarshaller;

interface

uses
  AWS.Rekognition.Model.KinesisVideoStreamStartSelector, 
  AWS.Transform.RequestMarshaller;

type
  IKinesisVideoStreamStartSelectorMarshaller = IRequestMarshaller<TKinesisVideoStreamStartSelector, TJsonMarshallerContext>;
  
  TKinesisVideoStreamStartSelectorMarshaller = class(TInterfacedObject, IRequestMarshaller<TKinesisVideoStreamStartSelector, TJsonMarshallerContext>)
  strict private
    class var FInstance: IKinesisVideoStreamStartSelectorMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TKinesisVideoStreamStartSelector; Context: TJsonMarshallerContext);
    class function Instance: IKinesisVideoStreamStartSelectorMarshaller; static;
  end;
  
implementation

{ TKinesisVideoStreamStartSelectorMarshaller }

procedure TKinesisVideoStreamStartSelectorMarshaller.Marshall(ARequestObject: TKinesisVideoStreamStartSelector; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFragmentNumber then
  begin
    Context.Writer.WriteName('FragmentNumber');
    Context.Writer.WriteString(ARequestObject.FragmentNumber);
  end;
  if ARequestObject.IsSetProducerTimestamp then
  begin
    Context.Writer.WriteName('ProducerTimestamp');
    Context.Writer.WriteInteger(ARequestObject.ProducerTimestamp);
  end;
end;

class constructor TKinesisVideoStreamStartSelectorMarshaller.Create;
begin
  FInstance := TKinesisVideoStreamStartSelectorMarshaller.Create;
end;

class function TKinesisVideoStreamStartSelectorMarshaller.Instance: IKinesisVideoStreamStartSelectorMarshaller;
begin
  Result := FInstance;
end;

end.
