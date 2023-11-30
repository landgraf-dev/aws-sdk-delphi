unit AWS.Translate.Model.StopTextTranslationJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.Translate.Enums;

type
  TStopTextTranslationJobResponse = class;
  
  IStopTextTranslationJobResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
    function Obj: TStopTextTranslationJobResponse;
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
  end;
  
  TStopTextTranslationJobResponse = class(TAmazonWebServiceResponse, IStopTextTranslationJobResponse)
  strict private
    FJobId: Nullable<string>;
    FJobStatus: Nullable<TJobStatus>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetJobStatus: TJobStatus;
    procedure SetJobStatus(const Value: TJobStatus);
  strict protected
    function Obj: TStopTextTranslationJobResponse;
  public
    function IsSetJobId: Boolean;
    function IsSetJobStatus: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property JobStatus: TJobStatus read GetJobStatus write SetJobStatus;
  end;
  
implementation

{ TStopTextTranslationJobResponse }

function TStopTextTranslationJobResponse.Obj: TStopTextTranslationJobResponse;
begin
  Result := Self;
end;

function TStopTextTranslationJobResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TStopTextTranslationJobResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TStopTextTranslationJobResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TStopTextTranslationJobResponse.GetJobStatus: TJobStatus;
begin
  Result := FJobStatus.ValueOrDefault;
end;

procedure TStopTextTranslationJobResponse.SetJobStatus(const Value: TJobStatus);
begin
  FJobStatus := Value;
end;

function TStopTextTranslationJobResponse.IsSetJobStatus: Boolean;
begin
  Result := FJobStatus.HasValue;
end;

end.
