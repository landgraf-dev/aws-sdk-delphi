unit AWS.SSM.Transform.SessionFilterMarshaller;

interface

uses
  AWS.SSM.Model.SessionFilter, 
  AWS.Transform.RequestMarshaller;

type
  ISessionFilterMarshaller = IRequestMarshaller<TSessionFilter, TJsonMarshallerContext>;
  
  TSessionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TSessionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISessionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSessionFilter; Context: TJsonMarshallerContext);
    class function Instance: ISessionFilterMarshaller; static;
  end;
  
implementation

{ TSessionFilterMarshaller }

procedure TSessionFilterMarshaller.Marshall(ARequestObject: TSessionFilter; Context: TJsonMarshallerContext);
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

class constructor TSessionFilterMarshaller.Create;
begin
  FInstance := TSessionFilterMarshaller.Create;
end;

class function TSessionFilterMarshaller.Instance: ISessionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
