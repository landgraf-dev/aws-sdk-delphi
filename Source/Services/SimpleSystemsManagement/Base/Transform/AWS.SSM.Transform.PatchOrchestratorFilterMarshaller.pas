unit AWS.SSM.Transform.PatchOrchestratorFilterMarshaller;

interface

uses
  AWS.SSM.Model.PatchOrchestratorFilter, 
  AWS.Transform.RequestMarshaller;

type
  IPatchOrchestratorFilterMarshaller = IRequestMarshaller<TPatchOrchestratorFilter, TJsonMarshallerContext>;
  
  TPatchOrchestratorFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TPatchOrchestratorFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPatchOrchestratorFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPatchOrchestratorFilter; Context: TJsonMarshallerContext);
    class function Instance: IPatchOrchestratorFilterMarshaller; static;
  end;
  
implementation

{ TPatchOrchestratorFilterMarshaller }

procedure TPatchOrchestratorFilterMarshaller.Marshall(ARequestObject: TPatchOrchestratorFilter; Context: TJsonMarshallerContext);
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

class constructor TPatchOrchestratorFilterMarshaller.Create;
begin
  FInstance := TPatchOrchestratorFilterMarshaller.Create;
end;

class function TPatchOrchestratorFilterMarshaller.Instance: IPatchOrchestratorFilterMarshaller;
begin
  Result := FInstance;
end;

end.
