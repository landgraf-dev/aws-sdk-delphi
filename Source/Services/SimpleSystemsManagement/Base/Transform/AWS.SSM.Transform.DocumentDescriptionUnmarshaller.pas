unit AWS.SSM.Transform.DocumentDescriptionUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.SSM.Transform.AttachmentInformationUnmarshaller, 
  AWS.SSM.Model.AttachmentInformation, 
  AWS.SSM.Transform.DocumentParameterUnmarshaller, 
  AWS.SSM.Model.DocumentParameter, 
  AWS.SSM.Transform.DocumentRequiresUnmarshaller, 
  AWS.SSM.Model.DocumentRequires, 
  AWS.SSM.Transform.ReviewInformationUnmarshaller, 
  AWS.SSM.Model.ReviewInformation, 
  AWS.SSM.Transform.TagUnmarshaller, 
  AWS.SSM.Model.Tag;

type
  IDocumentDescriptionUnmarshaller = IUnmarshaller<TDocumentDescription, TJsonUnmarshallerContext>;
  
  TDocumentDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentDescription;
    class function JsonInstance: IDocumentDescriptionUnmarshaller; static;
  end;
  
implementation

{ TDocumentDescriptionUnmarshaller }

function TDocumentDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentDescription;
begin
  UnmarshalledObject := TDocumentDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ApprovedVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ApprovedVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('AttachmentsInformation', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TAttachmentInformation, IAttachmentInformationUnmarshaller>.JsonNew(TAttachmentInformationUnmarshaller.JsonInstance);
        UnmarshalledObject.AttachmentsInformation := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Author', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Author := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Category', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Category := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CategoryEnum', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.CategoryEnum := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreatedDate', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreatedDate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DefaultVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DefaultVersion := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Description', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Description := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Hash', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Hash := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('HashType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.HashType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LatestVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LatestVersion := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Parameters', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDocumentParameter, IDocumentParameterUnmarshaller>.JsonNew(TDocumentParameterUnmarshaller.JsonInstance);
        UnmarshalledObject.Parameters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('PendingReviewVersion', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.PendingReviewVersion := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('ReviewInformation', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TReviewInformation, IReviewInformationUnmarshaller>.JsonNew(TReviewInformationUnmarshaller.JsonInstance);
        UnmarshalledObject.ReviewInformation := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Sha1', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Sha1 := Unmarshaller.Unmarshall(AContext);
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

class constructor TDocumentDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TDocumentDescriptionUnmarshaller.Create;
end;

class function TDocumentDescriptionUnmarshaller.JsonInstance: IDocumentDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
