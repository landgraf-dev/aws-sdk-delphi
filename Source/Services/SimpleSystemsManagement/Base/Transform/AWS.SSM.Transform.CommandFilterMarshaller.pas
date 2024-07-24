unit AWS.SSM.Transform.CommandFilterMarshaller;

interface

uses
  AWS.SSM.Model.CommandFilter, 
  AWS.Transform.RequestMarshaller;

type
  ICommandFilterMarshaller = IRequestMarshaller<TCommandFilter, TJsonMarshallerContext>;
  
  TCommandFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TCommandFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: ICommandFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TCommandFilter; Context: TJsonMarshallerContext);
    class function Instance: ICommandFilterMarshaller; static;
  end;
  
implementation

{ TCommandFilterMarshaller }

procedure TCommandFilterMarshaller.Marshall(ARequestObject: TCommandFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('key');
    Context.Writer.WriteString(ARequestObject.Key.Value);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TCommandFilterMarshaller.Create;
begin
  FInstance := TCommandFilterMarshaller.Create;
end;

class function TCommandFilterMarshaller.Instance: ICommandFilterMarshaller;
begin
  Result := FInstance;
end;

end.
