unit AWS.Rekognition.Transform.StartShotDetectionFilterMarshaller;

interface

uses
  AWS.Rekognition.Model.StartShotDetectionFilter, 
  AWS.Transform.RequestMarshaller;

type
  IStartShotDetectionFilterMarshaller = IRequestMarshaller<TStartShotDetectionFilter, TJsonMarshallerContext>;
  
  TStartShotDetectionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TStartShotDetectionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStartShotDetectionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStartShotDetectionFilter; Context: TJsonMarshallerContext);
    class function Instance: IStartShotDetectionFilterMarshaller; static;
  end;
  
implementation

{ TStartShotDetectionFilterMarshaller }

procedure TStartShotDetectionFilterMarshaller.Marshall(ARequestObject: TStartShotDetectionFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetMinSegmentConfidence then
  begin
    Context.Writer.WriteName('MinSegmentConfidence');
    Context.Writer.WriteDouble(ARequestObject.MinSegmentConfidence);
  end;
end;

class constructor TStartShotDetectionFilterMarshaller.Create;
begin
  FInstance := TStartShotDetectionFilterMarshaller.Create;
end;

class function TStartShotDetectionFilterMarshaller.Instance: IStartShotDetectionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
