unit AWS.S3Control.Transform.S3SetObjectLegalHoldOperationUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3SetObjectLegalHoldOperation, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3ObjectLockLegalHoldUnmarshaller;

type
  IS3SetObjectLegalHoldOperationUnmarshaller = IUnmarshaller<TS3SetObjectLegalHoldOperation, TXmlUnmarshallerContext>;
  
  TS3SetObjectLegalHoldOperationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3SetObjectLegalHoldOperation, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3SetObjectLegalHoldOperationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectLegalHoldOperation;
    class function Instance: IS3SetObjectLegalHoldOperationUnmarshaller; static;
  end;
  
implementation

{ TS3SetObjectLegalHoldOperationUnmarshaller }

function TS3SetObjectLegalHoldOperationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3SetObjectLegalHoldOperation;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3SetObjectLegalHoldOperation;
begin
  UnmarshalledObject := TS3SetObjectLegalHoldOperation.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('LegalHold', TargetDepth) then
        begin
          var Unmarshaller := TS3ObjectLockLegalHoldUnmarshaller.Instance;
          UnmarshalledObject.LegalHold := Unmarshaller.Unmarshall(AContext);
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

class constructor TS3SetObjectLegalHoldOperationUnmarshaller.Create;
begin
  FInstance := TS3SetObjectLegalHoldOperationUnmarshaller.Create;
end;

class function TS3SetObjectLegalHoldOperationUnmarshaller.Instance: IS3SetObjectLegalHoldOperationUnmarshaller;
begin
  Result := FInstance;
end;

end.
