unit AWS.Rekognition.Transform.DatasetMetadataUnmarshaller;

interface

uses
  AWS.Rekognition.Model.DatasetMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDatasetMetadataUnmarshaller = IUnmarshaller<TDatasetMetadata, TJsonUnmarshallerContext>;
  
  TDatasetMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDatasetMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDatasetMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetMetadata;
    class function JsonInstance: IDatasetMetadataUnmarshaller; static;
  end;
  
implementation

{ TDatasetMetadataUnmarshaller }

function TDatasetMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDatasetMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDatasetMetadata;
begin
  UnmarshalledObject := TDatasetMetadata.Create;
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
      if AContext.TestExpression('DatasetArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DatasetArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DatasetType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DatasetType := Unmarshaller.Unmarshall(AContext);
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

class constructor TDatasetMetadataUnmarshaller.Create;
begin
  FJsonInstance := TDatasetMetadataUnmarshaller.Create;
end;

class function TDatasetMetadataUnmarshaller.JsonInstance: IDatasetMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
