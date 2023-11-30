unit AWS.S3Control.Transform.S3SetObjectRetentionOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3SetObjectRetentionOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.S3RetentionUnmarshaller;

type
  IS3SetObjectRetentionOperationUnmarshaller = IUnmarshaller<TS3SetObjectRetentionOperation, TXmlUnmarshallerContext>;
  
  TS3SetObjectRetentionOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3SetObjectRetentionOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3SetObjectRetentionOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectRetentionOperation;
    class function Instance: IS3SetObjectRetentionOperationUnmarshaller; static;
  end;
  
implementation

{ TS3SetObjectRetentionOperationUnmarshaller }

function TS3SetObjectRetentionOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectRetentionOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3SetObjectRetentionOperation;
begin
  UnmarshalledObject := TS3SetObjectRetentionOperation.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BypassGovernanceRetention', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.BypassGovernanceRetention := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Retention', TargetDepth) then
        begin
          var Unmarshaller := TS3RetentionUnmarshaller.Instance;
          UnmarshalledObject.Retention := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3SetObjectRetentionOperationUnmarshaller.Create;
begin
  FInstance := TS3SetObjectRetentionOperationUnmarshaller.Create;
end;

class function TS3SetObjectRetentionOperationUnmarshaller.Instance: IS3SetObjectRetentionOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.
