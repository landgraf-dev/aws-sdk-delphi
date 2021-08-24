unit AWS.SESv2.Transform.KinesisFirehoseDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.KinesisFirehoseDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IKinesisFirehoseDestinationUnmarshaller = IUnmarshaller<TKinesisFirehoseDestination, TJsonUnmarshallerContext>;
  
  TKinesisFirehoseDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TKinesisFirehoseDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IKinesisFirehoseDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TKinesisFirehoseDestination;
    class function JsonInstance: IKinesisFirehoseDestinationUnmarshaller; static;
  end;
  
implementation

{ TKinesisFirehoseDestinationUnmarshaller }

function TKinesisFirehoseDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TKinesisFirehoseDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TKinesisFirehoseDestination;
begin
  UnmarshalledObject := TKinesisFirehoseDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DeliveryStreamArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DeliveryStreamArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IamRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IamRoleArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TKinesisFirehoseDestinationUnmarshaller.Create;
begin
  FJsonInstance := TKinesisFirehoseDestinationUnmarshaller.Create;
end;

class function TKinesisFirehoseDestinationUnmarshaller.JsonInstance: IKinesisFirehoseDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
