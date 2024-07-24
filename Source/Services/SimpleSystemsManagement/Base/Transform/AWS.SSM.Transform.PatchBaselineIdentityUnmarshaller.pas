unit AWS.SSM.Transform.PatchBaselineIdentityUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchBaselineIdentity, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchBaselineIdentityUnmarshaller = IUnmarshaller<TPatchBaselineIdentity, TJsonUnmarshallerContext>;
  
  TPatchBaselineIdentityUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchBaselineIdentity, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchBaselineIdentityUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchBaselineIdentity;
    class function JsonInstance: IPatchBaselineIdentityUnmarshaller; static;
  end;
  
implementation

{ TPatchBaselineIdentityUnmarshaller }

function TPatchBaselineIdentityUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchBaselineIdentity;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchBaselineIdentity;
begin
  UnmarshalledObject := TPatchBaselineIdentity.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BaselineDescription', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BaselineDescription := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('BaselineId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BaselineId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('BaselineName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BaselineName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DefaultBaseline', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultBaseline := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OperatingSystem', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OperatingSystem := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchBaselineIdentityUnmarshaller.Create;
begin
  FJsonInstance := TPatchBaselineIdentityUnmarshaller.Create;
end;

class function TPatchBaselineIdentityUnmarshaller.JsonInstance: IPatchBaselineIdentityUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
