unit AWS.S3Control.Transform.JobFailureUnmarshaller;

interface

uses
  AWS.S3Control.Model.JobFailure, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IJobFailureUnmarshaller = IUnmarshaller<TJobFailure, TXmlUnmarshallerContext>;
  
  TJobFailureUnmarshaller = class(TInterfacedObject, IUnmarshaller<TJobFailure, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IJobFailureUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TJobFailure;
    class function Instance: IJobFailureUnmarshaller; static;
  end;
  
implementation

{ TJobFailureUnmarshaller }

function TJobFailureUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TJobFailure;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TJobFailure;
begin
  UnmarshalledObject := TJobFailure.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('FailureCode', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FailureCode := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('FailureReason', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.FailureReason := Unmarshaller.Unmarshall(AContext);
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

class constructor TJobFailureUnmarshaller.Create;
begin
  FInstance := TJobFailureUnmarshaller.Create;
end;

class function TJobFailureUnmarshaller.Instance: IJobFailureUnmarshaller;
begin
  Result := FInstance;
end;

end.
