unit AWS.SSM.Model.ReviewInformation;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TReviewInformation = class;
  
  IReviewInformation = interface
    function GetReviewedTime: TDateTime;
    procedure SetReviewedTime(const Value: TDateTime);
    function GetReviewer: string;
    procedure SetReviewer(const Value: string);
    function GetStatus: TReviewStatus;
    procedure SetStatus(const Value: TReviewStatus);
    function Obj: TReviewInformation;
    function IsSetReviewedTime: Boolean;
    function IsSetReviewer: Boolean;
    function IsSetStatus: Boolean;
    property ReviewedTime: TDateTime read GetReviewedTime write SetReviewedTime;
    property Reviewer: string read GetReviewer write SetReviewer;
    property Status: TReviewStatus read GetStatus write SetStatus;
  end;
  
  TReviewInformation = class
  strict private
    FReviewedTime: Nullable<TDateTime>;
    FReviewer: Nullable<string>;
    FStatus: Nullable<TReviewStatus>;
    function GetReviewedTime: TDateTime;
    procedure SetReviewedTime(const Value: TDateTime);
    function GetReviewer: string;
    procedure SetReviewer(const Value: string);
    function GetStatus: TReviewStatus;
    procedure SetStatus(const Value: TReviewStatus);
  strict protected
    function Obj: TReviewInformation;
  public
    function IsSetReviewedTime: Boolean;
    function IsSetReviewer: Boolean;
    function IsSetStatus: Boolean;
    property ReviewedTime: TDateTime read GetReviewedTime write SetReviewedTime;
    property Reviewer: string read GetReviewer write SetReviewer;
    property Status: TReviewStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TReviewInformation }

function TReviewInformation.Obj: TReviewInformation;
begin
  Result := Self;
end;

function TReviewInformation.GetReviewedTime: TDateTime;
begin
  Result := FReviewedTime.ValueOrDefault;
end;

procedure TReviewInformation.SetReviewedTime(const Value: TDateTime);
begin
  FReviewedTime := Value;
end;

function TReviewInformation.IsSetReviewedTime: Boolean;
begin
  Result := FReviewedTime.HasValue;
end;

function TReviewInformation.GetReviewer: string;
begin
  Result := FReviewer.ValueOrDefault;
end;

procedure TReviewInformation.SetReviewer(const Value: string);
begin
  FReviewer := Value;
end;

function TReviewInformation.IsSetReviewer: Boolean;
begin
  Result := FReviewer.HasValue;
end;

function TReviewInformation.GetStatus: TReviewStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TReviewInformation.SetStatus(const Value: TReviewStatus);
begin
  FStatus := Value;
end;

function TReviewInformation.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
