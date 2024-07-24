unit AWS.SSM.Model.DocumentReviews;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.DocumentReviewCommentSource;

type
  TDocumentReviews = class;
  
  IDocumentReviews = interface
    function GetAction: TDocumentReviewAction;
    procedure SetAction(const Value: TDocumentReviewAction);
    function GetComment: TObjectList<TDocumentReviewCommentSource>;
    procedure SetComment(const Value: TObjectList<TDocumentReviewCommentSource>);
    function GetKeepComment: Boolean;
    procedure SetKeepComment(const Value: Boolean);
    function Obj: TDocumentReviews;
    function IsSetAction: Boolean;
    function IsSetComment: Boolean;
    property Action: TDocumentReviewAction read GetAction write SetAction;
    property Comment: TObjectList<TDocumentReviewCommentSource> read GetComment write SetComment;
    property KeepComment: Boolean read GetKeepComment write SetKeepComment;
  end;
  
  TDocumentReviews = class
  strict private
    FAction: Nullable<TDocumentReviewAction>;
    FComment: TObjectList<TDocumentReviewCommentSource>;
    FKeepComment: Boolean;
    function GetAction: TDocumentReviewAction;
    procedure SetAction(const Value: TDocumentReviewAction);
    function GetComment: TObjectList<TDocumentReviewCommentSource>;
    procedure SetComment(const Value: TObjectList<TDocumentReviewCommentSource>);
    function GetKeepComment: Boolean;
    procedure SetKeepComment(const Value: Boolean);
  strict protected
    function Obj: TDocumentReviews;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAction: Boolean;
    function IsSetComment: Boolean;
    property Action: TDocumentReviewAction read GetAction write SetAction;
    property Comment: TObjectList<TDocumentReviewCommentSource> read GetComment write SetComment;
    property KeepComment: Boolean read GetKeepComment write SetKeepComment;
  end;
  
implementation

{ TDocumentReviews }

constructor TDocumentReviews.Create;
begin
  inherited;
  FComment := TObjectList<TDocumentReviewCommentSource>.Create;
end;

destructor TDocumentReviews.Destroy;
begin
  Comment := nil;
  inherited;
end;

function TDocumentReviews.Obj: TDocumentReviews;
begin
  Result := Self;
end;

function TDocumentReviews.GetAction: TDocumentReviewAction;
begin
  Result := FAction.ValueOrDefault;
end;

procedure TDocumentReviews.SetAction(const Value: TDocumentReviewAction);
begin
  FAction := Value;
end;

function TDocumentReviews.IsSetAction: Boolean;
begin
  Result := FAction.HasValue;
end;

function TDocumentReviews.GetComment: TObjectList<TDocumentReviewCommentSource>;
begin
  Result := FComment;
end;

procedure TDocumentReviews.SetComment(const Value: TObjectList<TDocumentReviewCommentSource>);
begin
  if FComment <> Value then
  begin
    if not KeepComment then
      FComment.Free;
    FComment := Value;
  end;
end;

function TDocumentReviews.GetKeepComment: Boolean;
begin
  Result := FKeepComment;
end;

procedure TDocumentReviews.SetKeepComment(const Value: Boolean);
begin
  FKeepComment := Value;
end;

function TDocumentReviews.IsSetComment: Boolean;
begin
  Result := (FComment <> nil) and (FComment.Count > 0);
end;

end.
