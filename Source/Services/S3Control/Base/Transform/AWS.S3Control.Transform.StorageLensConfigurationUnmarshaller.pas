unit AWS.S3Control.Transform.StorageLensConfigurationUnmarshaller;

interface

uses
  AWS.S3Control.Model.StorageLensConfiguration, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.AccountLevelUnmarshaller, 
  AWS.S3Control.Transform.StorageLensAwsOrgUnmarshaller, 
  AWS.S3Control.Transform.StorageLensDataExportUnmarshaller, 
  AWS.S3Control.Transform.ExcludeUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.IncludeUnmarshaller;

type
  IStorageLensConfigurationUnmarshaller = IUnmarshaller<TStorageLensConfiguration, TXmlUnmarshallerContext>;
  
  TStorageLensConfigurationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageLensConfiguration, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageLensConfigurationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensConfiguration;
    class function Instance: IStorageLensConfigurationUnmarshaller; static;
  end;
  
implementation

{ TStorageLensConfigurationUnmarshaller }

function TStorageLensConfigurationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensConfiguration;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageLensConfiguration;
begin
  UnmarshalledObject := TStorageLensConfiguration.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccountLevel', TargetDepth) then
        begin
          var Unmarshaller := TAccountLevelUnmarshaller.Instance;
          UnmarshalledObject.AccountLevel := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('AwsOrg', TargetDepth) then
        begin
          var Unmarshaller := TStorageLensAwsOrgUnmarshaller.Instance;
          UnmarshalledObject.AwsOrg := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DataExport', TargetDepth) then
        begin
          var Unmarshaller := TStorageLensDataExportUnmarshaller.Instance;
          UnmarshalledObject.DataExport := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Exclude', TargetDepth) then
        begin
          var Unmarshaller := TExcludeUnmarshaller.Instance;
          UnmarshalledObject.Exclude := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Id', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Include', TargetDepth) then
        begin
          var Unmarshaller := TIncludeUnmarshaller.Instance;
          UnmarshalledObject.Include := Unmarshaller.Unmarshall(AContext);
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

class constructor TStorageLensConfigurationUnmarshaller.Create;
begin
  FInstance := TStorageLensConfigurationUnmarshaller.Create;
end;

class function TStorageLensConfigurationUnmarshaller.Instance: IStorageLensConfigurationUnmarshaller;
begin
  Result := FInstance;
end;

end.
