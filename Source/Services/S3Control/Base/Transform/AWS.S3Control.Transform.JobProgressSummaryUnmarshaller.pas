unit AWS.S3Control.Transform.JobProgressSummaryUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobProgressSummary, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobProgressSummaryUnmarshaller = IUnmarshaller<TJobProgressSummary, TXmlUnmarshallerContext>;
  
  TJobProgressSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobProgressSummary, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobProgressSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobProgressSummary;
    class function Instance: IJobProgressSummaryUnmarshaller; static;
  end;
  
implementation

{ TJobProgressSummaryUnmarshaller }

function TJobProgressSummaryUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobProgressSummary;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobProgressSummary;
begin
  UnmarshalledObject := TJobProgressSummary.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('NumberOfTasksFailed', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.NumberOfTasksFailed := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('NumberOfTasksSucceeded', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.NumberOfTasksSucceeded := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TotalNumberOfTasks', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.TotalNumberOfTasks := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobProgressSummaryUnmarshaller.Create;
begin
  FInstance := TJobProgressSummaryUnmarshaller.Create;
end;

class function TJobProgressSummaryUnmarshaller.Instance: IJobProgressSummaryUnmarshaller;
begin
  Result := FInstance;
end;

end.
