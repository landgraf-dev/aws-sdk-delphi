unit AWS.Rekognition.Transform.StartTextDetectionFiltersMarshaller;

interface

uses
  AWS.Rekognition.Model.StartTextDetectionFilters, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.RegionOfInterestMarshaller, 
  AWS.Rekognition.Transform.DetectionFilterMarshaller;

type
  IStartTextDetectionFiltersMarshaller = IRequestMarshaller<TStartTextDetectionFilters, TJsonMarshallerContext>;
  
  TStartTextDetectionFiltersMarshaller = class(TInterfacedObject, IRequestMarshaller<TStartTextDetectionFilters, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStartTextDetectionFiltersMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStartTextDetectionFilters; Context: TJsonMarshallerContext);
    class function Instance: IStartTextDetectionFiltersMarshaller; static;
  end;
  
implementation

{ TStartTextDetectionFiltersMarshaller }

procedure TStartTextDetectionFiltersMarshaller.Marshall(ARequestObject: TStartTextDetectionFilters; Context: TJsonMarshallerContext);
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

class constructor TStartTextDetectionFiltersMarshaller.Create;
begin
  FInstance := TStartTextDetectionFiltersMarshaller.Create;
end;

class function TStartTextDetectionFiltersMarshaller.Instance: IStartTextDetectionFiltersMarshaller;
begin
  Result := FInstance;
end;

end.
