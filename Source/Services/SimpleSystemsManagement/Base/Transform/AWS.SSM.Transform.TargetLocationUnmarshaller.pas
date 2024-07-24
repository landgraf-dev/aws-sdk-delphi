unit AWS.SSM.Transform.TargetLocationUnmarshaller;

interface

uses
  AWS.SSM.Model.TargetLocation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITargetLocationUnmarshaller = IUnmarshaller<TTargetLocation, TJsonUnmarshallerContext>;
  
  TTargetLocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTargetLocation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITargetLocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTargetLocation;
    class function JsonInstance: ITargetLocationUnmarshaller; static;
  end;
  
implementation

{ TTargetLocationUnmarshaller }

function TTargetLocationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTargetLocation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTargetLocation;
begin
  UnmarshalledObject := TTargetLocation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Accounts', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Accounts := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionRoleName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionRoleName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Regions', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Regions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLocationMaxConcurrency', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TargetLocationMaxConcurrency := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetLocationMaxErrors', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TargetLocationMaxErrors := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTargetLocationUnmarshaller.Create;
begin
  FJsonInstance := TTargetLocationUnmarshaller.Create;
end;

class function TTargetLocationUnmarshaller.JsonInstance: ITargetLocationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
