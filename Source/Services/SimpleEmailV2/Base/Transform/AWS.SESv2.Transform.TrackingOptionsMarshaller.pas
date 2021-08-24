unit AWS.SESv2.Transform.TrackingOptionsMarshaller;

interface

uses
  AWS.SESv2.Model.TrackingOptions, 
  AWS.Transform.RequestMarshaller;

type
  ITrackingOptionsMarshaller = IRequestMarshaller<TTrackingOptions, TJsonMarshallerContext>;
  
  TTrackingOptionsMarshaller = class(TInterfacedObject, IRequestMarshaller<TTrackingOptions, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITrackingOptionsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTrackingOptions; Context: TJsonMarshallerContext);
    class function Instance: ITrackingOptionsMarshaller; static;
  end;
  
implementation

{ TTrackingOptionsMarshaller }

procedure TTrackingOptionsMarshaller.Marshall(ARequestObject: TTrackingOptions; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCustomRedirectDomain then
  begin
    Context.Writer.WriteName('CustomRedirectDomain');
    Context.Writer.WriteString(ARequestObject.CustomRedirectDomain);
  end;
end;

class constructor TTrackingOptionsMarshaller.Create;
begin
  FInstance := TTrackingOptionsMarshaller.Create;
end;

class function TTrackingOptionsMarshaller.Instance: ITrackingOptionsMarshaller;
begin
  Result := FInstance;
end;

end.
