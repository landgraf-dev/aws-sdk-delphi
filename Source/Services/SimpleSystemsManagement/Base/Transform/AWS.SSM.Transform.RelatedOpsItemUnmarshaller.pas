unit AWS.SSM.Transform.RelatedOpsItemUnmarshaller;

interface

uses
  AWS.SSM.Model.RelatedOpsItem, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRelatedOpsItemUnmarshaller = IUnmarshaller<TRelatedOpsItem, TJsonUnmarshallerContext>;
  
  TRelatedOpsItemUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRelatedOpsItem, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRelatedOpsItemUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRelatedOpsItem;
    class function JsonInstance: IRelatedOpsItemUnmarshaller; static;
  end;
  
implementation

{ TRelatedOpsItemUnmarshaller }

function TRelatedOpsItemUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRelatedOpsItem;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRelatedOpsItem;
begin
  UnmarshalledObject := TRelatedOpsItem.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TRelatedOpsItemUnmarshaller.Create;
begin
  FJsonInstance := TRelatedOpsItemUnmarshaller.Create;
end;

class function TRelatedOpsItemUnmarshaller.JsonInstance: IRelatedOpsItemUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
