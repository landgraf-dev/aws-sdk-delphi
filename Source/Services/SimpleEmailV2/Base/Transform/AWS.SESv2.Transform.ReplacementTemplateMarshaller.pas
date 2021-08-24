unit AWS.SESv2.Transform.ReplacementTemplateMarshaller;

interface

uses
  AWS.SESv2.Model.ReplacementTemplate, 
  AWS.Transform.RequestMarshaller;

type
  IReplacementTemplateMarshaller = IRequestMarshaller<TReplacementTemplate, TJsonMarshallerContext>;
  
  TReplacementTemplateMarshaller = class(TInterfacedObject, IRequestMarshaller<TReplacementTemplate, TJsonMarshallerContext>)
  strict private
    class var FInstance: IReplacementTemplateMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TReplacementTemplate; Context: TJsonMarshallerContext);
    class function Instance: IReplacementTemplateMarshaller; static;
  end;
  
implementation

{ TReplacementTemplateMarshaller }

procedure TReplacementTemplateMarshaller.Marshall(ARequestObject: TReplacementTemplate; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetReplacementTemplateData then
  begin
    Context.Writer.WriteName('ReplacementTemplateData');
    Context.Writer.WriteString(ARequestObject.ReplacementTemplateData);
  end;
end;

class constructor TReplacementTemplateMarshaller.Create;
begin
  FInstance := TReplacementTemplateMarshaller.Create;
end;

class function TReplacementTemplateMarshaller.Instance: IReplacementTemplateMarshaller;
begin
  Result := FInstance;
end;

end.
