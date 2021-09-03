unit AWS.Rekognition.Transform.ParentUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Parent, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IParentUnmarshaller = IUnmarshaller<TParent, TJsonUnmarshallerContext>;
  
  TParentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParent, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParent;
    class function JsonInstance: IParentUnmarshaller; static;
  end;
  
implementation

{ TParentUnmarshaller }

function TParentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParent;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParent;
begin
  UnmarshalledObject := TParent.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParentUnmarshaller.Create;
begin
  FJsonInstance := TParentUnmarshaller.Create;
end;

class function TParentUnmarshaller.JsonInstance: IParentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
