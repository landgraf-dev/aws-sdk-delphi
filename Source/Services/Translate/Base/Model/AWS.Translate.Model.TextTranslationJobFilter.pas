unit AWS.Translate.Model.TextTranslationJobFilter;

interface

uses
  AWS.Nullable, 
  AWS.Translate.Enums;

type
  TTextTranslationJobFilter = class;
  
  ITextTranslationJobFilter = interface
    function GetJobName: string;
    procedure SetJobName(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetSubmittedAfterTime: TDateTime;
    procedure SetSubmittedAfterTime(const Value: TDateTime);
    function GetSubmittedBeforeTime: TDateTime;
    procedure SetSubmittedBeforeTime(const Value: TDateTime);
    function Obj: TTextTranslationJobFilter;
    function IsSetJobName: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetSubmittedAfterTime: Boolean;
    function IsSetSubmittedBeforeTime: Boolean;
    property JobName: string read GetJobName write SetJobName;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property SubmittedAfterTime: TDateTime read GetSubmittedAfterTime write SetSubmittedAfterTime;
    property SubmittedBeforeTime: TDateTime read GetSubmittedBeforeTime write SetSubmittedBeforeTime;
  end;
  
  TTextTranslationJobFilter = class
  strict private
    FJobName: Nullable<string>;
    FJobStatus: Nullable<TJobStatus>;
    FSubmittedAfterTime: Nullable<TDateTime>;
    FSubmittedBeforeTime: Nullable<TDateTime>;
    function GetJobName: string;
    procedure SetJobName(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function GetSubmittedAfterTime: TDateTime;
    procedure SetSubmittedAfterTime(const Value: TDateTime);
    function GetSubmittedBeforeTime: TDateTime;
    procedure SetSubmittedBeforeTime(const Value: TDateTime);
  strict protected
    function Obj: TTextTranslationJobFilter;
  public
    function IsSetJobName: Boolean;
    function IsSetJobStatus: Boolean;
    function IsSetSubmittedAfterTime: Boolean;
    function IsSetSubmittedBeforeTime: Boolean;
    property JobName: string read GetJobName write SetJobName;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
    property SubmittedAfterTime: TDateTime read GetSubmittedAfterTime write SetSubmittedAfterTime;
    property SubmittedBeforeTime: TDateTime read GetSubmittedBeforeTime write SetSubmittedBeforeTime;
  end;
  
implementation

{ TTextTranslationJobFilter }

function TTextTranslationJobFilter.Obj: TTextTranslationJobFilter;
begin
  Result := Self;
end;

function TTextTranslationJobFilter.GetJobName: string;
begin
  Result := FJobName.ValueOrDefault;
end;

procedure TTextTranslationJobFilter.SetJobName(const Value: string);
begin
  FJobName := Value;
end;

function TTextTranslationJobFilter.IsSetJobName: Boolean;
begin
  Result := FJobName.HasValue;
end;

function TTextTranslationJobFilter.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TTextTranslationJobFilter.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TTextTranslationJobFilter.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

function TTextTranslationJobFilter.GetSubmittedAfterTime: TDateTime;
begin
  Result := FSubmittedAfterTime.ValueOrDefault;
end;

procedure TTextTranslationJobFilter.SetSubmittedAfterTime(const Value: TDateTime);
begin
  FSubmittedAfterTime := Value;
end;

function TTextTranslationJobFilter.IsSetSubmittedAfterTime: Boolean;
begin
  Result := FSubmittedAfterTime.HasValue;
end;

function TTextTranslationJobFilter.GetSubmittedBeforeTime: TDateTime;
begin
  Result := FSubmittedBeforeTime.ValueOrDefault;
end;

procedure TTextTranslationJobFilter.SetSubmittedBeforeTime(const Value: TDateTime);
begin
  FSubmittedBeforeTime := Value;
end;

function TTextTranslationJobFilter.IsSetSubmittedBeforeTime: Boolean;
begin
  Result := FSubmittedBeforeTime.HasValue;
end;

end.
