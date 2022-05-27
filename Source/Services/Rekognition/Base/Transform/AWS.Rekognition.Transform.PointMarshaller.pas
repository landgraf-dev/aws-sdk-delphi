unit AWS.Rekognition.Transform.PointMarshaller;

interface

uses
  AWS.Rekognition.Model.Point, 
  AWS.Transform.RequestMarshaller;

type
  IPointMarshaller = IRequestMarshaller<TPoint, TJsonMarshallerContext>;
  
  TPointMarshaller = class(TInterfacedObject, IRequestMarshaller<TPoint, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPointMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPoint; Context: TJsonMarshallerContext);
    class function Instance: IPointMarshaller; static;
  end;
  
implementation

{ TPointMarshaller }

procedure TPointMarshaller.Marshall(ARequestObject: TPoint; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetX then
  begin
    Context.Writer.WriteName('X');
    Context.Writer.WriteDouble(ARequestObject.X);
  end;
  if ARequestObject.IsSetY then
  begin
    Context.Writer.WriteName('Y');
    Context.Writer.WriteDouble(ARequestObject.Y);
  end;
end;

class constructor TPointMarshaller.Create;
begin
  FInstance := TPointMarshaller.Create;
end;

class function TPointMarshaller.Instance: IPointMarshaller;
begin
  Result := FInstance;
end;

end.
