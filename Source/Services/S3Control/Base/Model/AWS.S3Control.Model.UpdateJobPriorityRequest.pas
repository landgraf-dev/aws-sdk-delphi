unit AWS.S3Control.Model.UpdateJobPriorityRequest;

interface

uses
  AWS.S3Control.Model.Request, 
  AWS.Nullable;

type
  TUpdateJobPriorityRequest = class;
  
  IUpdateJobPriorityRequest = interface
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function Obj: TUpdateJobPriorityRequest;
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    function IsSetPriority: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
    property Priority: Integer read GetPriority write SetPriority;
  end;
  
  TUpdateJobPriorityRequest = class(TAmazonS3ControlRequest, IUpdateJobPriorityRequest)
  strict private
    FAccountId: Nullable<string>;
    FJobId: Nullable<string>;
    FPriority: Nullable<Integer>;
    function GetAccountId: string;
    procedure SetAccountId(const Value: string);
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
  strict protected
    function Obj: TUpdateJobPriorityRequest;
  public
    function IsSetAccountId: Boolean;
    function IsSetJobId: Boolean;
    function IsSetPriority: Boolean;
    property AccountId: string read GetAccountId write SetAccountId;
    property JobId: string read GetJobId write SetJobId;
    property Priority: Integer read GetPriority write SetPriority;
  end;
  
implementation

{ TUpdateJobPriorityRequest }

function TUpdateJobPriorityRequest.Obj: TUpdateJobPriorityRequest;
begin
  Result := Self;
end;

function TUpdateJobPriorityRequest.GetAccountId: string;
begin
  Result := FAccountId.ValueOrDefault;
end;

procedure TUpdateJobPriorityRequest.SetAccountId(const Value: string);
begin
  FAccountId := Value;
end;

function TUpdateJobPriorityRequest.IsSetAccountId: Boolean;
begin
  Result := FAccountId.HasValue;
end;

function TUpdateJobPriorityRequest.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TUpdateJobPriorityRequest.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TUpdateJobPriorityRequest.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TUpdateJobPriorityRequest.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TUpdateJobPriorityRequest.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TUpdateJobPriorityRequest.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

end.
