unit AWS.Textract.Transform.IdentityDocumentFieldUnmarshaller;

interface

uses
  AWS.Textract.Model.IdentityDocumentField, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Textract.Transform.AnalyzeIDDetectionsUnmarshaller;

type
  IIdentityDocumentFieldUnmarshaller = IUnmarshaller<TIdentityDocumentField, TJsonUnmarshallerContext>;
  
  TIdentityDocumentFieldUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityDocumentField, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIdentityDocumentFieldUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIdentityDocumentField;
    class function JsonInstance: IIdentityDocumentFieldUnmarshaller; static;
  end;
  
implementation

{ TIdentityDocumentFieldUnmarshaller }

function TIdentityDocumentFieldUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIdentityDocumentField;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityDocumentField;
begin
  UnmarshalledObject := TIdentityDocumentField.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TAnalyzeIDDetectionsUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ValueDetection', TargetDepth) then
      begin
        var Unmarshaller := TAnalyzeIDDetectionsUnmarshaller.JsonInstance;
        UnmarshalledObject.ValueDetection := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIdentityDocumentFieldUnmarshaller.Create;
begin
  FJsonInstance := TIdentityDocumentFieldUnmarshaller.Create;
end;

class function TIdentityDocumentFieldUnmarshaller.JsonInstance: IIdentityDocumentFieldUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
