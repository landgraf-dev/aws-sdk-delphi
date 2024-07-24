unit AWS.SSM.Transform.DocumentVersionInfoUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentVersionInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentVersionInfoUnmarshaller = IUnmarshaller<TDocumentVersionInfo, TJsonUnmarshallerContext>;
  
  TDocumentVersionInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentVersionInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentVersionInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentVersionInfo;
    class function JsonInstance: IDocumentVersionInfoUnmarshaller; static;
  end;
  
implementation

{ TDocumentVersionInfoUnmarshaller }

function TDocumentVersionInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentVersionInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentVersionInfo;
begin
  UnmarshalledObject := TDocumentVersionInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
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
      if AContext.TestExpression('DocumentVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IsDefaultVersion', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.IsDefaultVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReviewStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ReviewStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Status', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StatusInformation', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StatusInformation := Unmarshaller.Unmarshall(AContext);
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

class constructor TDocumentVersionInfoUnmarshaller.Create;
begin
  FJsonInstance := TDocumentVersionInfoUnmarshaller.Create;
end;

class function TDocumentVersionInfoUnmarshaller.JsonInstance: IDocumentVersionInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
