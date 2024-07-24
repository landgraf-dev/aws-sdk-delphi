unit AWS.SSM.Transform.OpsItemEventSummaryUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsItemEventSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.OpsItemIdentityUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsItemEventSummaryUnmarshaller = IUnmarshaller<TOpsItemEventSummary, TJsonUnmarshallerContext>;
  
  TOpsItemEventSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsItemEventSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsItemEventSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemEventSummary;
    class function JsonInstance: IOpsItemEventSummaryUnmarshaller; static;
  end;
  
implementation

{ TOpsItemEventSummaryUnmarshaller }

function TOpsItemEventSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsItemEventSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsItemEventSummary;
begin
  UnmarshalledObject := TOpsItemEventSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreatedBy', TargetDepth) then
      begin
        var Unmarshaller := TOpsItemIdentityUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedBy := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Detail', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Detail := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DetailType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetailType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EventId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.EventId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OpsItemId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsItemId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Source', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Source := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsItemEventSummaryUnmarshaller.Create;
begin
  FJsonInstance := TOpsItemEventSummaryUnmarshaller.Create;
end;

class function TOpsItemEventSummaryUnmarshaller.JsonInstance: IOpsItemEventSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
