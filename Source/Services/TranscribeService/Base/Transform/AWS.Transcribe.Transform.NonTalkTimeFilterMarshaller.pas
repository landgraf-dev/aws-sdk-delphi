unit AWS.Transcribe.Transform.NonTalkTimeFilterMarshaller;

interface

uses
  AWS.Transcribe.Model.NonTalkTimeFilter, 
  AWS.Transform.RequestMarshaller, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeMarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeMarshaller;

type
  INonTalkTimeFilterMarshaller = IRequestMarshaller<TNonTalkTimeFilter, TJsonMarshallerContext>;
  
  TNonTalkTimeFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TNonTalkTimeFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: INonTalkTimeFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TNonTalkTimeFilter; Context: TJsonMarshallerContext);
    class function Instance: INonTalkTimeFilterMarshaller; static;
  end;
  
implementation

{ TNonTalkTimeFilterMarshaller }

procedure TNonTalkTimeFilterMarshaller.Marshall(ARequestObject: TNonTalkTimeFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAbsoluteTimeRange then
  begin
    Context.Writer.WriteName('AbsoluteTimeRange');
    Context.Writer.WriteBeginObject;
    TAbsoluteTimeRangeMarshaller.Instance.Marshall(ARequestObject.AbsoluteTimeRange, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetNegate then
  begin
    Context.Writer.WriteName('Negate');
    Context.Writer.WriteBoolean(ARequestObject.Negate);
  end;
  if ARequestObject.IsSetRelativeTimeRange then
  begin
    Context.Writer.WriteName('RelativeTimeRange');
    Context.Writer.WriteBeginObject;
    TRelativeTimeRangeMarshaller.Instance.Marshall(ARequestObject.RelativeTimeRange, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetThreshold then
  begin
    Context.Writer.WriteName('Threshold');
    Context.Writer.WriteInteger(ARequestObject.Threshold);
  end;
end;

class constructor TNonTalkTimeFilterMarshaller.Create;
begin
  FInstance := TNonTalkTimeFilterMarshaller.Create;
end;

class function TNonTalkTimeFilterMarshaller.Instance: INonTalkTimeFilterMarshaller;
begin
  Result := FInstance;
end;

end.
