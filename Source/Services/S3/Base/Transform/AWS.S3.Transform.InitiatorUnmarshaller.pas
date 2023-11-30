unit AWS.S3.Transform.InitiatorUnmarshaller;

interface

uses
  AWS.S3.Model.Initiator, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IInitiatorUnmarshaller = IUnmarshaller<TInitiator, TXmlUnmarshallerContext>;
  
  TInitiatorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInitiator, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInitiatorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInitiator;
    class function Instance: IInitiatorUnmarshaller; static;
  end;
  
implementation

{ TInitiatorUnmarshaller }

function TInitiatorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInitiator;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInitiator;
begin
  UnmarshalledObject := TInitiator.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('DisplayName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DisplayName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ID', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ID := Unmarshaller.Unmarshall(AContext);
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

class constructor TInitiatorUnmarshaller.Create;
begin
  FInstance := TInitiatorUnmarshaller.Create;
end;

class function TInitiatorUnmarshaller.Instance: IInitiatorUnmarshaller;
begin
  Result := FInstance;
end;

end.
