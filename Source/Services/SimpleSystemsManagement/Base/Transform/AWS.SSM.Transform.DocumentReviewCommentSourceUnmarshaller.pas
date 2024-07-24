unit AWS.SSM.Transform.DocumentReviewCommentSourceUnmarshaller;

interface

uses
  AWS.SSM.Model.DocumentReviewCommentSource, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentReviewCommentSourceUnmarshaller = IUnmarshaller<TDocumentReviewCommentSource, TJsonUnmarshallerContext>;
  
  TDocumentReviewCommentSourceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentReviewCommentSource, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentReviewCommentSourceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentReviewCommentSource;
    class function JsonInstance: IDocumentReviewCommentSourceUnmarshaller; static;
  end;
  
implementation

{ TDocumentReviewCommentSourceUnmarshaller }

function TDocumentReviewCommentSourceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentReviewCommentSource;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentReviewCommentSource;
begin
  UnmarshalledObject := TDocumentReviewCommentSource.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Content', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Content := Unmarshaller.Unmarshall(AContext);
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

class constructor TDocumentReviewCommentSourceUnmarshaller.Create;
begin
  FJsonInstance := TDocumentReviewCommentSourceUnmarshaller.Create;
end;

class function TDocumentReviewCommentSourceUnmarshaller.JsonInstance: IDocumentReviewCommentSourceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
