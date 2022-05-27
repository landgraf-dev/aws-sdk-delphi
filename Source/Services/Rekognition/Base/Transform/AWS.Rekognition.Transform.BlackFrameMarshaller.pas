unit AWS.Rekognition.Transform.BlackFrameMarshaller;

interface

uses
  AWS.Rekognition.Model.BlackFrame, 
  AWS.Transform.RequestMarshaller;

type
  IBlackFrameMarshaller = IRequestMarshaller<TBlackFrame, TJsonMarshallerContext>;
  
  TBlackFrameMarshaller = class(TInterfacedObject, IRequestMarshaller<TBlackFrame, TJsonMarshallerContext>)
  strict private
    class var FInstance: IBlackFrameMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TBlackFrame; Context: TJsonMarshallerContext);
    class function Instance: IBlackFrameMarshaller; static;
  end;
  
implementation

{ TBlackFrameMarshaller }

procedure TBlackFrameMarshaller.Marshall(ARequestObject: TBlackFrame; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetMaxPixelThreshold then
  begin
    Context.Writer.WriteName('MaxPixelThreshold');
    Context.Writer.WriteDouble(ARequestObject.MaxPixelThreshold);
  end;
  if ARequestObject.IsSetMinCoveragePercentage then
  begin
    Context.Writer.WriteName('MinCoveragePercentage');
    Context.Writer.WriteDouble(ARequestObject.MinCoveragePercentage);
  end;
end;

class constructor TBlackFrameMarshaller.Create;
begin
  FInstance := TBlackFrameMarshaller.Create;
end;

class function TBlackFrameMarshaller.Instance: IBlackFrameMarshaller;
begin
  Result := FInstance;
end;

end.
