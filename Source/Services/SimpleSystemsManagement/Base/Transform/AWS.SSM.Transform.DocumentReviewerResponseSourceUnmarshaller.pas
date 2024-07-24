unit AWS.SSM.Transform.DocumentReviewerResponseSourceUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentReviewerResponseSource, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.SSM.Transform.DocumentReviewCommentSourceUnmarshaller, 
  AWS.SSM.Model.DocumentReviewCommentSource, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentReviewerResponseSourceUnmarshaller = IUnmarshaller<TDocumentReviewerResponseSource, TJsonUnmarshallerContext>;
  
  TDocumentReviewerResponseSourceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentReviewerResponseSource, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentReviewerResponseSourceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentReviewerResponseSource;
    class function JsonInstance: IDocumentReviewerResponseSourceUnmarshaller; static;
  end;
  
implementation

{ TDocumentReviewerResponseSourceUnmarshaller }

function TDocumentReviewerResponseSourceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentReviewerResponseSource;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentReviewerResponseSource;
begin
  UnmarshalledObject := TDocumentReviewerResponseSource.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Comment', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TDocumentReviewCommentSource, IDocumentReviewCommentSourceUnmarshaller>.JsonNew(TDocumentReviewCommentSourceUnmarshaller.JsonInstance);
        UnmarshalledObject.Comment := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreateTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreateTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ReviewStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ReviewStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Reviewer', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Reviewer := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('UpdatedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.UpdatedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentReviewerResponseSourceUnmarshaller.Create;
begin
  FJsonInstance := TDocumentReviewerResponseSourceUnmarshaller.Create;
end;

class function TDocumentReviewerResponseSourceUnmarshaller.JsonInstance: IDocumentReviewerResponseSourceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
