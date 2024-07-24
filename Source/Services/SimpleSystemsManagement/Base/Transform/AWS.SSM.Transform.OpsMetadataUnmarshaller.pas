unit AWS.SSM.Transform.OpsMetadataUnmarshaller;

interface

uses
  AWS.SSM.Model.OpsMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IOpsMetadataUnmarshaller = IUnmarshaller<TOpsMetadata, TJsonUnmarshallerContext>;
  
  TOpsMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TOpsMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IOpsMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TOpsMetadata;
    class function JsonInstance: IOpsMetadataUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataUnmarshaller }

function TOpsMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TOpsMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TOpsMetadata;
begin
  UnmarshalledObject := TOpsMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreationDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedUser', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedUser := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OpsMetadataArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OpsMetadataArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ResourceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ResourceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TOpsMetadataUnmarshaller.Create;
begin
  FJsonInstance := TOpsMetadataUnmarshaller.Create;
end;

class function TOpsMetadataUnmarshaller.JsonInstance: IOpsMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
