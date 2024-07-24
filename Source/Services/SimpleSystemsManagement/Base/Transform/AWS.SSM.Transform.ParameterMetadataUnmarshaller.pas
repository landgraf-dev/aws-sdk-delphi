unit AWS.SSM.Transform.ParameterMetadataUnmarshaller;

interface

uses
  AWS.SSM.Model.ParameterMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.ParameterInlinePolicyUnmarshaller, 
  AWS.SSM.Model.ParameterInlinePolicy;

type
  IParameterMetadataUnmarshaller = IUnmarshaller<TParameterMetadata, TJsonUnmarshallerContext>;
  
  TParameterMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TParameterMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IParameterMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TParameterMetadata;
    class function JsonInstance: IParameterMetadataUnmarshaller; static;
  end;
  
implementation

{ TParameterMetadataUnmarshaller }

function TParameterMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TParameterMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TParameterMetadata;
begin
  UnmarshalledObject := TParameterMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AllowedPattern', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.AllowedPattern := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DataType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KeyId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.KeyId := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Policies', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TParameterInlinePolicy, IParameterInlinePolicyUnmarshaller>.JsonNew(TParameterInlinePolicyUnmarshaller.JsonInstance);
        UnmarshalledObject.Policies := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tier', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Tier := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TParameterMetadataUnmarshaller.Create;
begin
  FJsonInstance := TParameterMetadataUnmarshaller.Create;
end;

class function TParameterMetadataUnmarshaller.JsonInstance: IParameterMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
