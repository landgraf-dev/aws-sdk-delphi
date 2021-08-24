unit AWS.SESv2.Transform.DeliverabilityTestReportUnmarshaller;

interface

uses
  AWS.SESv2.Model.DeliverabilityTestReport, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDeliverabilityTestReportUnmarshaller = IUnmarshaller<TDeliverabilityTestReport, TJsonUnmarshallerContext>;
  
  TDeliverabilityTestReportUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDeliverabilityTestReport, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDeliverabilityTestReportUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDeliverabilityTestReport;
    class function JsonInstance: IDeliverabilityTestReportUnmarshaller; static;
  end;
  
implementation

{ TDeliverabilityTestReportUnmarshaller }

function TDeliverabilityTestReportUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDeliverabilityTestReport;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDeliverabilityTestReport;
begin
  UnmarshalledObject := TDeliverabilityTestReport.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreateDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreateDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeliverabilityTestStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DeliverabilityTestStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FromEmailAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FromEmailAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReportId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ReportId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReportName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ReportName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Subject', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Subject := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDeliverabilityTestReportUnmarshaller.Create;
begin
  FJsonInstance := TDeliverabilityTestReportUnmarshaller.Create;
end;

class function TDeliverabilityTestReportUnmarshaller.JsonInstance: IDeliverabilityTestReportUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
