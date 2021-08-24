unit AWS.SESv2.Transform.SuppressionListDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.SuppressionListDestination, 
  AWS.Transform.RequestMarshaller;

type
  ISuppressionListDestinationMarshaller = IRequestMarshaller<TSuppressionListDestination, TJsonMarshallerContext>;
  
  TSuppressionListDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TSuppressionListDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISuppressionListDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSuppressionListDestination; Context: TJsonMarshallerContext);
    class function Instance: ISuppressionListDestinationMarshaller; static;
  end;
  
implementation

{ TSuppressionListDestinationMarshaller }

procedure TSuppressionListDestinationMarshaller.Marshall(ARequestObject: TSuppressionListDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSuppressionListImportAction then
  begin
    Context.Writer.WriteName('SuppressionListImportAction');
    Context.Writer.WriteString(ARequestObject.SuppressionListImportAction.Value);
  end;
end;

class constructor TSuppressionListDestinationMarshaller.Create;
begin
  FInstance := TSuppressionListDestinationMarshaller.Create;
end;

class function TSuppressionListDestinationMarshaller.Instance: ISuppressionListDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
