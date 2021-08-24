unit AWS.SESv2.Transform.InboxPlacementTrackingOptionMarshaller;

interface

uses
  AWS.SESv2.Model.InboxPlacementTrackingOption, 
  AWS.Transform.RequestMarshaller;

type
  IInboxPlacementTrackingOptionMarshaller = IRequestMarshaller<TInboxPlacementTrackingOption, TJsonMarshallerContext>;
  
  TInboxPlacementTrackingOptionMarshaller = class(TInterfacedObject, IRequestMarshaller<TInboxPlacementTrackingOption, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInboxPlacementTrackingOptionMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInboxPlacementTrackingOption; Context: TJsonMarshallerContext);
    class function Instance: IInboxPlacementTrackingOptionMarshaller; static;
  end;
  
implementation

{ TInboxPlacementTrackingOptionMarshaller }

procedure TInboxPlacementTrackingOptionMarshaller.Marshall(ARequestObject: TInboxPlacementTrackingOption; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetGlobal then
  begin
    Context.Writer.WriteName('Global');
    Context.Writer.WriteBoolean(ARequestObject.Global);
  end;
  if ARequestObject.IsSetTrackedIsps then
  begin
    Context.Writer.WriteName('TrackedIsps');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTrackedIspsListValue in ARequestObject.TrackedIsps do
      Context.Writer.WriteString(ARequestObjectTrackedIspsListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TInboxPlacementTrackingOptionMarshaller.Create;
begin
  FInstance := TInboxPlacementTrackingOptionMarshaller.Create;
end;

class function TInboxPlacementTrackingOptionMarshaller.Instance: IInboxPlacementTrackingOptionMarshaller;
begin
  Result := FInstance;
end;

end.
