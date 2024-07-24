unit AWS.SSM.Transform.OpsItemRelatedItemSummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsItemRelatedItemSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.OpsItemIdentityUnmarshaller;

type
  IOpsItemRelatedItemSummaryUnmarshaller = IUnmarshaller<TOpsItemRelatedItemSummary, TJsonUnmarshallerContext>;
  
  TOpsItemRelatedItemSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsItemRelatedItemSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsItemRelatedItemSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemRelatedItemSummary;
    class function JsonInstance: IOpsItemRelatedItemSummaryUnmarshaller; static;
  end;
  
implementation

{ TOpsItemRelatedItemSummaryUnmarshaller }

function TOpsItemRelatedItemSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemRelatedItemSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsItemRelatedItemSummary;
begin
  UnmarshalledObject := TOpsItemRelatedItemSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedBy', TargetDepth) then
      begin
        var Unmarshaller := TOpsItemIdentityUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedBy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedBy', TargetDepth) then
      begin
        var Unmarshaller := TOpsItemIdentityUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedBy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemRelatedItemSummaryUnmarshaller.Create;
begin
  FJsonInstance := TOpsItemRelatedItemSummaryUnmarshaller.Create;
end;

class function TOpsItemRelatedItemSummaryUnmarshaller.JsonInstance: IOpsItemRelatedItemSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
