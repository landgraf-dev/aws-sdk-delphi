unit AWS.SSM.Transform.TargetMarshaller;

interface

uses
  AWS.SSM.Model.Target, 
  AWS.Transform.RequestMarshaller;

type
  ITargetMarshaller = IRequestMarshaller<TTarget, TJsonMarshallerContext>;
  
  TTargetMarshaller = class(TInterfacedObject, IRequestMarshaller<TTarget, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITargetMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTarget; Context: TJsonMarshallerContext);
    class function Instance: ITargetMarshaller; static;
  end;
  
implementation

{ TTargetMarshaller }

procedure TTargetMarshaller.Marshall(ARequestObject: TTarget; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetValues then
  begin
    Context.Writer.WriteName('Values');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectValuesListValue in ARequestObject.Values do
      Context.Writer.WriteString(ARequestObjectValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TTargetMarshaller.Create;
begin
  FInstance := TTargetMarshaller.Create;
end;

class function TTargetMarshaller.Instance: ITargetMarshaller;
begin
  Result := FInstance;
end;

end.
