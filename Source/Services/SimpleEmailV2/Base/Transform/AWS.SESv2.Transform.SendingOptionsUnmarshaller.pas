unit AWS.SESv2.Transform.SendingOptionsUnmarshaller;

interface

uses
  AWS.SESv2.Model.SendingOptions, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISendingOptionsUnmarshaller = IUnmarshaller<TSendingOptions, TJsonUnmarshallerContext>;
  
  TSendingOptionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSendingOptions, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISendingOptionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSendingOptions;
    class function JsonInstance: ISendingOptionsUnmarshaller; static;
  end;
  
implementation

{ TSendingOptionsUnmarshaller }

function TSendingOptionsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSendingOptions;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSendingOptions;
begin
  UnmarshalledObject := TSendingOptions.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SendingEnabled', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.SendingEnabled := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSendingOptionsUnmarshaller.Create;
begin
  FJsonInstance := TSendingOptionsUnmarshaller.Create;
end;

class function TSendingOptionsUnmarshaller.JsonInstance: ISendingOptionsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
