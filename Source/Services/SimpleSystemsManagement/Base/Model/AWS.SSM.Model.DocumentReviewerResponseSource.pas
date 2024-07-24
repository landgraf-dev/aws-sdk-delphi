unit AWS.SSM.Model.DocumentReviewerResponseSource;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.DocumentReviewCommentSource, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TDocumentReviewerResponseSource = class;
  
  IDocumentReviewerResponseSource = interface
    function GetComment: TObjectList<TDocumentReviewCommentSource>;
    procedure SetComment(const Value: TObjectList<TDocumentReviewCommentSource>);
    function GetKeepComment: Boolean;
    procedure SetKeepComment(const Value: Boolean);
    function GetCreateTime: TDateTime;
    procedure SetCreateTime(const Value: TDateTime);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetReviewer: string;
    procedure SetReviewer(const Value: string);
    function GetUpdatedTime: TDateTime;
    procedure SetUpdatedTime(const Value: TDateTime);
    function Obj: TDocumentReviewerResponseSource;
    function IsSetComment: Boolean;
    function IsSetCreateTime: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetReviewer: Boolean;
    function IsSetUpdatedTime: Boolean;
    property Comment: TObjectList<TDocumentReviewCommentSource> read GetComment write SetComment;
    property KeepComment: Boolean read GetKeepComment write SetKeepComment;
    property CreateTime: TDateTime read GetCreateTime write SetCreateTime;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property Reviewer: string read GetReviewer write SetReviewer;
    property UpdatedTime: TDateTime read GetUpdatedTime write SetUpdatedTime;
  end;
  
  TDocumentReviewerResponseSource = class
  strict private
    FComment: TObjectList<TDocumentReviewCommentSource>;
    FKeepComment: Boolean;
    FCreateTime: Nullable<TDateTime>;
    FReviewStatus: Nullable<TReviewStatus>;
    FReviewer: Nullable<string>;
    FUpdatedTime: Nullable<TDateTime>;
    function GetComment: TObjectList<TDocumentReviewCommentSource>;
    procedure SetComment(const Value: TObjectList<TDocumentReviewCommentSource>);
    function GetKeepComment: Boolean;
    procedure SetKeepComment(const Value: Boolean);
    function GetCreateTime: TDateTime;
    procedure SetCreateTime(const Value: TDateTime);
    function GetReviewStatus: TReviewStatus;
    procedure SetReviewStatus(const Value: TReviewStatus);
    function GetReviewer: string;
    procedure SetReviewer(const Value: string);
    function GetUpdatedTime: TDateTime;
    procedure SetUpdatedTime(const Value: TDateTime);
  strict protected
    function Obj: TDocumentReviewerResponseSource;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetComment: Boolean;
    function IsSetCreateTime: Boolean;
    function IsSetReviewStatus: Boolean;
    function IsSetReviewer: Boolean;
    function IsSetUpdatedTime: Boolean;
    property Comment: TObjectList<TDocumentReviewCommentSource> read GetComment write SetComment;
    property KeepComment: Boolean read GetKeepComment write SetKeepComment;
    property CreateTime: TDateTime read GetCreateTime write SetCreateTime;
    property ReviewStatus: TReviewStatus read GetReviewStatus write SetReviewStatus;
    property Reviewer: string read GetReviewer write SetReviewer;
    property UpdatedTime: TDateTime read GetUpdatedTime write SetUpdatedTime;
  end;
  
implementation

{ TDocumentReviewerResponseSource }

constructor TDocumentReviewerResponseSource.Create;
begin
  inherited;
  FComment := TObjectList<TDocumentReviewCommentSource>.Create;
end;

destructor TDocumentReviewerResponseSource.Destroy;
begin
  Comment := nil;
  inherited;
end;

function TDocumentReviewerResponseSource.Obj: TDocumentReviewerResponseSource;
begin
  Result := Self;
end;

function TDocumentReviewerResponseSource.GetComment: TObjectList<TDocumentReviewCommentSource>;
begin
  Result := FComment;
end;

procedure TDocumentReviewerResponseSource.SetComment(const Value: TObjectList<TDocumentReviewCommentSource>);
begin
  if FComment <> Value then
  begin
    if not KeepComment then
      FComment.Free;
    FComment := Value;
  end;
end;

function TDocumentReviewerResponseSource.GetKeepComment: Boolean;
begin
  Result := FKeepComment;
end;

procedure TDocumentReviewerResponseSource.SetKeepComment(const Value: Boolean);
begin
  FKeepComment := Value;
end;

function TDocumentReviewerResponseSource.IsSetComment: Boolean;
begin
  Result := (FComment <> nil) and (FComment.Count > 0);
end;

function TDocumentReviewerResponseSource.GetCreateTime: TDateTime;
begin
  Result := FCreateTime.ValueOrDefault;
end;

procedure TDocumentReviewerResponseSource.SetCreateTime(const Value: TDateTime);
begin
  FCreateTime := Value;
end;

function TDocumentReviewerResponseSource.IsSetCreateTime: Boolean;
begin
  Result := FCreateTime.HasValue;
end;

function TDocumentReviewerResponseSource.GetReviewStatus: TReviewStatus;
begin
  Result := FReviewStatus.ValueOrDefault;
end;

procedure TDocumentReviewerResponseSource.SetReviewStatus(const Value: TReviewStatus);
begin
  FReviewStatus := Value;
end;

function TDocumentReviewerResponseSource.IsSetReviewStatus: Boolean;
begin
  Result := FReviewStatus.HasValue;
end;

function TDocumentReviewerResponseSource.GetReviewer: string;
begin
  Result := FReviewer.ValueOrDefault;
end;

procedure TDocumentReviewerResponseSource.SetReviewer(const Value: string);
begin
  FReviewer := Value;
end;

function TDocumentReviewerResponseSource.IsSetReviewer: Boolean;
begin
  Result := FReviewer.HasValue;
end;

function TDocumentReviewerResponseSource.GetUpdatedTime: TDateTime;
begin
  Result := FUpdatedTime.ValueOrDefault;
end;

procedure TDocumentReviewerResponseSource.SetUpdatedTime(const Value: TDateTime);
begin
  FUpdatedTime := Value;
end;

function TDocumentReviewerResponseSource.IsSetUpdatedTime: Boolean;
begin
  Result := FUpdatedTime.HasValue;
end;

end.
