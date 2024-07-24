unit AWS.SSM.Transform.DocumentParameterUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentParameter, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentParameterUnmarshaller = IUnmarshaller<TDocumentParameter, TJsonUnmarshallerContext>;
  
  TDocumentParameterUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentParameter, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentParameterUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentParameter;
    class function JsonInstance: IDocumentParameterUnmarshaller; static;
  end;
  
implementation

{ TDocumentParameterUnmarshaller }

function TDocumentParameterUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentParameter;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentParameter;
begin
  UnmarshalledObject := TDocumentParameter.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DefaultValue', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentParameterUnmarshaller.Create;
begin
  FJsonInstance := TDocumentParameterUnmarshaller.Create;
end;

class function TDocumentParameterUnmarshaller.JsonInstance: IDocumentParameterUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
