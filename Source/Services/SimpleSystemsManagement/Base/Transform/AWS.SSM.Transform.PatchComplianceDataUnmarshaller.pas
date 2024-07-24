unit AWS.SSM.Transform.PatchComplianceDataUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchComplianceData, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchComplianceDataUnmarshaller = IUnmarshaller<TPatchComplianceData, TJsonUnmarshallerContext>;
  
  TPatchComplianceDataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchComplianceData, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchComplianceDataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchComplianceData;
    class function JsonInstance: IPatchComplianceDataUnmarshaller; static;
  end;
  
implementation

{ TPatchComplianceDataUnmarshaller }

function TPatchComplianceDataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchComplianceData;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchComplianceData;
begin
  UnmarshalledObject := TPatchComplianceData.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CVEIds', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CVEIds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Classification', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Classification := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstalledTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.InstalledTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KBId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.KBId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Severity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Severity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('State', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.State := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Title', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Title := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchComplianceDataUnmarshaller.Create;
begin
  FJsonInstance := TPatchComplianceDataUnmarshaller.Create;
end;

class function TPatchComplianceDataUnmarshaller.JsonInstance: IPatchComplianceDataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
