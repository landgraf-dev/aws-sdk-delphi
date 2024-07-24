unit AWS.SSM.Model.DocumentReviewCommentSource;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDocumentReviewCommentSource = class;
  
  IDocumentReviewCommentSource = interface
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetType: TDocumentReviewCommentType;
    procedure SetType(const Value: TDocumentReviewCommentType);
    function Obj: TDocumentReviewCommentSource;
    function IsSetContent: Boolean;
    function IsSetType: Boolean;
    property Content: string read GetContent write SetContent;
    property &Type: TDocumentReviewCommentType read GetType write SetType;
  end;
  
  TDocumentReviewCommentSource = class
  strict private
    FContent: Nullable<string>;
    FType: Nullable<TDocumentReviewCommentType>;
    function GetContent: string;
    procedure SetContent(const Value: string);
    function GetType: TDocumentReviewCommentType;
    procedure SetType(const Value: TDocumentReviewCommentType);
  strict protected
    function Obj: TDocumentReviewCommentSource;
  public
    function IsSetContent: Boolean;
    function IsSetType: Boolean;
    property Content: string read GetContent write SetContent;
    property &Type: TDocumentReviewCommentType read GetType write SetType;
  end;
  
implementation

{ TDocumentReviewCommentSource }

function TDocumentReviewCommentSource.Obj: TDocumentReviewCommentSource;
begin
  Result := Self;
end;

function TDocumentReviewCommentSource.GetContent: string;
begin
  Result := FContent.ValueOrDefault;
end;

procedure TDocumentReviewCommentSource.SetContent(const Value: string);
begin
  FContent := Value;
end;

function TDocumentReviewCommentSource.IsSetContent: Boolean;
begin
  Result := FContent.HasValue;
end;

function TDocumentReviewCommentSource.GetType: TDocumentReviewCommentType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TDocumentReviewCommentSource.SetType(const Value: TDocumentReviewCommentType);
begin
  FType := Value;
end;

function TDocumentReviewCommentSource.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
