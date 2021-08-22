unit AWS.LexRuntimeService.Transform.ActiveContextTimeToLiveMarshaller;

interface

uses
  AWS.LexRuntimeService.Model.ActiveContextTimeToLive, 
  AWS.Transform.RequestMarshaller;

type
  IActiveContextTimeToLiveMarshaller = IRequestMarshaller<TActiveContextTimeToLive, TJsonMarshallerContext>;
  
  TActiveContextTimeToLiveMarshaller = class(TInterfacedObject, IRequestMarshaller<TActiveContextTimeToLive, TJsonMarshallerContext>, IActiveContextTimeToLiveMarshaller)
  strict private
    class var FInstance: IActiveContextTimeToLiveMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TActiveContextTimeToLive; AContext: TJsonMarshallerContext);
    class function Instance: IActiveContextTimeToLiveMarshaller; static;
  end;
  
implementation

{ TActiveContextTimeToLiveMarshaller }

procedure TActiveContextTimeToLiveMarshaller.Marshall(ARequestObject: TActiveContextTimeToLive; AContext: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTimeToLiveInSeconds then
  begin
    Context.Writer.WriteName('timeToLiveInSeconds');
    Context.Writer.WriteString(ARequestObject.TimeToLiveInSeconds);
  end;
  if ARequestObject.IsSetTurnsToLive then
  begin
    Context.Writer.WriteName('turnsToLive');
    Context.Writer.WriteString(ARequestObject.TurnsToLive);
  end;
end;

class constructor TActiveContextTimeToLiveMarshaller.Create;
begin
  FInstance := TActiveContextTimeToLiveMarshaller.Create;
end;

class function TActiveContextTimeToLiveMarshaller.Instance: IActiveContextTimeToLiveMarshaller;
begin
  Result := FInstance;
end;

end.
