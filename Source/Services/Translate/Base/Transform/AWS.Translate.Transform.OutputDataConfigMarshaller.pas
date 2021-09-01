unit AWS.Translate.Transform.OutputDataConfigMarshaller;

interface

uses
  AWS.Translate.Model.OutputDataConfig, 
  AWS.Transform.RequestMarshaller;

type
  IOutputDataConfigMarshaller = IRequestMarshaller<TOutputDataConfig, TJsonMarshallerContext>;
  
  TOutputDataConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TOutputDataConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOutputDataConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOutputDataConfig; Context: TJsonMarshallerContext);
    class function Instance: IOutputDataConfigMarshaller; static;
  end;
  
implementation

{ TOutputDataConfigMarshaller }

procedure TOutputDataConfigMarshaller.Marshall(ARequestObject: TOutputDataConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetS3Uri then
  begin
    Context.Writer.WriteName('S3Uri');
    Context.Writer.WriteString(ARequestObject.S3Uri);
  end;
end;

class constructor TOutputDataConfigMarshaller.Create;
begin
  FInstance := TOutputDataConfigMarshaller.Create;
end;

class function TOutputDataConfigMarshaller.Instance: IOutputDataConfigMarshaller;
begin
  Result := FInstance;
end;

end.
