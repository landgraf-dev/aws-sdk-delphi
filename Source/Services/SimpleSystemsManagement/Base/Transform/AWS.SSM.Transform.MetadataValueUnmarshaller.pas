unit AWS.SSM.Transform.MetadataValueUnmarshaller;

interface

uses
  AWS.SSM.Model.MetadataValue, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMetadataValueUnmarshaller = IUnmarshaller<TMetadataValue, TJsonUnmarshallerContext>;
  
  TMetadataValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMetadataValue, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMetadataValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMetadataValue;
    class function JsonInstance: IMetadataValueUnmarshaller; static;
  end;
  
implementation

{ TMetadataValueUnmarshaller }

function TMetadataValueUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMetadataValue;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMetadataValue;
begin
  UnmarshalledObject := TMetadataValue.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMetadataValueUnmarshaller.Create;
begin
  FJsonInstance := TMetadataValueUnmarshaller.Create;
end;

class function TMetadataValueUnmarshaller.JsonInstance: IMetadataValueUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
