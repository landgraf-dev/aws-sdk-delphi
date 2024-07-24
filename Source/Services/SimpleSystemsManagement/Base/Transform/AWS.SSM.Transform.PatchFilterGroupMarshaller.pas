unit AWS.SSM.Transform.PatchFilterGroupMarshaller;

interface

uses
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.PatchFilterMarshaller;

type
  IPatchFilterGroupMarshaller = IRequestMarshaller<TPatchFilterGroup, TJsonMarshallerContext>;
  
  TPatchFilterGroupMarshaller = class(TInterfacedObject, IRequestMarshaller<TPatchFilterGroup, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPatchFilterGroupMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPatchFilterGroup; Context: TJsonMarshallerContext);
    class function Instance: IPatchFilterGroupMarshaller; static;
  end;
  
implementation

{ TPatchFilterGroupMarshaller }

procedure TPatchFilterGroupMarshaller.Marshall(ARequestObject: TPatchFilterGroup; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetPatchFilters then
  begin
    Context.Writer.WriteName('PatchFilters');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectPatchFiltersListValue in ARequestObject.PatchFilters do
    begin
      Context.Writer.WriteBeginObject;
      TPatchFilterMarshaller.Instance.Marshall(ARequestObjectPatchFiltersListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TPatchFilterGroupMarshaller.Create;
begin
  FInstance := TPatchFilterGroupMarshaller.Create;
end;

class function TPatchFilterGroupMarshaller.Instance: IPatchFilterGroupMarshaller;
begin
  Result := FInstance;
end;

end.
