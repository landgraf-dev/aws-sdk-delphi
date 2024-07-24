unit AWS.SSM.Transform.AssociationOverviewUnmarshaller;

interface

uses
  AWS.SSM.Model.AssociationOverview, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAssociationOverviewUnmarshaller = IUnmarshaller<TAssociationOverview, TJsonUnmarshallerContext>;
  
  TAssociationOverviewUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAssociationOverview, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAssociationOverviewUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationOverview;
    class function JsonInstance: IAssociationOverviewUnmarshaller; static;
  end;
  
implementation

{ TAssociationOverviewUnmarshaller }

function TAssociationOverviewUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAssociationOverview;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAssociationOverview;
begin
  UnmarshalledObject := TAssociationOverview.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AssociationStatusAggregatedCount', TargetDepth) then
      begin
        var Unmarshaller := TJsonDictionaryUnmarshaller<string, Integer, IJsonStringUnmarshaller, IJsonIntegerUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TIntegerUnmarshaller.JsonInstance);
        UnmarshalledObject.AssociationStatusAggregatedCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DetailedStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetailedStatus := Unmarshaller.Unmarshall(AContext);
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

class constructor TAssociationOverviewUnmarshaller.Create;
begin
  FJsonInstance := TAssociationOverviewUnmarshaller.Create;
end;

class function TAssociationOverviewUnmarshaller.JsonInstance: IAssociationOverviewUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
