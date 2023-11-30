unit AWS.S3Control.Model.UpdateJobStatusRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable, 
  AWS.S3Control.Enums;

type
  TUpdateJobStatusRequest = class;
  
  IUpdateJobStatusRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetRequestedJobStatus: TRequestedJobStatus;
    procedure SetRequestedJobStatus(const Value: TRequestedJobStatus);
    function GetStatusUpdateReason: string;
    procedure SetStatusUpdateReason(const Value: string);
    function Obj: TUpdateJobStatusRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    function IsSetRequestedJobStatus: Boolean;
    function IsSetStatusUpdateReason: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
    property RequestedJobStatus: TRequestedJobStatus read GetRequestedJobStatus write SetRequestedJobStatus;
    property StatusUpdateReason: string read GetStatusUpdateReason write SetStatusUpdateReason;
  end;
  
  TUpdateJobStatusRequest = class(TAmazonS3ControlRequest, IUpdateJobStatusRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobId: Nullable<string>;
    FRequestedJobStatus: Nullable<TRequestedJobStatus>;
    FStatusUpdateReason: Nullable<string>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetRequestedJobStatus: TRequestedJobStatus;
    procedure SetRequestedJobStatus(const Value: TRequestedJobStatus);
    function GetStatusUpdateReason: string;
    procedure SetStatusUpdateReason(const Value: string);
  strict protected
    function Obj: TUpdateJobStatusRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    function IsSetRequestedJobStatus: Boolean;
    function IsSetStatusUpdateReason: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
    property RequestedJobStatus: TRequestedJobStatus read GetRequestedJobStatus write SetRequestedJobStatus;
    property StatusUpdateReason: string read GetStatusUpdateReason write SetStatusUpdateReason;
  end;
  
implementation

{ TUpdateJobStatusRequest }

function TUpdateJobStatusRequest.Obj: TUpdateJobStatusRequest;
begin
  Result := Self;
end;

function TUpdateJobStatusRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TUpdateJobStatusRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TUpdateJobStatusRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TUpdateJobStatusRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TUpdateJobStatusRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TUpdateJobStatusRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TUpdateJobStatusRequest.GetRequestedJobStatus: TRequestedJobStatus;
begin
  Result := FRequestedJobStatus.ValueOrDefault;
end;

procedure TUpdateJobStatusRequest.SetRequestedJobStatus(const Value: TRequestedJobStatus);
begin
  FRequestedJobStatus := Value;
end;

function TUpdateJobStatusRequest.IsSetRequestedJobStatus: Boolean;
begin
  Result := FRequestedJobStatus.HasValue;
end;

function TUpdateJobStatusRequest.GetStatusUpdateReason: string;
begin
  Result := FStatusUpdateReason.ValueOrDefault;
end;

procedure TUpdateJobStatusRequest.SetStatusUpdateReason(const Value: string);
begin
  FStatusUpdateReason := Value;
end;

function TUpdateJobStatusRequest.IsSetStatusUpdateReason: Boolean;
begin
  Result := FStatusUpdateReason.HasValue;
end;

end.
