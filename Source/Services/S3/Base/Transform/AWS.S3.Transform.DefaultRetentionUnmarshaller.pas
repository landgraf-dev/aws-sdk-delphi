unit AWS.S3.Transform.DefaultRetentionUnmarshaller;

interface

uses
  AWS.S3.Model.DefaultRetention, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDefaultRetentionUnmarshaller = IUnmarshaller<TDefaultRetention, TXmlUnmarshallerContext>;
  
  TDefaultRetentionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDefaultRetention, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IDefaultRetentionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TDefaultRetention;
    class function Instance: IDefaultRetentionUnmarshaller; static;
  end;
  
implementation

{ TDefaultRetentionUnmarshaller }

function TDefaultRetentionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TDefaultRetention;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TDefaultRetention;
begin
  UnmarshalledObject := TDefaultRetention.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Days', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Days := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Mode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Mode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Years', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Years := Unmarshaller.Unmarshall(AContext);
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

class constructor TDefaultRetentionUnmarshaller.Create;
begin
  FInstance := TDefaultRetentionUnmarshaller.Create;
end;

class function TDefaultRetentionUnmarshaller.Instance: IDefaultRetentionUnmarshaller;
begin
  Result := FInstance;
end;

end.
