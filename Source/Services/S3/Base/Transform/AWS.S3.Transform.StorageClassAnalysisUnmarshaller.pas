unit AWS.S3.Transform.StorageClassAnalysisUnmarshaller;

interface

uses
  AWS.S3.Model.StorageClassAnalysis, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.StorageClassAnalysisDataExportUnmarshaller;

type
  IStorageClassAnalysisUnmarshaller = IUnmarshaller<TStorageClassAnalysis, TXmlUnmarshallerContext>;
  
  TStorageClassAnalysisUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageClassAnalysis, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageClassAnalysisUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageClassAnalysis;
    class function Instance: IStorageClassAnalysisUnmarshaller; static;
  end;
  
implementation

{ TStorageClassAnalysisUnmarshaller }

function TStorageClassAnalysisUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageClassAnalysis;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageClassAnalysis;
begin
  UnmarshalledObject := TStorageClassAnalysis.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('DataExport', TargetDepth) then
        begin
          var Unmarshaller := TStorageClassAnalysisDataExportUnmarshaller.Instance;
          UnmarshalledObject.DataExport := Unmarshaller.Unmarshall(AContext);
          Continue;
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

class constructor TStorageClassAnalysisUnmarshaller.Create;
begin
  FInstance := TStorageClassAnalysisUnmarshaller.Create;
end;

class function TStorageClassAnalysisUnmarshaller.Instance: IStorageClassAnalysisUnmarshaller;
begin
  Result := FInstance;
end;

end.
