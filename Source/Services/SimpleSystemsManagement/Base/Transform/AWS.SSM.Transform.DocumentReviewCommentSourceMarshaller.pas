unit AWS.SSM.Transform.DocumentReviewCommentSourceMarshaller;

interface

uses
  AWS.SSM.Model.DocumentReviewCommentSource, 
  AWS.Transform.RequestMarshaller;

type
  IDocumentReviewCommentSourceMarshaller = IRequestMarshaller<TDocumentReviewCommentSource, TJsonMarshallerContext>;
  
  TDocumentReviewCommentSourceMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocumentReviewCommentSource, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentReviewCommentSourceMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocumentReviewCommentSource; Context: TJsonMarshallerContext);
    class function Instance: IDocumentReviewCommentSourceMarshaller; static;
  end;
  
implementation

{ TDocumentReviewCommentSourceMarshaller }

procedure TDocumentReviewCommentSourceMarshaller.Marshall(ARequestObject: TDocumentReviewCommentSource; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContent then
  begin
    Context.Writer.WriteName('Content');
    Context.Writer.WriteString(ARequestObject.Content);
  end;
  if ARequestObject.IsSetType then
  begin
    Context.Writer.WriteName('Type');
    Context.Writer.WriteString(ARequestObject.&Type.Value);
  end;
end;

class constructor TDocumentReviewCommentSourceMarshaller.Create;
begin
  FInstance := TDocumentReviewCommentSourceMarshaller.Create;
end;

class function TDocumentReviewCommentSourceMarshaller.Instance: IDocumentReviewCommentSourceMarshaller;
begin
  Result := FInstance;
end;

end.
