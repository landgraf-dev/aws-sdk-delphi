unit AWS.LexRuntimeService.Transform.ActiveContextTimeToLiveUnmarshaller;

interface

uses
  AWS.LexRuntimeService.Model.ActiveContextTimeToLive, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IActiveContextTimeToLiveUnmarshaller = IUnmarshaller<TActiveContextTimeToLive, TJsonUnmarshallerContext>;
  
  TActiveContextTimeToLiveUnmarshaller = class(TInterfacedObject, IUnmarshaller<TActiveContextTimeToLive, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IActiveContextTimeToLiveUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TActiveContextTimeToLive;
    class function JsonInstance: IActiveContextTimeToLiveUnmarshaller; static;
  end;
  
implementation

{ TActiveContextTimeToLiveUnmarshaller }

function TActiveContextTimeToLiveUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TActiveContextTimeToLive;
var
  TargetDepth: Integer;
  UnmarshalledObject: TActiveContextTimeToLive;
begin
  UnmarshalledObject := TActiveContextTimeToLive.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('timeToLiveInSeconds', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TimeToLiveInSeconds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('turnsToLive', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.TurnsToLive := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TActiveContextTimeToLiveUnmarshaller.Create;
begin
  FJsonInstance := TActiveContextTimeToLiveUnmarshaller.Create;
end;

class function TActiveContextTimeToLiveUnmarshaller.JsonInstance: IActiveContextTimeToLiveUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
