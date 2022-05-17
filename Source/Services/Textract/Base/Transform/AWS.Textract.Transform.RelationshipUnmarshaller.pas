unit AWS.Textract.Transform.RelationshipUnmarshaller;

interface

uses
  AWS.Textract.Model.Relationship, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRelationshipUnmarshaller = IUnmarshaller<TRelationship, TJsonUnmarshallerContext>;
  
  TRelationshipUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRelationship, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRelationshipUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRelationship;
    class function JsonInstance: IRelationshipUnmarshaller; static;
  end;
  
implementation

{ TRelationshipUnmarshaller }

function TRelationshipUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRelationship;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRelationship;
begin
  UnmarshalledObject := TRelationship.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Ids', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Ids := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
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

class constructor TRelationshipUnmarshaller.Create;
begin
  FJsonInstance := TRelationshipUnmarshaller.Create;
end;

class function TRelationshipUnmarshaller.JsonInstance: IRelationshipUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
