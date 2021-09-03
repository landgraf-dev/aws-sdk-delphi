unit AWS.Rekognition.Transform.TestingDataMarshaller;

interface

uses
  AWS.Rekognition.Model.TestingData, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.AssetMarshaller;

type
  ITestingDataMarshaller = IRequestMarshaller<TTestingData, TJsonMarshallerContext>;
  
  TTestingDataMarshaller = class(TInterfacedObject, IRequestMarshaller<TTestingData, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITestingDataMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTestingData; Context: TJsonMarshallerContext);
    class function Instance: ITestingDataMarshaller; static;
  end;
  
implementation

{ TTestingDataMarshaller }

procedure TTestingDataMarshaller.Marshall(ARequestObject: TTestingData; Context: TJsonMarshallerContext);
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
  if ARequestObject.IsSetAutoCreate then
  begin
    Context.Writer.WriteName('AutoCreate');
    Context.Writer.WriteBoolean(ARequestObject.AutoCreate);
  end;
end;

class constructor TTestingDataMarshaller.Create;
begin
  FInstance := TTestingDataMarshaller.Create;
end;

class function TTestingDataMarshaller.Instance: ITestingDataMarshaller;
begin
  Result := FInstance;
end;

end.
