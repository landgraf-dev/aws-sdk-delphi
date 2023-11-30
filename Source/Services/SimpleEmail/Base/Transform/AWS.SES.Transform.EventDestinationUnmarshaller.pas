unit AWS.SES.Transform.EventDestinationUnmarshaller;

interface

uses
  AWS.SES.Model.EventDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SES.Transform.CloudWatchDestinationUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SES.Transform.KinesisFirehoseDestinationUnmarshaller, 
  AWS.SES.Transform.SNSDestinationUnmarshaller;

type
  IEventDestinationUnmarshaller = IUnmarshaller<TEventDestination, TXmlUnmarshallerContext>;
  
  TEventDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEventDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEventDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TEventDestination;
    class function Instance: IEventDestinationUnmarshaller; static;
  end;
  
implementation

{ TEventDestinationUnmarshaller }

function TEventDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TEventDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TEventDestination;
begin
  UnmarshalledObject := TEventDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('CloudWatchDestination', TargetDepth) then
        begin
          var Unmarshaller := TCloudWatchDestinationUnmarshaller.Instance;
          UnmarshalledObject.CloudWatchDestination := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Enabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.Enabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('KinesisFirehoseDestination', TargetDepth) then
        begin
          var Unmarshaller := TKinesisFirehoseDestinationUnmarshaller.Instance;
          UnmarshalledObject.KinesisFirehoseDestination := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('MatchingEventTypes/member', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.MatchingEventTypes.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SNSDestination', TargetDepth) then
        begin
          var Unmarshaller := TSNSDestinationUnmarshaller.Instance;
          UnmarshalledObject.SNSDestination := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TEventDestinationUnmarshaller.Create;
begin
  FInstance := TEventDestinationUnmarshaller.Create;
end;

class function TEventDestinationUnmarshaller.Instance: IEventDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
