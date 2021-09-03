unit AWS.Rekognition.Transform.StartSegmentDetectionFiltersMarshaller;

interface

uses
  AWS.Rekognition.Model.StartSegmentDetectionFilters, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.StartShotDetectionFilterMarshaller, 
  AWS.Rekognition.Transform.StartTechnicalCueDetectionFilterMarshaller;

type
  IStartSegmentDetectionFiltersMarshaller = IRequestMarshaller<TStartSegmentDetectionFilters, TJsonMarshallerContext>;
  
  TStartSegmentDetectionFiltersMarshaller = class(TInterfacedObject, IRequestMarshaller<TStartSegmentDetectionFilters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStartSegmentDetectionFiltersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStartSegmentDetectionFilters; Context: TJsonMarshallerContext);
    class function Instance: IStartSegmentDetectionFiltersMarshaller; static;
  end;
  
implementation

{ TStartSegmentDetectionFiltersMarshaller }

procedure TStartSegmentDetectionFiltersMarshaller.Marshall(ARequestObject: TStartSegmentDetectionFilters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetShotFilter then
  begin
    Context.Writer.WriteName('ShotFilter');
    Context.Writer.WriteBeginObject;
    TStartShotDetectionFilterMarshaller.Instance.Marshall(ARequestObject.ShotFilter, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetTechnicalCueFilter then
  begin
    Context.Writer.WriteName('TechnicalCueFilter');
    Context.Writer.WriteBeginObject;
    TStartTechnicalCueDetectionFilterMarshaller.Instance.Marshall(ARequestObject.TechnicalCueFilter, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TStartSegmentDetectionFiltersMarshaller.Create;
begin
  FInstance := TStartSegmentDetectionFiltersMarshaller.Create;
end;

class function TStartSegmentDetectionFiltersMarshaller.Instance: IStartSegmentDetectionFiltersMarshaller;
begin
  Result := FInstance;
end;

end.
