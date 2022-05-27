unit AWS.Rekognition.Transform.DatasetLabelDescriptionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetLabelDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.DatasetLabelStatsUnmarshaller;

type
  IDatasetLabelDescriptionUnmarshaller = IUnmarshaller<TDatasetLabelDescription, TJsonUnmarshallerContext>;
  
  TDatasetLabelDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDatasetLabelDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDatasetLabelDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetLabelDescription;
    class function JsonInstance: IDatasetLabelDescriptionUnmarshaller; static;
  end;
  
implementation

{ TDatasetLabelDescriptionUnmarshaller }

function TDatasetLabelDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetLabelDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDatasetLabelDescription;
begin
  UnmarshalledObject := TDatasetLabelDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LabelName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LabelName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LabelStats', TargetDepth) then
      begin
        var Unmarshaller := TDatasetLabelStatsUnmarshaller.JsonInstance;
        UnmarshalledObject.LabelStats := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDatasetLabelDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TDatasetLabelDescriptionUnmarshaller.Create;
end;

class function TDatasetLabelDescriptionUnmarshaller.JsonInstance: IDatasetLabelDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
