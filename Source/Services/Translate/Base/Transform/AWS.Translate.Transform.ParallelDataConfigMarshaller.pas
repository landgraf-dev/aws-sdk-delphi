unit AWS.Translate.Transform.ParallelDataConfigMarshaller;

interface

uses
  AWS.Translate.Model.ParallelDataConfig, 
  AWS.Transform.RequestMarshaller;

type
  IParallelDataConfigMarshaller = IRequestMarshaller<TParallelDataConfig, TJsonMarshallerContext>;
  
  TParallelDataConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TParallelDataConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: IParallelDataConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TParallelDataConfig; Context: TJsonMarshallerContext);
    class function Instance: IParallelDataConfigMarshaller; static;
  end;
  
implementation

{ TParallelDataConfigMarshaller }

procedure TParallelDataConfigMarshaller.Marshall(ARequestObject: TParallelDataConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFormat then
  begin
    Context.Writer.WriteName('Format');
    Context.Writer.WriteString(ARequestObject.Format.Value);
  end;
  if ARequestObject.IsSetS3Uri then
  begin
    Context.Writer.WriteName('S3Uri');
    Context.Writer.WriteString(ARequestObject.S3Uri);
  end;
end;

class constructor TParallelDataConfigMarshaller.Create;
begin
  FInstance := TParallelDataConfigMarshaller.Create;
end;

class function TParallelDataConfigMarshaller.Instance: IParallelDataConfigMarshaller;
begin
  Result := FInstance;
end;

end.
