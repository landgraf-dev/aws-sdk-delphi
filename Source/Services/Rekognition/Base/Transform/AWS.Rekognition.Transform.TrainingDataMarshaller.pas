unit AWS.Rekognition.Transform.TrainingDataMarshaller;

interface

uses
  AWS.Rekognition.Model.TrainingData, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.AssetMarshaller;

type
  ITrainingDataMarshaller = IRequestMarshaller<TTrainingData, TJsonMarshallerContext>;
  
  TTrainingDataMarshaller = class(TInterfacedObject, IRequestMarshaller<TTrainingData, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITrainingDataMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTrainingData; Context: TJsonMarshallerContext);
    class function Instance: ITrainingDataMarshaller; static;
  end;
  
implementation

{ TTrainingDataMarshaller }

procedure TTrainingDataMarshaller.Marshall(ARequestObject: TTrainingData; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAssets then
  begin
    Context.Writer.WriteName('Assets');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectAssetsListValue in ARequestObject.Assets do
    begin
      Context.Writer.WriteBeginObject;
      TAssetMarshaller.Instance.Marshall(ARequestObjectAssetsListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TTrainingDataMarshaller.Create;
begin
  FInstance := TTrainingDataMarshaller.Create;
end;

class function TTrainingDataMarshaller.Instance: ITrainingDataMarshaller;
begin
  Result := FInstance;
end;

end.
