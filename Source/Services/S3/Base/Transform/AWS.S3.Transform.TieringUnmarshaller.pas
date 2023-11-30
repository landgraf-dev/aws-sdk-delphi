unit AWS.S3.Transform.TieringUnmarshaller;

interface

uses
  AWS.S3.Model.Tiering, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITieringUnmarshaller = IUnmarshaller<TTiering, TXmlUnmarshallerContext>;
  
  TTieringUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTiering, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITieringUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTiering;
    class function Instance: ITieringUnmarshaller; static;
  end;
  
implementation

{ TTieringUnmarshaller }

function TTieringUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTiering;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTiering;
begin
  UnmarshalledObject := TTiering.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccessTier', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AccessTier := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Days', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Days := Unmarshaller.Unmarshall(AContext);
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

class constructor TTieringUnmarshaller.Create;
begin
  FInstance := TTieringUnmarshaller.Create;
end;

class function TTieringUnmarshaller.Instance: ITieringUnmarshaller;
begin
  Result := FInstance;
end;

end.
