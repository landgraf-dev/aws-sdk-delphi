unit AWS.SES.Transform.ReputationOptionsUnmarshaller;

interface

uses
  AWS.SES.Model.ReputationOptions, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IReputationOptionsUnmarshaller = IUnmarshaller<TReputationOptions, TXmlUnmarshallerContext>;
  
  TReputationOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TReputationOptions, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IReputationOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TReputationOptions;
    class function Instance: IReputationOptionsUnmarshaller; static;
  end;
  
implementation

{ TReputationOptionsUnmarshaller }

function TReputationOptionsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TReputationOptions;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TReputationOptions;
begin
  UnmarshalledObject := TReputationOptions.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('LastFreshStart', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.LastFreshStart := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ReputationMetricsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.ReputationMetricsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SendingEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.SendingEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TReputationOptionsUnmarshaller.Create;
begin
  FInstance := TReputationOptionsUnmarshaller.Create;
end;

class function TReputationOptionsUnmarshaller.Instance: IReputationOptionsUnmarshaller;
begin
  Result := FInstance;
end;

end.
