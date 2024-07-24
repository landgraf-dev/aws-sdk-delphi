unit AWS.SSM.Transform.PatchStatusUnmarshaller;

interface

uses
  AWS.SSM.Model.PatchStatus, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchStatusUnmarshaller = IUnmarshaller<TPatchStatus, TJsonUnmarshallerContext>;
  
  TPatchStatusUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatchStatus, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchStatusUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatchStatus;
    class function JsonInstance: IPatchStatusUnmarshaller; static;
  end;
  
implementation

{ TPatchStatusUnmarshaller }

function TPatchStatusUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatchStatus;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatchStatus;
begin
  UnmarshalledObject := TPatchStatus.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ApprovalDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ApprovalDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ComplianceLevel', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ComplianceLevel := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DeploymentStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DeploymentStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPatchStatusUnmarshaller.Create;
begin
  FJsonInstance := TPatchStatusUnmarshaller.Create;
end;

class function TPatchStatusUnmarshaller.JsonInstance: IPatchStatusUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
