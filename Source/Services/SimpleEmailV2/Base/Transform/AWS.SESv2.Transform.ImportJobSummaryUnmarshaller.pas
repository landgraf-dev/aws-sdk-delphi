unit AWS.SESv2.Transform.ImportJobSummaryUnmarshaller;

interface

uses
  AWS.SESv2.Model.ImportJobSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.ImportDestinationUnmarshaller;

type
  IImportJobSummaryUnmarshaller = IUnmarshaller<TImportJobSummary, TJsonUnmarshallerContext>;
  
  TImportJobSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TImportJobSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IImportJobSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TImportJobSummary;
    class function JsonInstance: IImportJobSummaryUnmarshaller; static;
  end;
  
implementation

{ TImportJobSummaryUnmarshaller }

function TImportJobSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TImportJobSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TImportJobSummary;
begin
  UnmarshalledObject := TImportJobSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ImportDestination', TargetDepth) then
      begin
        var Unmarshaller := TImportDestinationUnmarshaller.JsonInstance;
        UnmarshalledObject.ImportDestination := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.JobId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.JobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TImportJobSummaryUnmarshaller.Create;
begin
  FJsonInstance := TImportJobSummaryUnmarshaller.Create;
end;

class function TImportJobSummaryUnmarshaller.JsonInstance: IImportJobSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
