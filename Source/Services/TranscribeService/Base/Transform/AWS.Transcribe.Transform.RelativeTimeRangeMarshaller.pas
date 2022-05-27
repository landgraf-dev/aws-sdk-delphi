unit AWS.Transcribe.Transform.RelativeTimeRangeMarshaller;

interface

uses
  AWS.Transcribe.Model.RelativeTimeRange, 
  AWS.Transform.RequestMarshaller;

type
  IRelativeTimeRangeMarshaller = IRequestMarshaller<TRelativeTimeRange, TJsonMarshallerContext>;
  
  TRelativeTimeRangeMarshaller = class(TInterfacedObject, IRequestMarshaller<TRelativeTimeRange, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRelativeTimeRangeMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRelativeTimeRange; Context: TJsonMarshallerContext);
    class function Instance: IRelativeTimeRangeMarshaller; static;
  end;
  
implementation

{ TRelativeTimeRangeMarshaller }

procedure TRelativeTimeRangeMarshaller.Marshall(ARequestObject: TRelativeTimeRange; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetEndPercentage then
  begin
    Context.Writer.WriteName('EndPercentage');
    Context.Writer.WriteInteger(ARequestObject.EndPercentage);
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
  if ARequestObject.IsSetStartPercentage then
  begin
    Context.Writer.WriteName('StartPercentage');
    Context.Writer.WriteInteger(ARequestObject.StartPercentage);
  end;
end;

class constructor TRelativeTimeRangeMarshaller.Create;
begin
  FInstance := TRelativeTimeRangeMarshaller.Create;
end;

class function TRelativeTimeRangeMarshaller.Instance: IRelativeTimeRangeMarshaller;
begin
  Result := FInstance;
end;

end.
