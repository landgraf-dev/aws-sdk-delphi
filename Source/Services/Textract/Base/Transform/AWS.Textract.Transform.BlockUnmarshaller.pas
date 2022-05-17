unit AWS.Textract.Transform.BlockUnmarshaller;

interface

uses
  AWS.Textract.Model.Block, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.GeometryUnmarshaller, 
  AWS.Textract.Transform.RelationshipUnmarshaller, 
  AWS.Textract.Model.Relationship;

type
  IBlockUnmarshaller = IUnmarshaller<TBlock, TJsonUnmarshallerContext>;
  
  TBlockUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBlock, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IBlockUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TBlock;
    class function JsonInstance: IBlockUnmarshaller; static;
  end;
  
implementation

{ TBlockUnmarshaller }

function TBlockUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TBlock;
var
  TargetDepth: Integer;
  UnmarshalledObject: TBlock;
begin
  UnmarshalledObject := TBlock.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BlockType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.BlockType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ColumnIndex', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ColumnIndex := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ColumnSpan', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ColumnSpan := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EntityTypes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.EntityTypes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Geometry', TargetDepth) then
      begin
        var Unmarshaller := TGeometryUnmarshaller.JsonInstance;
        UnmarshalledObject.Geometry := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Page', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Page := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Relationships', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TRelationship, IRelationshipUnmarshaller>.JsonNew(TRelationshipUnmarshaller.JsonInstance);
        UnmarshalledObject.Relationships := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RowIndex', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RowIndex := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RowSpan', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RowSpan := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SelectionStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SelectionStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TextType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TextType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TBlockUnmarshaller.Create;
begin
  FJsonInstance := TBlockUnmarshaller.Create;
end;

class function TBlockUnmarshaller.JsonInstance: IBlockUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
