unit AWS.Translate.Model.StartTextTranslationJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Translate.Enums;

type
  TStartTextTranslationJobResponse = class;
  
  IStartTextTranslationJobResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function Obj: TStartTextTranslationJobResponse;
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
  end;
  
  TStartTextTranslationJobResponse = class(TAmazonWebServiceResponse, IStartTextTranslationJobResponse)
  strict private
    FJobId: Nullable<string>;
    FJobStatus: Nullable<TJobStatus>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
  strict protected
    function Obj: TStartTextTranslationJobResponse;
  public
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
  end;
  
implementation

{ TStartTextTranslationJobResponse }

function TStartTextTranslationJobResponse.Obj: TStartTextTranslationJobResponse;
begin
  Result := Self;
end;

function TStartTextTranslationJobResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStartTextTranslationJobResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStartTextTranslationJobResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TStartTextTranslationJobResponse.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TStartTextTranslationJobResponse.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TStartTextTranslationJobResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

end.
