unit AWS.SESv2.Transform.SuppressionListDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.SuppressionListDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISuppressionListDestinationUnmarshaller = IUnmarshaller<TSuppressionListDestination, TJsonUnmarshallerContext>;
  
  TSuppressionListDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSuppressionListDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISuppressionListDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressionListDestination;
    class function JsonInstance: ISuppressionListDestinationUnmarshaller; static;
  end;
  
implementation

{ TSuppressionListDestinationUnmarshaller }

function TSuppressionListDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressionListDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSuppressionListDestination;
begin
  UnmarshalledObject := TSuppressionListDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SuppressionListImportAction', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SuppressionListImportAction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSuppressionListDestinationUnmarshaller.Create;
begin
  FJsonInstance := TSuppressionListDestinationUnmarshaller.Create;
end;

class function TSuppressionListDestinationUnmarshaller.JsonInstance: ISuppressionListDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
