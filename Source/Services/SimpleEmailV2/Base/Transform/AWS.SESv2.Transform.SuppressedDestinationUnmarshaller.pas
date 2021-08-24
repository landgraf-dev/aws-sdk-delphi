unit AWS.SESv2.Transform.SuppressedDestinationUnmarshaller;

interface

uses
  AWS.SESv2.Model.SuppressedDestination, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SESv2.Transform.SuppressedDestinationAttributesUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISuppressedDestinationUnmarshaller = IUnmarshaller<TSuppressedDestination, TJsonUnmarshallerContext>;
  
  TSuppressedDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSuppressedDestination, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISuppressedDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressedDestination;
    class function JsonInstance: ISuppressedDestinationUnmarshaller; static;
  end;
  
implementation

{ TSuppressedDestinationUnmarshaller }

function TSuppressedDestinationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSuppressedDestination;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSuppressedDestination;
begin
  UnmarshalledObject := TSuppressedDestination.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Attributes', TargetDepth) then
      begin
        var Unmarshaller := TSuppressedDestinationAttributesUnmarshaller.JsonInstance;
        UnmarshalledObject.Attributes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
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

class constructor TSuppressedDestinationUnmarshaller.Create;
begin
  FJsonInstance := TSuppressedDestinationUnmarshaller.Create;
end;

class function TSuppressedDestinationUnmarshaller.JsonInstance: ISuppressedDestinationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
