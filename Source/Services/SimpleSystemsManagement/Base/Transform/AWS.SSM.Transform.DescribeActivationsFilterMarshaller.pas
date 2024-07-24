unit AWS.SSM.Transform.DescribeActivationsFilterMarshaller;

interface

uses
  AWS.SSM.Model.DescribeActivationsFilter, 
  AWS.Transform.RequestMarshaller;

type
  IDescribeActivationsFilterMarshaller = IRequestMarshaller<TDescribeActivationsFilter, TJsonMarshallerContext>;
  
  TDescribeActivationsFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TDescribeActivationsFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDescribeActivationsFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDescribeActivationsFilter; Context: TJsonMarshallerContext);
    class function Instance: IDescribeActivationsFilterMarshaller; static;
  end;
  
implementation

{ TDescribeActivationsFilterMarshaller }

procedure TDescribeActivationsFilterMarshaller.Marshall(ARequestObject: TDescribeActivationsFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFilterKey then
  begin
    Context.Writer.WriteName('FilterKey');
    Context.Writer.WriteString(ARequestObject.FilterKey.Value);
  end;
  if ARequestObject.IsSetFilterValues then
  begin
    Context.Writer.WriteName('FilterValues');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectFilterValuesListValue in ARequestObject.FilterValues do
      Context.Writer.WriteString(ARequestObjectFilterValuesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TDescribeActivationsFilterMarshaller.Create;
begin
  FInstance := TDescribeActivationsFilterMarshaller.Create;
end;

class function TDescribeActivationsFilterMarshaller.Instance: IDescribeActivationsFilterMarshaller;
begin
  Result := FInstance;
end;

end.
