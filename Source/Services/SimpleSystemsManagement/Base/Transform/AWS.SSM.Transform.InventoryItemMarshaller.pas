unit AWS.SSM.Transform.InventoryItemMarshaller;

interface

uses
  AWS.SSM.Model.InventoryItem, 
  AWS.Transform.RequestMarshaller;

type
  IInventoryItemMarshaller = IRequestMarshaller<TInventoryItem, TJsonMarshallerContext>;
  
  TInventoryItemMarshaller = class(TInterfacedObject, IRequestMarshaller<TInventoryItem, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInventoryItemMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInventoryItem; Context: TJsonMarshallerContext);
    class function Instance: IInventoryItemMarshaller; static;
  end;
  
implementation

{ TInventoryItemMarshaller }

procedure TInventoryItemMarshaller.Marshall(ARequestObject: TInventoryItem; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetCaptureTime then
  begin
    Context.Writer.WriteName('CaptureTime');
    Context.Writer.WriteString(ARequestObject.CaptureTime);
  end;
  if ARequestObject.IsSetContent then
  begin
    Context.Writer.WriteName('Content');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectContentListValue in ARequestObject.Content do
    begin
      Context.Writer.WriteBeginObject;
      for var ARequestObjectContentListValueKvp in ARequestObjectContentListValue do
      begin
        Context.Writer.WriteName(ARequestObjectContentListValueKvp.Key);
        var ARequestObjectContentListValueValue := ARequestObjectContentListValueKvp.Value;
        Context.Writer.WriteString(ARequestObjectContentListValueValue);
      end;
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetContentHash then
  begin
    Context.Writer.WriteName('ContentHash');
    Context.Writer.WriteString(ARequestObject.ContentHash);
  end;
  if ARequestObject.IsSetContext then
  begin
    Context.Writer.WriteName('Context');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectContextKvp in ARequestObject.Context do
    begin
      Context.Writer.WriteName(ARequestObjectContextKvp.Key);
      var ARequestObjectContextValue := ARequestObjectContextKvp.Value;
      Context.Writer.WriteString(ARequestObjectContextValue);
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSchemaVersion then
  begin
    Context.Writer.WriteName('SchemaVersion');
    Context.Writer.WriteString(ARequestObject.SchemaVersion);
  end;
  if ARequestObject.IsSetTypeName then
  begin
    Context.Writer.WriteName('TypeName');
    Context.Writer.WriteString(ARequestObject.TypeName);
  end;
end;

class constructor TInventoryItemMarshaller.Create;
begin
  FInstance := TInventoryItemMarshaller.Create;
end;

class function TInventoryItemMarshaller.Instance: IInventoryItemMarshaller;
begin
  Result := FInstance;
end;

end.
