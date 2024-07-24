unit AWS.SSM.Transform.PatchSourceUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchSource, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchSourceUnmarshaller = IUnmarshaller<TPatchSource, TJsonUnmarshallerContext>;
  
  TPatchSourceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchSource, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchSourceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchSource;
    class function JsonInstance: IPatchSourceUnmarshaller; static;
  end;
  
implementation

{ TPatchSourceUnmarshaller }

function TPatchSourceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchSource;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchSource;
begin
  UnmarshalledObject := TPatchSource.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Configuration', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Configuration := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Products', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Products := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchSourceUnmarshaller.Create;
begin
  FJsonInstance := TPatchSourceUnmarshaller.Create;
end;

class function TPatchSourceUnmarshaller.JsonInstance: IPatchSourceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
