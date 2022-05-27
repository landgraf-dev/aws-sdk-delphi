unit AWS.Rekognition.Transform.DistributeDatasetMarshaller;

interface

uses
  AWS.Rekognition.Model.DistributeDataset, 
  AWS.Transform.RequestMarshaller;

type
  IDistributeDatasetMarshaller = IRequestMarshaller<TDistributeDataset, TJsonMarshallerContext>;
  
  TDistributeDatasetMarshaller = class(TInterfacedObject, IRequestMarshaller<TDistributeDataset, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDistributeDatasetMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDistributeDataset; Context: TJsonMarshallerContext);
    class function Instance: IDistributeDatasetMarshaller; static;
  end;
  
implementation

{ TDistributeDatasetMarshaller }

procedure TDistributeDatasetMarshaller.Marshall(ARequestObject: TDistributeDataset; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetArn then
  begin
    Context.Writer.WriteName('Arn');
    Context.Writer.WriteString(ARequestObject.Arn);
  end;
end;

class constructor TDistributeDatasetMarshaller.Create;
begin
  FInstance := TDistributeDatasetMarshaller.Create;
end;

class function TDistributeDatasetMarshaller.Instance: IDistributeDatasetMarshaller;
begin
  Result := FInstance;
end;

end.
