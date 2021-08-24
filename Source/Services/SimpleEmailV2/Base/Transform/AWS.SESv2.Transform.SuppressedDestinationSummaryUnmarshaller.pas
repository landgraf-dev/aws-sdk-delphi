unit AWS.SESv2.Transform.SuppressedDestinationSummaryUnmarshaller;

interface

uses
  AWS.SESv2.Model.SuppressedDestinationSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISuppressedDestinationSummaryUnmarshaller = IUnmarshaller<TSuppressedDestinationSummary, TJsonUnmarshallerContext>;
  
  TSuppressedDestinationSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSuppressedDestinationSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISuppressedDestinationSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressedDestinationSummary;
    class function JsonInstance: ISuppressedDestinationSummaryUnmarshaller; static;
  end;
  
implementation

{ TSuppressedDestinationSummaryUnmarshaller }

function TSuppressedDestinationSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressedDestinationSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSuppressedDestinationSummary;
begin
  UnmarshalledObject := TSuppressedDestinationSummary.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('EmailAddress', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.EmailAddress := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastUpdateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastUpdateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Reason', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Reason := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSuppressedDestinationSummaryUnmarshaller.Create;
begin
  FJsonInstance := TSuppressedDestinationSummaryUnmarshaller.Create;
end;

class function TSuppressedDestinationSummaryUnmarshaller.JsonInstance: ISuppressedDestinationSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
