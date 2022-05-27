unit AWS.Rekognition.Transform.DatasetChangesMarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetChanges, 
  AWS.Transform.RequestMarshaller, 
  AWS.Internal.StringUtils;

type
  IDatasetChangesMarshaller = IRequestMarshaller<TDatasetChanges, TJsonMarshallerContext>;
  
  TDatasetChangesMarshaller = class(TInterfacedObject, IRequestMarshaller<TDatasetChanges, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDatasetChangesMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDatasetChanges; Context: TJsonMarshallerContext);
    class function Instance: IDatasetChangesMarshaller; static;
  end;
  
implementation

{ TDatasetChangesMarshaller }

procedure TDatasetChangesMarshaller.Marshall(ARequestObject: TDatasetChanges; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetGroundTruth then
  begin
    Context.Writer.WriteName('GroundTruth');
    Context.Writer.WriteString(TStringUtils.FromTBytesStream(ARequestObject.GroundTruth));
  end;
end;

class constructor TDatasetChangesMarshaller.Create;
begin
  FInstance := TDatasetChangesMarshaller.Create;
end;

class function TDatasetChangesMarshaller.Instance: IDatasetChangesMarshaller;
begin
  Result := FInstance;
end;

end.
