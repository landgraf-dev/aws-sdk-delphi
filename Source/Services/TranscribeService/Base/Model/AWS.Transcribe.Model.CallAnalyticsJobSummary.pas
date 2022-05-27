unit AWS.Transcribe.Model.CallAnalyticsJobSummary;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Enums;

type
  TCallAnalyticsJobSummary = class;
  
  ICallAnalyticsJobSummary = interface
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function GetCallAnalyticsJobStatus: TCallAnalyticsJobStatus;
    procedure SetCallAnalyticsJobStatus(const Value: TCallAnalyticsJobStatus);
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function Obj: TCallAnalyticsJobSummary;
    function IsSetCallAnalyticsJobName: Boolean;
    function IsSetCallAnalyticsJobStatus: Boolean;
    function IsSetCompletionTime: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetStartTime: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
    property CallAnalyticsJobStatus: TCallAnalyticsJobStatus read GetCallAnalyticsJobStatus write SetCallAnalyticsJobStatus;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
  end;
  
  TCallAnalyticsJobSummary = class
  strict private
    FCallAnalyticsJobName: Nullable<string>;
    FCallAnalyticsJobStatus: Nullable<TCallAnalyticsJobStatus>;
    FCompletionTime: Nullable<TDateTime>;
    FCreationTime: Nullable<TDateTime>;
    FFailureReason: Nullable<string>;
    FLanguageCode: Nullable<TLanguageCode>;
    FStartTime: Nullable<TDateTime>;
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function GetCallAnalyticsJobStatus: TCallAnalyticsJobStatus;
    procedure SetCallAnalyticsJobStatus(const Value: TCallAnalyticsJobStatus);
    function GetCompletionTime: TDateTime;
    procedure SetCompletionTime(const Value: TDateTime);
    function GetCreationTime: TDateTime;
    procedure SetCreationTime(const Value: TDateTime);
    function GetFailureReason: string;
    procedure SetFailureReason(const Value: string);
    function GetLanguageCode: TLanguageCode;
    procedure SetLanguageCode(const Value: TLanguageCode);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
  strict protected
    function Obj: TCallAnalyticsJobSummary;
  public
    function IsSetCallAnalyticsJobName: Boolean;
    function IsSetCallAnalyticsJobStatus: Boolean;
    function IsSetCompletionTime: Boolean;
    function IsSetCreationTime: Boolean;
    function IsSetFailureReason: Boolean;
    function IsSetLanguageCode: Boolean;
    function IsSetStartTime: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
    property CallAnalyticsJobStatus: TCallAnalyticsJobStatus read GetCallAnalyticsJobStatus write SetCallAnalyticsJobStatus;
    property CompletionTime: TDateTime read GetCompletionTime write SetCompletionTime;
    property CreationTime: TDateTime read GetCreationTime write SetCreationTime;
    property FailureReason: string read GetFailureReason write SetFailureReason;
    property LanguageCode: TLanguageCode read GetLanguageCode write SetLanguageCode;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
  end;
  
implementation

{ TCallAnalyticsJobSummary }

function TCallAnalyticsJobSummary.Obj: TCallAnalyticsJobSummary;
begin
  Result := Self;
end;

function TCallAnalyticsJobSummary.GetCallAnalyticsJobName: string;
begin
  Result := FCallAnalyticsJobName.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetCallAnalyticsJobName(const Value: string);
begin
  FCallAnalyticsJobName := Value;
end;

function TCallAnalyticsJobSummary.IsSetCallAnalyticsJobName: Boolean;
begin
  Result := FCallAnalyticsJobName.HasValue;
end;

function TCallAnalyticsJobSummary.GetCallAnalyticsJobStatus: TCallAnalyticsJobStatus;
begin
  Result := FCallAnalyticsJobStatus.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetCallAnalyticsJobStatus(const Value: TCallAnalyticsJobStatus);
begin
  FCallAnalyticsJobStatus := Value;
end;

function TCallAnalyticsJobSummary.IsSetCallAnalyticsJobStatus: Boolean;
begin
  Result := FCallAnalyticsJobStatus.HasValue;
end;

function TCallAnalyticsJobSummary.GetCompletionTime: TDateTime;
begin
  Result := FCompletionTime.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetCompletionTime(const Value: TDateTime);
begin
  FCompletionTime := Value;
end;

function TCallAnalyticsJobSummary.IsSetCompletionTime: Boolean;
begin
  Result := FCompletionTime.HasValue;
end;

function TCallAnalyticsJobSummary.GetCreationTime: TDateTime;
begin
  Result := FCreationTime.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetCreationTime(const Value: TDateTime);
begin
  FCreationTime := Value;
end;

function TCallAnalyticsJobSummary.IsSetCreationTime: Boolean;
begin
  Result := FCreationTime.HasValue;
end;

function TCallAnalyticsJobSummary.GetFailureReason: string;
begin
  Result := FFailureReason.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetFailureReason(const Value: string);
begin
  FFailureReason := Value;
end;

function TCallAnalyticsJobSummary.IsSetFailureReason: Boolean;
begin
  Result := FFailureReason.HasValue;
end;

function TCallAnalyticsJobSummary.GetLanguageCode: TLanguageCode;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetLanguageCode(const Value: TLanguageCode);
begin
  FLanguageCode := Value;
end;

function TCallAnalyticsJobSummary.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCallAnalyticsJobSummary.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TCallAnalyticsJobSummary.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TCallAnalyticsJobSummary.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

end.
