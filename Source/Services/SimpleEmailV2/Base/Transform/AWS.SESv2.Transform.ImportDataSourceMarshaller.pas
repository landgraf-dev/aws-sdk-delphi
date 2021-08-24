unit AWS.SESv2.Transform.ImportDataSourceMarshaller;

interface

uses
  AWS.SESv2.Model.ImportDataSource, 
  AWS.Transform.RequestMarshaller;

type
  IImportDataSourceMarshaller = IRequestMarshaller<TImportDataSource, TJsonMarshallerContext>;
  
  TImportDataSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TImportDataSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IImportDataSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TImportDataSource; Context: TJsonMarshallerContext);
    class function Instance: IImportDataSourceMarshaller; static;
  end;
  
implementation

{ TImportDataSourceMarshaller }

procedure TImportDataSourceMarshaller.Marshall(ARequestObject: TImportDataSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDataFormat then
  begin
    Context.Writer.WriteName('DataFormat');
    Context.Writer.WriteString(ARequestObject.DataFormat.Value);
  end;
  if ARequestObject.IsSetS3Url then
  begin
    Context.Writer.WriteName('S3Url');
    Context.Writer.WriteString(ARequestObject.S3Url);
  end;
end;

class constructor TImportDataSourceMarshaller.Create;
begin
  FInstance := TImportDataSourceMarshaller.Create;
end;

class function TImportDataSourceMarshaller.Instance: IImportDataSourceMarshaller;
begin
  Result := FInstance;
end;

end.
