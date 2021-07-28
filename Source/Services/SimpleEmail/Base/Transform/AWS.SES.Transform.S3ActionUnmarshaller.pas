unit AWS.SES.Transform.S3ActionUnmarshaller;

interface

uses
  AWS.SES.Model.S3Action, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3ActionUnmarshaller = IUnmarshaller<TS3Action, TXmlUnmarshallerContext>;
  
  TS3ActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Action, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3ActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3Action;
    class function Instance: IS3ActionUnmarshaller; static;
  end;
  
implementation

{ TS3ActionUnmarshaller }

function TS3ActionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3Action;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3Action;
begin
  UnmarshalledObject := TS3Action.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BucketName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BucketName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('KmsKeyArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.KmsKeyArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ObjectKeyPrefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ObjectKeyPrefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TopicArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TopicArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TS3ActionUnmarshaller.Create;
begin
  FInstance := TS3ActionUnmarshaller.Create;
end;

class function TS3ActionUnmarshaller.Instance: IS3ActionUnmarshaller;
begin
  Result := FInstance;
end;

end.
