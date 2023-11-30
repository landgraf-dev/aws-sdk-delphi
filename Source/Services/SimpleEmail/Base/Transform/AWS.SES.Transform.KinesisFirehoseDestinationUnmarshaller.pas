unit AWS.SES.Transform.KinesisFirehoseDestinationUnmarshaller;

interface

uses
  AWS.SES.Model.KinesisFirehoseDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKinesisFirehoseDestinationUnmarshaller = IUnmarshaller<TKinesisFirehoseDestination, TXmlUnmarshallerContext>;
  
  TKinesisFirehoseDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TKinesisFirehoseDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKinesisFirehoseDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TKinesisFirehoseDestination;
    class function Instance: IKinesisFirehoseDestinationUnmarshaller; static;
  end;
  
implementation

{ TKinesisFirehoseDestinationUnmarshaller }

function TKinesisFirehoseDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TKinesisFirehoseDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TKinesisFirehoseDestination;
begin
  UnmarshalledObject := TKinesisFirehoseDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DeliveryStreamARN', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DeliveryStreamARN := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('IAMRoleARN', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.IAMRoleARN := Unmarshaller.Unmarshall(AContext);
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

class constructor TKinesisFirehoseDestinationUnmarshaller.Create;
begin
  FInstance := TKinesisFirehoseDestinationUnmarshaller.Create;
end;

class function TKinesisFirehoseDestinationUnmarshaller.Instance: IKinesisFirehoseDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
