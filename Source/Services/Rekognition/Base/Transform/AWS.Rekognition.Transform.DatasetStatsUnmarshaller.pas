unit AWS.Rekognition.Transform.DatasetStatsUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetStats, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDatasetStatsUnmarshaller = IUnmarshaller<TDatasetStats, TJsonUnmarshallerContext>;
  
  TDatasetStatsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDatasetStats, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDatasetStatsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetStats;
    class function JsonInstance: IDatasetStatsUnmarshaller; static;
  end;
  
implementation

{ TDatasetStatsUnmarshaller }

function TDatasetStatsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetStats;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDatasetStats;
begin
  UnmarshalledObject := TDatasetStats.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ErrorEntries', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ErrorEntries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LabeledEntries', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.LabeledEntries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TotalEntries', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TotalEntries := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TotalLabels', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TotalLabels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDatasetStatsUnmarshaller.Create;
begin
  FJsonInstance := TDatasetStatsUnmarshaller.Create;
end;

class function TDatasetStatsUnmarshaller.JsonInstance: IDatasetStatsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
