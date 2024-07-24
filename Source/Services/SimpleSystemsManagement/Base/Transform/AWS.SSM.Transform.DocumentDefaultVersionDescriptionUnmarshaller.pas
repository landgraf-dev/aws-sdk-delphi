unit AWS.SSM.Transform.DocumentDefaultVersionDescriptionUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentDefaultVersionDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentDefaultVersionDescriptionUnmarshaller = IUnmarshaller<TDocumentDefaultVersionDescription, TJsonUnmarshallerContext>;
  
  TDocumentDefaultVersionDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentDefaultVersionDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentDefaultVersionDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentDefaultVersionDescription;
    class function JsonInstance: IDocumentDefaultVersionDescriptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentDefaultVersionDescriptionUnmarshaller }

function TDocumentDefaultVersionDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentDefaultVersionDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentDefaultVersionDescription;
begin
  UnmarshalledObject := TDocumentDefaultVersionDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DefaultVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DefaultVersionName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultVersionName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentDefaultVersionDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TDocumentDefaultVersionDescriptionUnmarshaller.Create;
end;

class function TDocumentDefaultVersionDescriptionUnmarshaller.JsonInstance: IDocumentDefaultVersionDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
