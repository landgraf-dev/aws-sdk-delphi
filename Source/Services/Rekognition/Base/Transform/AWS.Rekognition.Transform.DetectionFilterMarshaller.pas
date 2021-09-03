unit AWS.Rekognition.Transform.DetectionFilterMarshaller;

interface

uses
  AWS.Rekognition.Model.DetectionFilter, 
  AWS.Transform.RequestMarshaller;

type
  IDetectionFilterMarshaller = IRequestMarshaller<TDetectionFilter, TJsonMarshallerContext>;
  
  TDetectionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TDetectionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDetectionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDetectionFilter; Context: TJsonMarshallerContext);
    class function Instance: IDetectionFilterMarshaller; static;
  end;
  
implementation

{ TDetectionFilterMarshaller }

procedure TDetectionFilterMarshaller.Marshall(ARequestObject: TDetectionFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetMinBoundingBoxHeight then
  begin
    Context.Writer.WriteName('MinBoundingBoxHeight');
    Context.Writer.WriteDouble(ARequestObject.MinBoundingBoxHeight);
  end;
  if ARequestObject.IsSetMinBoundingBoxWidth then
  begin
    Context.Writer.WriteName('MinBoundingBoxWidth');
    Context.Writer.WriteDouble(ARequestObject.MinBoundingBoxWidth);
  end;
  if ARequestObject.IsSetMinConfidence then
  begin
    Context.Writer.WriteName('MinConfidence');
    Context.Writer.WriteDouble(ARequestObject.MinConfidence);
  end;
end;

class constructor TDetectionFilterMarshaller.Create;
begin
  FInstance := TDetectionFilterMarshaller.Create;
end;

class function TDetectionFilterMarshaller.Instance: IDetectionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
