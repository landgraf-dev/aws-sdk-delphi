unit AWS.SSM.Transform.DocumentIdentifierUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentIdentifier, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.DocumentRequiresUnmarshaller, 
  AWS.SSM.Model.DocumentRequires, 
  AWS.SSM.Transform.TagUnmarshaller, 
  AWS.SSM.Model.Tag;

type
  IDocumentIdentifierUnmarshaller = IUnmarshaller<TDocumentIdentifier, TJsonUnmarshallerContext>;
  
  TDocumentIdentifierUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentIdentifier, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentIdentifierUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentIdentifier;
    class function JsonInstance: IDocumentIdentifierUnmarshaller; static;
  end;
  
implementation

{ TDocumentIdentifierUnmarshaller }

function TDocumentIdentifierUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentIdentifier;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentIdentifier;
begin
  UnmarshalledObject := TDocumentIdentifier.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Author', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Author := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DisplayName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DisplayName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentFormat := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Owner', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PlatformTypes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.PlatformTypes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Requires', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDocumentRequires, IDocumentRequiresUnmarshaller>.JsonNew(TDocumentRequiresUnmarshaller.JsonInstance);
        UnmarshalledObject.Requires := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReviewStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ReviewStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SchemaVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SchemaVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tags', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTag, ITagUnmarshaller>.JsonNew(TTagUnmarshaller.JsonInstance);
        UnmarshalledObject.Tags := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TargetType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TargetType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VersionName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VersionName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentIdentifierUnmarshaller.Create;
begin
  FJsonInstance := TDocumentIdentifierUnmarshaller.Create;
end;

class function TDocumentIdentifierUnmarshaller.JsonInstance: IDocumentIdentifierUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
