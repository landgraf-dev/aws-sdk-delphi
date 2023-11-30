unit AWS.S3Control.Transform.S3RetentionUnmarshaller;

interface

uses
  AWS.S3Control.Model.S3Retention, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3RetentionUnmarshaller = IUnmarshaller<TS3Retention, TXmlUnmarshallerContext>;
  
  TS3RetentionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Retention, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IS3RetentionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3Retention;
    class function Instance: IS3RetentionUnmarshaller; static;
  end;
  
implementation

{ TS3RetentionUnmarshaller }

function TS3RetentionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3Retention;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TS3Retention;
begin
  UnmarshalledObject := TS3Retention.Create;
  try
    Result := UnmarshalledObject;
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TS3RetentionUnmarshaller.Create;
begin
  FInstance := TS3RetentionUnmarshaller.Create;
end;

class function TS3RetentionUnmarshaller.Instance: IS3RetentionUnmarshaller;
begin
  Result := FInstance;
end;

end.
