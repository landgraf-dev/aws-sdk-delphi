unit AWS.SSM.Transform.TargetUnmarshaller;

interface

uses
  AWS.SSM.Model.Target, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITargetUnmarshaller = IUnmarshaller<TTarget, TJsonUnmarshallerContext>;
  
  TTargetUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTarget, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITargetUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTarget;
    class function JsonInstance: ITargetUnmarshaller; static;
  end;
  
implementation

{ TTargetUnmarshaller }

function TTargetUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTarget;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTarget;
begin
  UnmarshalledObject := TTarget.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Key', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Values', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Values := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTargetUnmarshaller.Create;
begin
  FJsonInstance := TTargetUnmarshaller.Create;
end;

class function TTargetUnmarshaller.JsonInstance: ITargetUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
