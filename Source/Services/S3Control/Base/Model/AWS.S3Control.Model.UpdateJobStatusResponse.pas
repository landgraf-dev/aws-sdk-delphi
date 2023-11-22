unit AWS.S3Control.Model.UpdateJobStatusResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3Control.Enums;

type
  TUpdateJobStatusResponse = class;
  
  IUpdateJobStatusResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetStatus: TJobStatus;
    procedure SetStatus(const Value: TJobStatus);
    function GetStatusUpdateReason: string;
    procedure SetStatusUpdateReason(const Value: string);
    function Obj: TUpdateJobStatusResponse;
    function IsSetJobId: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusUpdateReason: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property Status: TJobStatus read GetStatus write SetStatus;
    property StatusUpdateReason: string read GetStatusUpdateReason write SetStatusUpdateReason;
  end;
  
  TUpdateJobStatusResponse = class(TAmazonWebServiceResponse, IUpdateJobStatusResponse)
  strict private
    FJobId: Nullable<string>;
    FStatus: Nullable<TJobStatus>;
    FStatusUpdateReason: Nullable<string>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetStatus: TJobStatus;
    procedure SetStatus(const Value: TJobStatus);
    function GetStatusUpdateReason: string;
    procedure SetStatusUpdateReason(const Value: string);
  strict protected
    function Obj: TUpdateJobStatusResponse;
  public
    function IsSetJobId: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusUpdateReason: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property Status: TJobStatus read GetStatus write SetStatus;
    property StatusUpdateReason: string read GetStatusUpdateReason write SetStatusUpdateReason;
  end;
  
implementation

{ TUpdateJobStatusResponse }

function TUpdateJobStatusResponse.Obj: TUpdateJobStatusResponse;
begin
  Result := Self;
end;

function TUpdateJobStatusResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TUpdateJobStatusResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TUpdateJobStatusResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TUpdateJobStatusResponse.GetStatus: TJobStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TUpdateJobStatusResponse.SetStatus(const Value: TJobStatus);
begin
  FStatus := Value;
end;

function TUpdateJobStatusResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TUpdateJobStatusResponse.GetStatusUpdateReason: string;
begin
  Result := FStatusUpdateReason.ValueOrDefault;
end;

procedure TUpdateJobStatusResponse.SetStatusUpdateReason(const Value: string);
begin
  FStatusUpdateReason := Value;
end;

function TUpdateJobStatusResponse.IsSetStatusUpdateReason: Boolean;
begin
  Result := FStatusUpdateReason.HasValue;
end;

end.
