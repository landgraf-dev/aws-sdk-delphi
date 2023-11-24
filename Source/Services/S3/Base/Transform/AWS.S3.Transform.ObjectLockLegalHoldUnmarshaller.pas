unit AWS.S3.Transform.ObjectLockLegalHoldUnmarshaller;

interface

uses
  AWS.S3.Model.ObjectLockLegalHold, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IObjectLockLegalHoldUnmarshaller = IUnmarshaller<TObjectLockLegalHold, TXmlUnmarshallerContext>;
  
  TObjectLockLegalHoldUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLockLegalHold, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLockLegalHoldUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockLegalHold;
    class function Instance: IObjectLockLegalHoldUnmarshaller; static;
  end;
  
implementation

{ TObjectLockLegalHoldUnmarshaller }

function TObjectLockLegalHoldUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockLegalHold;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLockLegalHold;
begin
  UnmarshalledObject := TObjectLockLegalHold.Create;
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

class constructor TObjectLockLegalHoldUnmarshaller.Create;
begin
  FInstance := TObjectLockLegalHoldUnmarshaller.Create;
end;

class function TObjectLockLegalHoldUnmarshaller.Instance: IObjectLockLegalHoldUnmarshaller;
begin
  Result := FInstance;
end;

end.
