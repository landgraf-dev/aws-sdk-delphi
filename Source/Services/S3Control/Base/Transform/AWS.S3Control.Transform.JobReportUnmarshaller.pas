unit AWS.S3Control.Transform.JobReportUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobReport, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobReportUnmarshaller = IUnmarshaller<TJobReport, TXmlUnmarshallerContext>;
  
  TJobReportUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobReport, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobReportUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobReport;
    class function Instance: IJobReportUnmarshaller; static;
  end;
  
implementation

{ TJobReportUnmarshaller }

function TJobReportUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobReport;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobReport;
begin
  UnmarshalledObject := TJobReport.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Bucket := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Enabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.Enabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Format', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Format := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ReportScope', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ReportScope := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobReportUnmarshaller.Create;
begin
  FInstance := TJobReportUnmarshaller.Create;
end;

class function TJobReportUnmarshaller.Instance: IJobReportUnmarshaller;
begin
  Result := FInstance;
end;

end.
