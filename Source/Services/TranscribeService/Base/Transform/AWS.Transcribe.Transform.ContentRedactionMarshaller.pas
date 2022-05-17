unit AWS.Transcribe.Transform.ContentRedactionMarshaller;

interface

uses
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transform.RequestMarshaller;

type
  IContentRedactionMarshaller = IRequestMarshaller<TContentRedaction, TJsonMarshallerContext>;
  
  TContentRedactionMarshaller = class(TInterfacedObject, IRequestMarshaller<TContentRedaction, TJsonMarshallerContext>)
  strict private
    class var FInstance: IContentRedactionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TContentRedaction; Context: TJsonMarshallerContext);
    class function Instance: IContentRedactionMarshaller; static;
  end;
  
implementation

{ TContentRedactionMarshaller }

procedure TContentRedactionMarshaller.Marshall(ARequestObject: TContentRedaction; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetRedactionOutput then
  begin
    Context.Writer.WriteName('RedactionOutput');
    Context.Writer.WriteString(ARequestObject.RedactionOutput.Value);
  end;
  if ARequestObject.IsSetRedactionType then
  begin
    Context.Writer.WriteName('RedactionType');
    Context.Writer.WriteString(ARequestObject.RedactionType.Value);
  end;
end;

class constructor TContentRedactionMarshaller.Create;
begin
  FInstance := TContentRedactionMarshaller.Create;
end;

class function TContentRedactionMarshaller.Instance: IContentRedactionMarshaller;
begin
  Result := FInstance;
end;

end.
