unit AWS.SSM.Transform.PatchUnmarshaller;

interface

uses
  AWS.SSM.Model.Patch, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPatchUnmarshaller = IUnmarshaller<TPatch, TJsonUnmarshallerContext>;
  
  TPatchUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPatch, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPatchUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPatch;
    class function JsonInstance: IPatchUnmarshaller; static;
  end;
  
implementation

{ TPatchUnmarshaller }

function TPatchUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPatch;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPatch;
begin
  UnmarshalledObject := TPatch.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AdvisoryIds', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.AdvisoryIds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Arch', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Arch := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('BugzillaIds', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.BugzillaIds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CVEIds', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.CVEIds := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Classification', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Classification := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ContentUrl', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentUrl := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Epoch', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Epoch := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('KbNumber', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.KbNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Language', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Language := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MsrcNumber', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MsrcNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MsrcSeverity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MsrcSeverity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Product', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Product := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ProductFamily', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ProductFamily := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Release', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Release := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReleaseDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.ReleaseDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Repository', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Repository := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Severity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Severity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Title', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Title := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Vendor', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Vendor := Unmarshaller.Unmarshall(AContext);
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

class constructor TPatchUnmarshaller.Create;
begin
  FJsonInstance := TPatchUnmarshaller.Create;
end;

class function TPatchUnmarshaller.JsonInstance: IPatchUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
