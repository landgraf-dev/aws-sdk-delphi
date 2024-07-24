unit AWS.SSM.Transform.DocumentRequiresUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentRequires, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentRequiresUnmarshaller = IUnmarshaller<TDocumentRequires, TJsonUnmarshallerContext>;
  
  TDocumentRequiresUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentRequires, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentRequiresUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentRequires;
    class function JsonInstance: IDocumentRequiresUnmarshaller; static;
  end;
  
implementation

{ TDocumentRequiresUnmarshaller }

function TDocumentRequiresUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentRequires;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentRequires;
begin
  UnmarshalledObject := TDocumentRequires.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Version', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Version := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentRequiresUnmarshaller.Create;
begin
  FJsonInstance := TDocumentRequiresUnmarshaller.Create;
end;

class function TDocumentRequiresUnmarshaller.JsonInstance: IDocumentRequiresUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
