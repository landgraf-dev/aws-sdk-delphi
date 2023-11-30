unit AWS.S3.Transform.StorageClassAnalysisDataExportUnmarshaller;

interface

uses
  AWS.S3.Model.StorageClassAnalysisDataExport, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.AnalyticsExportDestinationUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IStorageClassAnalysisDataExportUnmarshaller = IUnmarshaller<TStorageClassAnalysisDataExport, TXmlUnmarshallerContext>;
  
  TStorageClassAnalysisDataExportUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageClassAnalysisDataExport, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageClassAnalysisDataExportUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageClassAnalysisDataExport;
    class function Instance: IStorageClassAnalysisDataExportUnmarshaller; static;
  end;
  
implementation

{ TStorageClassAnalysisDataExportUnmarshaller }

function TStorageClassAnalysisDataExportUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageClassAnalysisDataExport;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageClassAnalysisDataExport;
begin
  UnmarshalledObject := TStorageClassAnalysisDataExport.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Destination', TargetDepth) then
        begin
          var Unmarshaller := TAnalyticsExportDestinationUnmarshaller.Instance;
          UnmarshalledObject.Destination := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('OutputSchemaVersion', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.OutputSchemaVersion := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TStorageClassAnalysisDataExportUnmarshaller.Create;
begin
  FInstance := TStorageClassAnalysisDataExportUnmarshaller.Create;
end;

class function TStorageClassAnalysisDataExportUnmarshaller.Instance: IStorageClassAnalysisDataExportUnmarshaller;
begin
  Result := FInstance;
end;

end.
