unit AWS.SSM.Transform.InstanceAssociationStatusInfoUnmarshaller;

interface

uses
  AWS.SSM.Model.InstanceAssociationStatusInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.InstanceAssociationOutputUrlUnmarshaller;

type
  IInstanceAssociationStatusInfoUnmarshaller = IUnmarshaller<TInstanceAssociationStatusInfo, TJsonUnmarshallerContext>;
  
  TInstanceAssociationStatusInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstanceAssociationStatusInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstanceAssociationStatusInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociationStatusInfo;
    class function JsonInstance: IInstanceAssociationStatusInfoUnmarshaller; static;
  end;
  
implementation

{ TInstanceAssociationStatusInfoUnmarshaller }

function TInstanceAssociationStatusInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociationStatusInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstanceAssociationStatusInfo;
begin
  UnmarshalledObject := TInstanceAssociationStatusInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AssociationVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AssociationVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DetailedStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetailedStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ErrorCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ErrorCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ExecutionSummary', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ExecutionSummary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('InstanceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.InstanceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputUrl', TargetDepth) then
      begin
        var Unmarshaller := TInstanceAssociationOutputUrlUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInstanceAssociationStatusInfoUnmarshaller.Create;
begin
  FJsonInstance := TInstanceAssociationStatusInfoUnmarshaller.Create;
end;

class function TInstanceAssociationStatusInfoUnmarshaller.JsonInstance: IInstanceAssociationStatusInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
