unit AWS.Textract.Transform.LineItemGroupUnmarshaller;

interface

uses
  AWS.Textract.Model.LineItemGroup, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.LineItemFieldsUnmarshaller, 
  AWS.Textract.Model.LineItemFields;

type
  ILineItemGroupUnmarshaller = IUnmarshaller<TLineItemGroup, TJsonUnmarshallerContext>;
  
  TLineItemGroupUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLineItemGroup, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILineItemGroupUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLineItemGroup;
    class function JsonInstance: ILineItemGroupUnmarshaller; static;
  end;
  
implementation

{ TLineItemGroupUnmarshaller }

function TLineItemGroupUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLineItemGroup;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLineItemGroup;
begin
  UnmarshalledObject := TLineItemGroup.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LineItemGroupIndex', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.LineItemGroupIndex := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LineItems', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TLineItemFields, ILineItemFieldsUnmarshaller>.JsonNew(TLineItemFieldsUnmarshaller.JsonInstance);
        UnmarshalledObject.LineItems := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLineItemGroupUnmarshaller.Create;
begin
  FJsonInstance := TLineItemGroupUnmarshaller.Create;
end;

class function TLineItemGroupUnmarshaller.JsonInstance: ILineItemGroupUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
