unit AWS.SSM.Transform.DocumentReviewsMarshaller;

interface

uses
  AWS.SSM.Model.DocumentReviews, 
  AWS.Transform.RequestMarshaller, 
  AWS.SSM.Transform.DocumentReviewCommentSourceMarshaller;

type
  IDocumentReviewsMarshaller = IRequestMarshaller<TDocumentReviews, TJsonMarshallerContext>;
  
  TDocumentReviewsMarshaller = class(TInterfacedObject, IRequestMarshaller<TDocumentReviews, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDocumentReviewsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDocumentReviews; Context: TJsonMarshallerContext);
    class function Instance: IDocumentReviewsMarshaller; static;
  end;
  
implementation

{ TDocumentReviewsMarshaller }

procedure TDocumentReviewsMarshaller.Marshall(ARequestObject: TDocumentReviews; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAction then
  begin
    Context.Writer.WriteName('Action');
    Context.Writer.WriteString(ARequestObject.Action.Value);
  end;
  if ARequestObject.IsSetComment then
  begin
    Context.Writer.WriteName('Comment');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectCommentListValue in ARequestObject.Comment do
    begin
      Context.Writer.WriteBeginObject;
      TDocumentReviewCommentSourceMarshaller.Instance.Marshall(ARequestObjectCommentListValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TDocumentReviewsMarshaller.Create;
begin
  FInstance := TDocumentReviewsMarshaller.Create;
end;

class function TDocumentReviewsMarshaller.Instance: IDocumentReviewsMarshaller;
begin
  Result := FInstance;
end;

end.
