unit AWS.Rekognition.Transform.BoundingBoxMarshaller;

interface

uses
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Transform.RequestMarshaller;

type
  IBoundingBoxMarshaller = IRequestMarshaller<TBoundingBox, TJsonMarshallerContext>;
  
  TBoundingBoxMarshaller = class(TInterfacedObject, IRequestMarshaller<TBoundingBox, TJsonMarshallerContext>)
  strict private
    class var FInstance: IBoundingBoxMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TBoundingBox; Context: TJsonMarshallerContext);
    class function Instance: IBoundingBoxMarshaller; static;
  end;
  
implementation

{ TBoundingBoxMarshaller }

procedure TBoundingBoxMarshaller.Marshall(ARequestObject: TBoundingBox; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetHeight then
  begin
    Context.Writer.WriteName('Height');
    Context.Writer.WriteDouble(ARequestObject.Height);
  end;
  if ARequestObject.IsSetLeft then
  begin
    Context.Writer.WriteName('Left');
    Context.Writer.WriteDouble(ARequestObject.Left);
  end;
  if ARequestObject.IsSetTop then
  begin
    Context.Writer.WriteName('Top');
    Context.Writer.WriteDouble(ARequestObject.Top);
  end;
  if ARequestObject.IsSetWidth then
  begin
    Context.Writer.WriteName('Width');
    Context.Writer.WriteDouble(ARequestObject.Width);
  end;
end;

class constructor TBoundingBoxMarshaller.Create;
begin
  FInstance := TBoundingBoxMarshaller.Create;
end;

class function TBoundingBoxMarshaller.Instance: IBoundingBoxMarshaller;
begin
  Result := FInstance;
end;

end.
