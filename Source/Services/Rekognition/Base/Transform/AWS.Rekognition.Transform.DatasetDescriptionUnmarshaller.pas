unit AWS.Rekognition.Transform.DatasetDescriptionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.DatasetStatsUnmarshaller;

type
  IDatasetDescriptionUnmarshaller = IUnmarshaller<TDatasetDescription, TJsonUnmarshallerContext>;
  
  TDatasetDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDatasetDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDatasetDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetDescription;
    class function JsonInstance: IDatasetDescriptionUnmarshaller; static;
  end;
  
implementation

{ TDatasetDescriptionUnmarshaller }

function TDatasetDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDatasetDescription;
begin
  UnmarshalledObject := TDatasetDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreationTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DatasetStats', TargetDepth) then
      begin
        var Unmarshaller := TDatasetStatsUnmarshaller.JsonInstance;
        UnmarshalledObject.DatasetStats := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdatedTimestamp', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdatedTimestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusMessage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusMessage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusMessageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusMessageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDatasetDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TDatasetDescriptionUnmarshaller.Create;
end;

class function TDatasetDescriptionUnmarshaller.JsonInstance: IDatasetDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
