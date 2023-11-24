unit AWS.S3.Transform.ObjectLockRetentionUnmarshaller;

interface

uses
  AWS.S3.Model.ObjectLockRetention, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IObjectLockRetentionUnmarshaller = IUnmarshaller<TObjectLockRetention, TXmlUnmarshallerContext>;
  
  TObjectLockRetentionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TObjectLockRetention, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IObjectLockRetentionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockRetention;
    class function Instance: IObjectLockRetentionUnmarshaller; static;
  end;
  
implementation

{ TObjectLockRetentionUnmarshaller }

function TObjectLockRetentionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TObjectLockRetention;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TObjectLockRetention;
begin
  UnmarshalledObject := TObjectLockRetention.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Mode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Mode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RetainUntilDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.RetainUntilDate := Unmarshaller.Unmarshall(AContext);
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

class constructor TObjectLockRetentionUnmarshaller.Create;
begin
  FInstance := TObjectLockRetentionUnmarshaller.Create;
end;

class function TObjectLockRetentionUnmarshaller.Instance: IObjectLockRetentionUnmarshaller;
begin
  Result := FInstance;
end;

end.
