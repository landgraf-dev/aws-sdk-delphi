unit AWS.LexRuntimeV2.Transform.DialogActionUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.DialogAction, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDialogActionUnmarshaller = IUnmarshaller<TDialogAction, TJsonUnmarshallerContext>;
  
  TDialogActionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDialogAction, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDialogActionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDialogAction;
    class function JsonInstance: IDialogActionUnmarshaller; static;
  end;
  
implementation

{ TDialogActionUnmarshaller }

function TDialogActionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDialogAction;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDialogAction;
begin
  UnmarshalledObject := TDialogAction.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('slotElicitationStyle', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SlotElicitationStyle := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('slotToElicit', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SlotToElicit := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDialogActionUnmarshaller.Create;
begin
  FJsonInstance := TDialogActionUnmarshaller.Create;
end;

class function TDialogActionUnmarshaller.JsonInstance: IDialogActionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
