unit AWS.SSM.Transform.DocumentMetadataResponseInfoUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentMetadataResponseInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.DocumentReviewerResponseSourceUnmarshaller, 
  AWS.SSM.Model.DocumentReviewerResponseSource, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentMetadataResponseInfoUnmarshaller = IUnmarshaller<TDocumentMetadataResponseInfo, TJsonUnmarshallerContext>;
  
  TDocumentMetadataResponseInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentMetadataResponseInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentMetadataResponseInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentMetadataResponseInfo;
    class function JsonInstance: IDocumentMetadataResponseInfoUnmarshaller; static;
  end;
  
implementation

{ TDocumentMetadataResponseInfoUnmarshaller }

function TDocumentMetadataResponseInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentMetadataResponseInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentMetadataResponseInfo;
begin
  UnmarshalledObject := TDocumentMetadataResponseInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('ReviewerResponse', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDocumentReviewerResponseSource, IDocumentReviewerResponseSourceUnmarshaller>.JsonNew(TDocumentReviewerResponseSourceUnmarshaller.JsonInstance);
        UnmarshalledObject.ReviewerResponse := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentMetadataResponseInfoUnmarshaller.Create;
begin
  FJsonInstance := TDocumentMetadataResponseInfoUnmarshaller.Create;
end;

class function TDocumentMetadataResponseInfoUnmarshaller.JsonInstance: IDocumentMetadataResponseInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
