unit AWS.Rekognition.Transform.S3DestinationMarshaller;

interface

uses
  AWS.Rekognition.Model.S3Destination, 
  AWS.Transform.RequestMarshaller;

type
  IS3DestinationMarshaller = IRequestMarshaller<TS3Destination, TJsonMarshallerContext>;
  
  TS3DestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TS3Destination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IS3DestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TS3Destination; Context: TJsonMarshallerContext);
    class function Instance: IS3DestinationMarshaller; static;
  end;
  
implementation

{ TS3DestinationMarshaller }

procedure TS3DestinationMarshaller.Marshall(ARequestObject: TS3Destination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBucket then
  begin
    Context.Writer.WriteName('Bucket');
    Context.Writer.WriteString(ARequestObject.Bucket);
  end;
  if ARequestObject.IsSetKeyPrefix then
  begin
    Context.Writer.WriteName('KeyPrefix');
    Context.Writer.WriteString(ARequestObject.KeyPrefix);
  end;
end;

class constructor TS3DestinationMarshaller.Create;
begin
  FInstance := TS3DestinationMarshaller.Create;
end;

class function TS3DestinationMarshaller.Instance: IS3DestinationMarshaller;
begin
  Result := FInstance;
end;

end.
