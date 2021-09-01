unit AWS.Translate.Transform.EncryptionKeyMarshaller;

interface

uses
  AWS.Translate.Model.EncryptionKey, 
  AWS.Transform.RequestMarshaller;

type
  IEncryptionKeyMarshaller = IRequestMarshaller<TEncryptionKey, TJsonMarshallerContext>;
  
  TEncryptionKeyMarshaller = class(TInterfacedObject, IRequestMarshaller<TEncryptionKey, TJsonMarshallerContext>)
  strict private
    class var FInstance: IEncryptionKeyMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TEncryptionKey; Context: TJsonMarshallerContext);
    class function Instance: IEncryptionKeyMarshaller; static;
  end;
  
implementation

{ TEncryptionKeyMarshaller }

procedure TEncryptionKeyMarshaller.Marshall(ARequestObject: TEncryptionKey; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetId then
  begin
    Context.Writer.WriteName('Id');
    Context.Writer.WriteString(ARequestObject.Id);
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
  end;
end;

class constructor TEncryptionKeyMarshaller.Create;
begin
  FInstance := TEncryptionKeyMarshaller.Create;
end;

class function TEncryptionKeyMarshaller.Instance: IEncryptionKeyMarshaller;
begin
  Result := FInstance;
end;

end.
