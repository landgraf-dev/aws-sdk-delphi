unit AWS.Rekognition.Transform.S3ObjectMarshaller;

interface

uses
  AWS.Rekognition.Model.S3Object, 
  AWS.Transform.RequestMarshaller;

type
  IS3ObjectMarshaller = IRequestMarshaller<TS3Object, TJsonMarshallerContext>;
  
  TS3ObjectMarshaller = class(TInterfacedObject, IRequestMarshaller<TS3Object, TJsonMarshallerContext>)
  strict private
    class var FInstance: IS3ObjectMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TS3Object; Context: TJsonMarshallerContext);
    class function Instance: IS3ObjectMarshaller; static;
  end;
  
implementation

{ TS3ObjectMarshaller }

procedure TS3ObjectMarshaller.Marshall(ARequestObject: TS3Object; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBucket then
  begin
    Context.Writer.WriteName('Bucket');
    Context.Writer.WriteString(ARequestObject.Bucket);
  end;
  if ARequestObject.IsSetName then
  begin
    Context.Writer.WriteName('Name');
    Context.Writer.WriteString(ARequestObject.Name);
  end;
  if ARequestObject.IsSetVersion then
  begin
    Context.Writer.WriteName('Version');
    Context.Writer.WriteString(ARequestObject.Version);
  end;
end;

class constructor TS3ObjectMarshaller.Create;
begin
  FInstance := TS3ObjectMarshaller.Create;
end;

class function TS3ObjectMarshaller.Instance: IS3ObjectMarshaller;
begin
  Result := FInstance;
end;

end.
