unit AWS.SSM.Transform.PatchFilterUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchFilter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchFilterUnmarshaller = IUnmarshaller<TPatchFilter, TJsonUnmarshallerContext>;
  
  TPatchFilterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchFilter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchFilterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchFilter;
    class function JsonInstance: IPatchFilterUnmarshaller; static;
  end;
  
implementation

{ TPatchFilterUnmarshaller }

function TPatchFilterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchFilter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchFilter;
begin
  UnmarshalledObject := TPatchFilter.Create;
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

class constructor TPatchFilterUnmarshaller.Create;
begin
  FJsonInstance := TPatchFilterUnmarshaller.Create;
end;

class function TPatchFilterUnmarshaller.JsonInstance: IPatchFilterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
