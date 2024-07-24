unit AWS.SSM.Transform.InstanceAssociationOutputLocationMarshaller;

interface

uses
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.S3OutputLocationMarshaller;

type
  IInstanceAssociationOutputLocationMarshaller = IRequestMarshaller<TInstanceAssociationOutputLocation, TJsonMarshallerContext>;
  
  TInstanceAssociationOutputLocationMarshaller = class(TInterfacedObject, IRequestMarshaller<TInstanceAssociationOutputLocation, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInstanceAssociationOutputLocationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInstanceAssociationOutputLocation; Context: TJsonMarshallerContext);
    class function Instance: IInstanceAssociationOutputLocationMarshaller; static;
  end;
  
implementation

{ TInstanceAssociationOutputLocationMarshaller }

procedure TInstanceAssociationOutputLocationMarshaller.Marshall(ARequestObject: TInstanceAssociationOutputLocation; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3Location then
  begin
    Context.Writer.WriteName('S3Location');
    Context.Writer.WriteBeginObject;
    TS3OutputLocationMarshaller.Instance.Marshall(ARequestObject.S3Location, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TInstanceAssociationOutputLocationMarshaller.Create;
begin
  FInstance := TInstanceAssociationOutputLocationMarshaller.Create;
end;

class function TInstanceAssociationOutputLocationMarshaller.Instance: IInstanceAssociationOutputLocationMarshaller;
begin
  Result := FInstance;
end;

end.
