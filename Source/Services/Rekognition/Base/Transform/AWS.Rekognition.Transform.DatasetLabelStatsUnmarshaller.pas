unit AWS.Rekognition.Transform.DatasetLabelStatsUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetLabelStats, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDatasetLabelStatsUnmarshaller = IUnmarshaller<TDatasetLabelStats, TJsonUnmarshallerContext>;
  
  TDatasetLabelStatsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDatasetLabelStats, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDatasetLabelStatsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetLabelStats;
    class function JsonInstance: IDatasetLabelStatsUnmarshaller; static;
  end;
  
implementation

{ TDatasetLabelStatsUnmarshaller }

function TDatasetLabelStatsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetLabelStats;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDatasetLabelStats;
begin
  UnmarshalledObject := TDatasetLabelStats.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BoundingBoxCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.BoundingBoxCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EntryCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.EntryCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDatasetLabelStatsUnmarshaller.Create;
begin
  FJsonInstance := TDatasetLabelStatsUnmarshaller.Create;
end;

class function TDatasetLabelStatsUnmarshaller.JsonInstance: IDatasetLabelStatsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
