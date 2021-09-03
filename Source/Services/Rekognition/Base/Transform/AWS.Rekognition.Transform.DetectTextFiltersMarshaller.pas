unit AWS.Rekognition.Transform.DetectTextFiltersMarshaller;

interface

uses
  AWS.Rekognition.Model.DetectTextFilters, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.RegionOfInterestMarshaller, 
  AWS.Rekognition.Transform.DetectionFilterMarshaller;

type
  IDetectTextFiltersMarshaller = IRequestMarshaller<TDetectTextFilters, TJsonMarshallerContext>;
  
  TDetectTextFiltersMarshaller = class(TInterfacedObject, IRequestMarshaller<TDetectTextFilters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDetectTextFiltersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDetectTextFilters; Context: TJsonMarshallerContext);
    class function Instance: IDetectTextFiltersMarshaller; static;
  end;
  
implementation

{ TDetectTextFiltersMarshaller }

procedure TDetectTextFiltersMarshaller.Marshall(ARequestObject: TDetectTextFilters; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetRegionsOfInterest then
  begin
    Context.Writer.WriteName('RegionsOfInterest');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectRegionsOfInterestListValue in ARequestObject.RegionsOfInterest do
    begin
      Context.Writer.WriteBeginObject;
      TRegionOfInterestMarshaller.Instance.Marshall(ARequestObjectRegionsOfInterestListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetWordFilter then
  begin
    Context.Writer.WriteName('WordFilter');
    Context.Writer.WriteBeginObject;
    TDetectionFilterMarshaller.Instance.Marshall(ARequestObject.WordFilter, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TDetectTextFiltersMarshaller.Create;
begin
  FInstance := TDetectTextFiltersMarshaller.Create;
end;

class function TDetectTextFiltersMarshaller.Instance: IDetectTextFiltersMarshaller;
begin
  Result := FInstance;
end;

end.
