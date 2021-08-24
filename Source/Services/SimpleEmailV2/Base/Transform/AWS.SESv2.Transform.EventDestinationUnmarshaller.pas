unit AWS.SESv2.Transform.EventDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.EventDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SESv2.Transform.CloudWatchDestinationUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.KinesisFirehoseDestinationUnmarshaller, 
  AWS.SESv2.Transform.PinpointDestinationUnmarshaller, 
  AWS.SESv2.Transform.SnsDestinationUnmarshaller;

type
  IEventDestinationUnmarshaller = IUnmarshaller<TEventDestination, TJsonUnmarshallerContext>;
  
  TEventDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEventDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEventDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEventDestination;
    class function JsonInstance: IEventDestinationUnmarshaller; static;
  end;
  
implementation

{ TEventDestinationUnmarshaller }

function TEventDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEventDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEventDestination;
begin
  UnmarshalledObject := TEventDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CloudWatchDestination', TargetDepth) then
      begin
        var Unmarshaller := TCloudWatchDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.CloudWatchDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Enabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Enabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KinesisFirehoseDestination', TargetDepth) then
      begin
        var Unmarshaller := TKinesisFirehoseDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.KinesisFirehoseDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MatchingEventTypes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.MatchingEventTypes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PinpointDestination', TargetDepth) then
      begin
        var Unmarshaller := TPinpointDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.PinpointDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SnsDestination', TargetDepth) then
      begin
        var Unmarshaller := TSnsDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.SnsDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEventDestinationUnmarshaller.Create;
begin
  FJsonInstance := TEventDestinationUnmarshaller.Create;
end;

class function TEventDestinationUnmarshaller.JsonInstance: IEventDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
