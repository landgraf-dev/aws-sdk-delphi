unit AWS.SESv2.Transform.ReputationOptionsUnmarshaller;

interface

uses
  AWS.SESv2.Model.ReputationOptions, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReputationOptionsUnmarshaller = IUnmarshaller<TReputationOptions, TJsonUnmarshallerContext>;
  
  TReputationOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReputationOptions, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IReputationOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TReputationOptions;
    class function JsonInstance: IReputationOptionsUnmarshaller; static;
  end;
  
implementation

{ TReputationOptionsUnmarshaller }

function TReputationOptionsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TReputationOptions;
var
  TargetDepth: Integer;
  UnmarshalledObject: TReputationOptions;
begin
  UnmarshalledObject := TReputationOptions.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LastFreshStart', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastFreshStart := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReputationMetricsEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.ReputationMetricsEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TReputationOptionsUnmarshaller.Create;
begin
  FJsonInstance := TReputationOptionsUnmarshaller.Create;
end;

class function TReputationOptionsUnmarshaller.JsonInstance: IReputationOptionsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
