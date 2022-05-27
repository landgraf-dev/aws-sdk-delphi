unit AWS.Textract.Transform.NormalizedValueUnmarshaller;

interface

uses
  AWS.Textract.Model.NormalizedValue, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  INormalizedValueUnmarshaller = IUnmarshaller<TNormalizedValue, TJsonUnmarshallerContext>;
  
  TNormalizedValueUnmarshaller = class(TInterfacedObject, IUnmarshaller<TNormalizedValue, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: INormalizedValueUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TNormalizedValue;
    class function JsonInstance: INormalizedValueUnmarshaller; static;
  end;
  
implementation

{ TNormalizedValueUnmarshaller }

function TNormalizedValueUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TNormalizedValue;
var
  TargetDepth: Integer;
  UnmarshalledObject: TNormalizedValue;
begin
  UnmarshalledObject := TNormalizedValue.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ValueType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ValueType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TNormalizedValueUnmarshaller.Create;
begin
  FJsonInstance := TNormalizedValueUnmarshaller.Create;
end;

class function TNormalizedValueUnmarshaller.JsonInstance: INormalizedValueUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
