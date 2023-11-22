unit AWS.S3Control.Transform.ListStorageLensConfigurationEntryUnmarshaller;

interface

uses
  AWS.S3Control.Model.ListStorageLensConfigurationEntry, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IListStorageLensConfigurationEntryUnmarshaller = IUnmarshaller<TListStorageLensConfigurationEntry, TXmlUnmarshallerContext>;
  
  TListStorageLensConfigurationEntryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TListStorageLensConfigurationEntry, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IListStorageLensConfigurationEntryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TListStorageLensConfigurationEntry;
    class function Instance: IListStorageLensConfigurationEntryUnmarshaller; static;
  end;
  
implementation

{ TListStorageLensConfigurationEntryUnmarshaller }

function TListStorageLensConfigurationEntryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TListStorageLensConfigurationEntry;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TListStorageLensConfigurationEntry;
begin
  UnmarshalledObject := TListStorageLensConfigurationEntry.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('HomeRegion', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.HomeRegion := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('IsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StorageLensArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StorageLensArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TListStorageLensConfigurationEntryUnmarshaller.Create;
begin
  FInstance := TListStorageLensConfigurationEntryUnmarshaller.Create;
end;

class function TListStorageLensConfigurationEntryUnmarshaller.Instance: IListStorageLensConfigurationEntryUnmarshaller;
begin
  Result := FInstance;
end;

end.
