unit AWS.LexRuntimeService.Transform.ButtonUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.Button, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IButtonUnmarshaller = IUnmarshaller<TButton, TJsonUnmarshallerContext>;
  
  TButtonUnmarshaller = class(TInterfacedObject, IUnmarshaller<TButton, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IButtonUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TButton;
    class function JsonInstance: IButtonUnmarshaller; static;
  end;
  
implementation

{ TButtonUnmarshaller }

function TButtonUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TButton;
var
  TargetDepth: Integer;
  UnmarshalledObject: TButton;
begin
  UnmarshalledObject := TButton.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('value', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TButtonUnmarshaller.Create;
begin
  FJsonInstance := TButtonUnmarshaller.Create;
end;

class function TButtonUnmarshaller.JsonInstance: IButtonUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
