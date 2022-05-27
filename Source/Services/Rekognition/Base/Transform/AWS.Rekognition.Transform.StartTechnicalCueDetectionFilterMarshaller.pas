unit AWS.Rekognition.Transform.StartTechnicalCueDetectionFilterMarshaller;

interface

uses
  AWS.Rekognition.Model.StartTechnicalCueDetectionFilter, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.BlackFrameMarshaller;

type
  IStartTechnicalCueDetectionFilterMarshaller = IRequestMarshaller<TStartTechnicalCueDetectionFilter, TJsonMarshallerContext>;
  
  TStartTechnicalCueDetectionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TStartTechnicalCueDetectionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStartTechnicalCueDetectionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStartTechnicalCueDetectionFilter; Context: TJsonMarshallerContext);
    class function Instance: IStartTechnicalCueDetectionFilterMarshaller; static;
  end;
  
implementation

{ TStartTechnicalCueDetectionFilterMarshaller }

procedure TStartTechnicalCueDetectionFilterMarshaller.Marshall(ARequestObject: TStartTechnicalCueDetectionFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBlackFrame then
  begin
    Context.Writer.WriteName('BlackFrame');
    Context.Writer.WriteBeginObject;
    TBlackFrameMarshaller.Instance.Marshall(ARequestObject.BlackFrame, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetMinSegmentConfidence then
  begin
    Context.Writer.WriteName('MinSegmentConfidence');
    Context.Writer.WriteDouble(ARequestObject.MinSegmentConfidence);
  end;
end;

class constructor TStartTechnicalCueDetectionFilterMarshaller.Create;
begin
  FInstance := TStartTechnicalCueDetectionFilterMarshaller.Create;
end;

class function TStartTechnicalCueDetectionFilterMarshaller.Instance: IStartTechnicalCueDetectionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
