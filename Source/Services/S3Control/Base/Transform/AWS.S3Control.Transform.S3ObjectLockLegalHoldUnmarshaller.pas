unit AWS.S3Control.Transform.S3ObjectLockLegalHoldUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3ObjectLockLegalHold, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3ObjectLockLegalHoldUnmarshaller = IUnmarshaller<TS3ObjectLockLegalHold, TXmlUnmarshallerContext>;
  
  TS3ObjectLockLegalHoldUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3ObjectLockLegalHold, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3ObjectLockLegalHoldUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3ObjectLockLegalHold;
    class function Instance: IS3ObjectLockLegalHoldUnmarshaller; static;
  end;
  
implementation

{ TS3ObjectLockLegalHoldUnmarshaller }

function TS3ObjectLockLegalHoldUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3ObjectLockLegalHold;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3ObjectLockLegalHold;
begin
  UnmarshalledObject := TS3ObjectLockLegalHold.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
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

class constructor TS3ObjectLockLegalHoldUnmarshaller.Create;
begin
  FInstance := TS3ObjectLockLegalHoldUnmarshaller.Create;
end;

class function TS3ObjectLockLegalHoldUnmarshaller.Instance: IS3ObjectLockLegalHoldUnmarshaller;
begin
  Result := FInstance;
end;

end.
