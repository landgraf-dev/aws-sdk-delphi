unit AWS.Transcribe.Transform.AbsoluteTimeRangeMarshaller;

interface

uses
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Transform.RequestMarshaller;

type
  IAbsoluteTimeRangeMarshaller = IRequestMarshaller<TAbsoluteTimeRange, TJsonMarshallerContext>;
  
  TAbsoluteTimeRangeMarshaller = class(TInterfacedObject, IRequestMarshaller<TAbsoluteTimeRange, TJsonMarshallerContext>)
  strict private
    class var FInstance: IAbsoluteTimeRangeMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TAbsoluteTimeRange; Context: TJsonMarshallerContext);
    class function Instance: IAbsoluteTimeRangeMarshaller; static;
  end;
  
implementation

{ TAbsoluteTimeRangeMarshaller }

procedure TAbsoluteTimeRangeMarshaller.Marshall(ARequestObject: TAbsoluteTimeRange; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetEndTime then
  begin
    Context.Writer.WriteName('EndTime');
    Context.Writer.WriteInteger(ARequestObject.EndTime);
  end;
  if ARequestObject.IsSetFirst then
  begin
    Context.Writer.WriteName('First');
    Context.Writer.WriteInteger(ARequestObject.First);
  end;
  if ARequestObject.IsSetLast then
  begin
    Context.Writer.WriteName('Last');
    Context.Writer.WriteInteger(ARequestObject.Last);
  end;
  if ARequestObject.IsSetStartTime then
  begin
    Context.Writer.WriteName('StartTime');
    Context.Writer.WriteInteger(ARequestObject.StartTime);
  end;
end;

class constructor TAbsoluteTimeRangeMarshaller.Create;
begin
  FInstance := TAbsoluteTimeRangeMarshaller.Create;
end;

class function TAbsoluteTimeRangeMarshaller.Instance: IAbsoluteTimeRangeMarshaller;
begin
  Result := FInstance;
end;

end.
