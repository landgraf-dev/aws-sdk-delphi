unit AWS.SESv2.Transform.ReputationOptionsMarshaller;

interface

uses
  System.DateUtils, 
  AWS.SESv2.Model.ReputationOptions, 
  AWS.Transform.RequestMarshaller;

type
  IReputationOptionsMarshaller = IRequestMarshaller<TReputationOptions, TJsonMarshallerContext>;
  
  TReputationOptionsMarshaller = class(TInterfacedObject, IRequestMarshaller<TReputationOptions, TJsonMarshallerContext>)
  strict private
    class var FInstance: IReputationOptionsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TReputationOptions; Context: TJsonMarshallerContext);
    class function Instance: IReputationOptionsMarshaller; static;
  end;
  
implementation

{ TReputationOptionsMarshaller }

procedure TReputationOptionsMarshaller.Marshall(ARequestObject: TReputationOptions; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetLastFreshStart then
  begin
    Context.Writer.WriteName('LastFreshStart');
    Context.Writer.WriteInteger(DateTimeToUnix(ARequestObject.LastFreshStart, False));
  end;
  if ARequestObject.IsSetReputationMetricsEnabled then
  begin
    Context.Writer.WriteName('ReputationMetricsEnabled');
    Context.Writer.WriteBoolean(ARequestObject.ReputationMetricsEnabled);
  end;
end;

class constructor TReputationOptionsMarshaller.Create;
begin
  FInstance := TReputationOptionsMarshaller.Create;
end;

class function TReputationOptionsMarshaller.Instance: IReputationOptionsMarshaller;
begin
  Result := FInstance;
end;

end.
