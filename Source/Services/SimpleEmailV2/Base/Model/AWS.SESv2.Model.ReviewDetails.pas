unit AWS.SESv2.Model.ReviewDetails;

interface

uses
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TReviewDetails = class;
  
  IReviewDetails = interface
    function GetCaseId: string;
    procedure SetCaseId(const Value: string);
    function GetStatus: TReviewStatus;
    procedure SetStatus(const Value: TReviewStatus);
    function Obj: TReviewDetails;
    function IsSetCaseId: Boolean;
    function IsSetStatus: Boolean;
    property CaseId: string read GetCaseId write SetCaseId;
    property Status: TReviewStatus read GetStatus write SetStatus;
  end;
  
  TReviewDetails = class
  strict private
    FCaseId: Nullable<string>;
    FStatus: Nullable<TReviewStatus>;
    function GetCaseId: string;
    procedure SetCaseId(const Value: string);
    function GetStatus: TReviewStatus;
    procedure SetStatus(const Value: TReviewStatus);
  strict protected
    function Obj: TReviewDetails;
  public
    function IsSetCaseId: Boolean;
    function IsSetStatus: Boolean;
    property CaseId: string read GetCaseId write SetCaseId;
    property Status: TReviewStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TReviewDetails }

function TReviewDetails.Obj: TReviewDetails;
begin
  Result := Self;
end;

function TReviewDetails.GetCaseId: string;
begin
  Result := FCaseId.ValueOrDefault;
end;

procedure TReviewDetails.SetCaseId(const Value: string);
begin
  FCaseId := Value;
end;

function TReviewDetails.IsSetCaseId: Boolean;
begin
  Result := FCaseId.HasValue;
end;

function TReviewDetails.GetStatus: TReviewStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TReviewDetails.SetStatus(const Value: TReviewStatus);
begin
  FStatus := Value;
end;

function TReviewDetails.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
