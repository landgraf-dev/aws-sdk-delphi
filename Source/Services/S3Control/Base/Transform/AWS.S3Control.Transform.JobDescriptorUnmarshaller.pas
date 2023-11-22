unit AWS.S3Control.Transform.JobDescriptorUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobDescriptor, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.JobFailureUnmarshaller, 
  AWS.S3Control.Model.JobFailure, 
  AWS.S3Control.Transform.JobManifestUnmarshaller, 
  AWS.S3Control.Transform.JobOperationUnmarshaller, 
  AWS.S3Control.Transform.JobProgressSummaryUnmarshaller, 
  AWS.S3Control.Transform.JobReportUnmarshaller;

type
  IJobDescriptorUnmarshaller = IUnmarshaller<TJobDescriptor, TXmlUnmarshallerContext>;
  
  TJobDescriptorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobDescriptor, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobDescriptorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobDescriptor;
    class function Instance: IJobDescriptorUnmarshaller; static;
  end;
  
implementation

{ TJobDescriptorUnmarshaller }

function TJobDescriptorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobDescriptor;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobDescriptor;
begin
  UnmarshalledObject := TJobDescriptor.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ConfirmationRequired', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.ConfirmationRequired := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('CreationTime', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.CreationTime := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Description', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('FailureReasons/member', TargetDepth) then
        begin
          var Unmarshaller := TJobFailureUnmarshaller.Instance;
          UnmarshalledObject.FailureReasons.Add(Unmarshaller.Unmarshall(AContext));
          Continue;
        end;
        if AContext.TestExpression('JobArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.JobArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('JobId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.JobId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Manifest', TargetDepth) then
        begin
          var Unmarshaller := TJobManifestUnmarshaller.Instance;
          UnmarshalledObject.Manifest := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Operation', TargetDepth) then
        begin
          var Unmarshaller := TJobOperationUnmarshaller.Instance;
          UnmarshalledObject.Operation := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Priority', TargetDepth) then
        begin
          var Unmarshaller := TIntegerUnmarshaller.Instance;
          UnmarshalledObject.Priority := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ProgressSummary', TargetDepth) then
        begin
          var Unmarshaller := TJobProgressSummaryUnmarshaller.Instance;
          UnmarshalledObject.ProgressSummary := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Report', TargetDepth) then
        begin
          var Unmarshaller := TJobReportUnmarshaller.Instance;
          UnmarshalledObject.Report := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('RoleArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.RoleArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('StatusUpdateReason', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.StatusUpdateReason := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SuspendedCause', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SuspendedCause := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SuspendedDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.SuspendedDate := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TerminationDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.TerminationDate := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobDescriptorUnmarshaller.Create;
begin
  FInstance := TJobDescriptorUnmarshaller.Create;
end;

class function TJobDescriptorUnmarshaller.Instance: IJobDescriptorUnmarshaller;
begin
  Result := FInstance;
end;

end.
