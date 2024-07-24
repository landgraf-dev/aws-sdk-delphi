unit AWS.SSM.Transform.InstancePatchStateFilterMarshaller;

interface

uses
  AWS.SSM.Model.InstancePatchStateFilter, 
  AWS.Transform.RequestMarshaller;

type
  IInstancePatchStateFilterMarshaller = IRequestMarshaller<TInstancePatchStateFilter, TJsonMarshallerContext>;
  
  TInstancePatchStateFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TInstancePatchStateFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInstancePatchStateFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInstancePatchStateFilter; Context: TJsonMarshallerContext);
    class function Instance: IInstancePatchStateFilterMarshaller; static;
  end;
  
implementation

{ TInstancePatchStateFilterMarshaller }

procedure TInstancePatchStateFilterMarshaller.Marshall(ARequestObject: TInstancePatchStateFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
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

class constructor TInstancePatchStateFilterMarshaller.Create;
begin
  FInstance := TInstancePatchStateFilterMarshaller.Create;
end;

class function TInstancePatchStateFilterMarshaller.Instance: IInstancePatchStateFilterMarshaller;
begin
  Result := FInstance;
end;

end.
