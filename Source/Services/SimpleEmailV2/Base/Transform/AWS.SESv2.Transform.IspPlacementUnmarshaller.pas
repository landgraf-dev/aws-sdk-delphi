unit AWS.SESv2.Transform.IspPlacementUnmarshaller;

interface

uses
  AWS.SESv2.Model.IspPlacement, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SESv2.Transform.PlacementStatisticsUnmarshaller;

type
  IIspPlacementUnmarshaller = IUnmarshaller<TIspPlacement, TJsonUnmarshallerContext>;
  
  TIspPlacementUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIspPlacement, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIspPlacementUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIspPlacement;
    class function JsonInstance: IIspPlacementUnmarshaller; static;
  end;
  
implementation

{ TIspPlacementUnmarshaller }

function TIspPlacementUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIspPlacement;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIspPlacement;
begin
  UnmarshalledObject := TIspPlacement.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('IspName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.IspName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PlacementStatistics', TargetDepth) then
      begin
        var Unmarshaller := TPlacementStatisticsUnmarshaller.JsonInstance;
        UnmarshalledObject.PlacementStatistics := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIspPlacementUnmarshaller.Create;
begin
  FJsonInstance := TIspPlacementUnmarshaller.Create;
end;

class function TIspPlacementUnmarshaller.JsonInstance: IIspPlacementUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
