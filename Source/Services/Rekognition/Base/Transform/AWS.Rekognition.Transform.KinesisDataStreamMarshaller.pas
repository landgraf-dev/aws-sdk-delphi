unit AWS.Rekognition.Transform.KinesisDataStreamMarshaller;

interface

uses
  AWS.Rekognition.Model.KinesisDataStream, 
  AWS.Transform.RequestMarshaller;

type
  IKinesisDataStreamMarshaller = IRequestMarshaller<TKinesisDataStream, TJsonMarshallerContext>;
  
  TKinesisDataStreamMarshaller = class(TInterfacedObject, IRequestMarshaller<TKinesisDataStream, TJsonMarshallerContext>)
  strict private
    class var FInstance: IKinesisDataStreamMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TKinesisDataStream; Context: TJsonMarshallerContext);
    class function Instance: IKinesisDataStreamMarshaller; static;
  end;
  
implementation

{ TKinesisDataStreamMarshaller }

procedure TKinesisDataStreamMarshaller.Marshall(ARequestObject: TKinesisDataStream; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetArn then
  begin
    Context.Writer.WriteName('Arn');
    Context.Writer.WriteString(ARequestObject.Arn);
  end;
end;

class constructor TKinesisDataStreamMarshaller.Create;
begin
  FInstance := TKinesisDataStreamMarshaller.Create;
end;

class function TKinesisDataStreamMarshaller.Instance: IKinesisDataStreamMarshaller;
begin
  Result := FInstance;
end;

end.
