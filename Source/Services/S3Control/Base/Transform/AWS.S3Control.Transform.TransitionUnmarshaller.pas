unit AWS.S3Control.Transform.TransitionUnmarshaller;

interface

uses
  AWS.S3Control.Model.Transition, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITransitionUnmarshaller = IUnmarshaller<TTransition, TXmlUnmarshallerContext>;
  
  TTransitionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTransition, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITransitionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TTransition;
    class function Instance: ITransitionUnmarshaller; static;
  end;
  
implementation

{ TTransitionUnmarshaller }

function TTransitionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TTransition;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TTransition;
begin
  UnmarshalledObject := TTransition.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Date', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.Date := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Days', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Days := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageClass', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageClass := Unmarshaller.Unmarshall(AContext);
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

class constructor TTransitionUnmarshaller.Create;
begin
  FInstance := TTransitionUnmarshaller.Create;
end;

class function TTransitionUnmarshaller.Instance: ITransitionUnmarshaller;
begin
  Result := FInstance;
end;

end.
