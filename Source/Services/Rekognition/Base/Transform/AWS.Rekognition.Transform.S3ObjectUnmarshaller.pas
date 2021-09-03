unit AWS.Rekognition.Transform.S3ObjectUnmarshaller;

interface

uses
  AWS.Rekognition.Model.S3Object, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3ObjectUnmarshaller = IUnmarshaller<TS3Object, TJsonUnmarshallerContext>;
  
  TS3ObjectUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Object, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IS3ObjectUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TS3Object;
    class function JsonInstance: IS3ObjectUnmarshaller; static;
  end;
  
implementation

{ TS3ObjectUnmarshaller }

function TS3ObjectUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TS3Object;
var
  TargetDepth: Integer;
  UnmarshalledObject: TS3Object;
begin
  UnmarshalledObject := TS3Object.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Bucket', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Bucket := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
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

class constructor TS3ObjectUnmarshaller.Create;
begin
  FJsonInstance := TS3ObjectUnmarshaller.Create;
end;

class function TS3ObjectUnmarshaller.JsonInstance: IS3ObjectUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
