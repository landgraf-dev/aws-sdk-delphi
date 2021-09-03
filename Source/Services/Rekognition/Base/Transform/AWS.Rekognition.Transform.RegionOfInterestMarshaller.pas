unit AWS.Rekognition.Transform.RegionOfInterestMarshaller;

interface

uses
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Transform.RequestMarshaller, 
  AWS.Rekognition.Transform.BoundingBoxMarshaller;

type
  IRegionOfInterestMarshaller = IRequestMarshaller<TRegionOfInterest, TJsonMarshallerContext>;
  
  TRegionOfInterestMarshaller = class(TInterfacedObject, IRequestMarshaller<TRegionOfInterest, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRegionOfInterestMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRegionOfInterest; Context: TJsonMarshallerContext);
    class function Instance: IRegionOfInterestMarshaller; static;
  end;
  
implementation

{ TRegionOfInterestMarshaller }

procedure TRegionOfInterestMarshaller.Marshall(ARequestObject: TRegionOfInterest; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBoundingBox then
  begin
    Context.Writer.WriteName('BoundingBox');
    Context.Writer.WriteBeginObject;
    TBoundingBoxMarshaller.Instance.Marshall(ARequestObject.BoundingBox, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TRegionOfInterestMarshaller.Create;
begin
  FInstance := TRegionOfInterestMarshaller.Create;
end;

class function TRegionOfInterestMarshaller.Instance: IRegionOfInterestMarshaller;
begin
  Result := FInstance;
end;

end.
