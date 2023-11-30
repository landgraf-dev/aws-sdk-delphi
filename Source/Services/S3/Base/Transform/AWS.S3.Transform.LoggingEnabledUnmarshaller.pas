unit AWS.S3.Transform.LoggingEnabledUnmarshaller;

interface

uses
  AWS.S3.Model.LoggingEnabled, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.TargetGrantUnmarshaller, 
  AWS.S3.Model.TargetGrant;

type
  ILoggingEnabledUnmarshaller = IUnmarshaller<TLoggingEnabled, TXmlUnmarshallerContext>;
  
  TLoggingEnabledUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLoggingEnabled, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ILoggingEnabledUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TLoggingEnabled;
    class function Instance: ILoggingEnabledUnmarshaller; static;
  end;
  
implementation

{ TLoggingEnabledUnmarshaller }

function TLoggingEnabledUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TLoggingEnabled;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TLoggingEnabled;
begin
  UnmarshalledObject := TLoggingEnabled.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('TargetBucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TargetBucket := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TargetGrants/Grant', TargetDepth) then
        begin
          var Unmarshaller := TTargetGrantUnmarshaller.Instance;
          UnmarshalledObject.TargetGrants.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('TargetPrefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TargetPrefix := Unmarshaller.Unmarshall(AContext);
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

class constructor TLoggingEnabledUnmarshaller.Create;
begin
  FInstance := TLoggingEnabledUnmarshaller.Create;
end;

class function TLoggingEnabledUnmarshaller.Instance: ILoggingEnabledUnmarshaller;
begin
  Result := FInstance;
end;

end.
