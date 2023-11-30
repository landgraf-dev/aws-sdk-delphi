unit AWS.S3Control.Transform.S3InitiateRestoreObjectOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3InitiateRestoreObjectOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3InitiateRestoreObjectOperationUnmarshaller = IUnmarshaller<TS3InitiateRestoreObjectOperation, TXmlUnmarshallerContext>;
  
  TS3InitiateRestoreObjectOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3InitiateRestoreObjectOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3InitiateRestoreObjectOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3InitiateRestoreObjectOperation;
    class function Instance: IS3InitiateRestoreObjectOperationUnmarshaller; static;
  end;
  
implementation

{ TS3InitiateRestoreObjectOperationUnmarshaller }

function TS3InitiateRestoreObjectOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3InitiateRestoreObjectOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3InitiateRestoreObjectOperation;
begin
  UnmarshalledObject := TS3InitiateRestoreObjectOperation.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ExpirationInDays', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.ExpirationInDays := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('GlacierJobTier', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.GlacierJobTier := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3InitiateRestoreObjectOperationUnmarshaller.Create;
begin
  FInstance := TS3InitiateRestoreObjectOperationUnmarshaller.Create;
end;

class function TS3InitiateRestoreObjectOperationUnmarshaller.Instance: IS3InitiateRestoreObjectOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.
