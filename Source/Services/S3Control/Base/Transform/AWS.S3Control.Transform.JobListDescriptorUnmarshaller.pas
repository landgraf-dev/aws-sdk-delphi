unit AWS.S3Control.Transform.JobListDescriptorUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobListDescriptor, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.JobProgressSummaryUnmarshaller;

type
  IJobListDescriptorUnmarshaller = IUnmarshaller<TJobListDescriptor, TXmlUnmarshallerContext>;
  
  TJobListDescriptorUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobListDescriptor, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobListDescriptorUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobListDescriptor;
    class function Instance: IJobListDescriptorUnmarshaller; static;
  end;
  
implementation

{ TJobListDescriptorUnmarshaller }

function TJobListDescriptorUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobListDescriptor;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobListDescriptor;
begin
  UnmarshalledObject := TJobListDescriptor.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
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
        if AContext.TestExpression('JobId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.JobId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Operation', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
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
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TJobListDescriptorUnmarshaller.Create;
begin
  FInstance := TJobListDescriptorUnmarshaller.Create;
end;

class function TJobListDescriptorUnmarshaller.Instance: IJobListDescriptorUnmarshaller;
begin
  Result := FInstance;
end;

end.
