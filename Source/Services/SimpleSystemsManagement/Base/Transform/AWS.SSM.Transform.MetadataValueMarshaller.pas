unit AWS.SSM.Transform.MetadataValueMarshaller;

interface

uses
  AWS.SSM.Model.MetadataValue, 
  AWS.Transform.RequestMarshaller;

type
  IMetadataValueMarshaller = IRequestMarshaller<TMetadataValue, TJsonMarshallerContext>;
  
  TMetadataValueMarshaller = class(TInterfacedObject, IRequestMarshaller<TMetadataValue, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMetadataValueMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMetadataValue; Context: TJsonMarshallerContext);
    class function Instance: IMetadataValueMarshaller; static;
  end;
  
implementation

{ TMetadataValueMarshaller }

procedure TMetadataValueMarshaller.Marshall(ARequestObject: TMetadataValue; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TMetadataValueMarshaller.Create;
begin
  FInstance := TMetadataValueMarshaller.Create;
end;

class function TMetadataValueMarshaller.Instance: IMetadataValueMarshaller;
begin
  Result := FInstance;
end;

end.
