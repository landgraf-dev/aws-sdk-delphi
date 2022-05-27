unit AWS.Textract.Transform.QueriesConfigMarshaller;

interface

uses
  AWS.Textract.Model.QueriesConfig, 
  AWS.Transform.RequestMarshaller, 
  AWS.Textract.Transform.QueryMarshaller;

type
  IQueriesConfigMarshaller = IRequestMarshaller<TQueriesConfig, TJsonMarshallerContext>;
  
  TQueriesConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TQueriesConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: IQueriesConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TQueriesConfig; Context: TJsonMarshallerContext);
    class function Instance: IQueriesConfigMarshaller; static;
  end;
  
implementation

{ TQueriesConfigMarshaller }

procedure TQueriesConfigMarshaller.Marshall(ARequestObject: TQueriesConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetQueries then
  begin
    Context.Writer.WriteName('Queries');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectQueriesListValue in ARequestObject.Queries do
    begin
      Context.Writer.WriteBeginObject;
      TQueryMarshaller.Instance.Marshall(ARequestObjectQueriesListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TQueriesConfigMarshaller.Create;
begin
  FInstance := TQueriesConfigMarshaller.Create;
end;

class function TQueriesConfigMarshaller.Instance: IQueriesConfigMarshaller;
begin
  Result := FInstance;
end;

end.
