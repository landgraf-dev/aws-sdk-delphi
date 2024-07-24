unit AWS.SSM.Transform.InstanceAssociationOutputLocationUnmarshaller;

interface

uses
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.S3OutputLocationUnmarshaller;

type
  IInstanceAssociationOutputLocationUnmarshaller = IUnmarshaller<TInstanceAssociationOutputLocation, TJsonUnmarshallerContext>;
  
  TInstanceAssociationOutputLocationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInstanceAssociationOutputLocation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInstanceAssociationOutputLocationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociationOutputLocation;
    class function JsonInstance: IInstanceAssociationOutputLocationUnmarshaller; static;
  end;
  
implementation

{ TInstanceAssociationOutputLocationUnmarshaller }

function TInstanceAssociationOutputLocationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInstanceAssociationOutputLocation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInstanceAssociationOutputLocation;
begin
  UnmarshalledObject := TInstanceAssociationOutputLocation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('S3Location', TargetDepth) then
      begin
        var Unmarshaller := TS3OutputLocationUnmarshaller.JsonInstance;
        UnmarshalledObject.S3Location := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInstanceAssociationOutputLocationUnmarshaller.Create;
begin
  FJsonInstance := TInstanceAssociationOutputLocationUnmarshaller.Create;
end;

class function TInstanceAssociationOutputLocationUnmarshaller.JsonInstance: IInstanceAssociationOutputLocationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
