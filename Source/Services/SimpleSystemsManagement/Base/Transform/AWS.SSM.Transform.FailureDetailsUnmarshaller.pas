unit AWS.SSM.Transform.FailureDetailsUnmarshaller;

interface

uses
  AWS.SSM.Model.FailureDetails, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  System.Generics.Collections;

type
  IFailureDetailsUnmarshaller = IUnmarshaller<TFailureDetails, TJsonUnmarshallerContext>;
  
  TFailureDetailsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFailureDetails, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFailureDetailsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFailureDetails;
    class function JsonInstance: IFailureDetailsUnmarshaller; static;
  end;
  
implementation

{ TFailureDetailsUnmarshaller }

function TFailureDetailsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFailureDetails;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFailureDetails;
begin
  UnmarshalledObject := TFailureDetails.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Details', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TList<string>, IJsonStringUnmarshaller, IUnmarshaller<TList<string>, TJsonUnmarshallerContext>>.JsonNew(TStringUnmarshaller.JsonInstance, TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance));
        UnmarshalledObject.Details := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailureStage', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureStage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailureType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFailureDetailsUnmarshaller.Create;
begin
  FJsonInstance := TFailureDetailsUnmarshaller.Create;
end;

class function TFailureDetailsUnmarshaller.JsonInstance: IFailureDetailsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
