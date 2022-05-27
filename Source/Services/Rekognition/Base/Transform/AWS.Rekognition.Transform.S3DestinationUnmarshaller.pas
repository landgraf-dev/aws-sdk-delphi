unit AWS.Rekognition.Transform.S3DestinationUnmarshaller;

interface

uses
  AWS.Rekognition.Model.S3Destination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IS3DestinationUnmarshaller = IUnmarshaller<TS3Destination, TJsonUnmarshallerContext>;
  
  TS3DestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3Destination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IS3DestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TS3Destination;
    class function JsonInstance: IS3DestinationUnmarshaller; static;
  end;
  
implementation

{ TS3DestinationUnmarshaller }

function TS3DestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TS3Destination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TS3Destination;
begin
  UnmarshalledObject := TS3Destination.Create;
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
      if AContext.TestExpression('KeyPrefix', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.KeyPrefix := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TS3DestinationUnmarshaller.Create;
begin
  FJsonInstance := TS3DestinationUnmarshaller.Create;
end;

class function TS3DestinationUnmarshaller.JsonInstance: IS3DestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
