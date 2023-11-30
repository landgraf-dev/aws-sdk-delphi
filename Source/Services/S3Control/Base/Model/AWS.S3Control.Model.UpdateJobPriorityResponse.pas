unit AWS.S3Control.Model.UpdateJobPriorityResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TUpdateJobPriorityResponse = class;
  
  IUpdateJobPriorityResponse = interface(IAmazonWebServiceResponse)
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function Obj: TUpdateJobPriorityResponse;
    function IsSetJobId: Boolean;
    function IsSetPriority: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property Priority: Integer read GetPriority write SetPriority;
  end;
  
  TUpdateJobPriorityResponse = class(TAmazonWebServiceResponse, IUpdateJobPriorityResponse)
  strict private
    FJobId: Nullable<string>;
    FPriority: Nullable<Integer>;
    function GetJobId: string;
    procedure SetJobId(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
  strict protected
    function Obj: TUpdateJobPriorityResponse;
  public
    function IsSetJobId: Boolean;
    function IsSetPriority: Boolean;
    property JobId: string read GetJobId write SetJobId;
    property Priority: Integer read GetPriority write SetPriority;
  end;
  
implementation

{ TUpdateJobPriorityResponse }

function TUpdateJobPriorityResponse.Obj: TUpdateJobPriorityResponse;
begin
  Result := Self;
end;

function TUpdateJobPriorityResponse.GetJobId: string;
begin
  Result := FJobId.ValueOrDefault;
end;

procedure TUpdateJobPriorityResponse.SetJobId(const Value: string);
begin
  FJobId := Value;
end;

function TUpdateJobPriorityResponse.IsSetJobId: Boolean;
begin
  Result := FJobId.HasValue;
end;

function TUpdateJobPriorityResponse.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TUpdateJobPriorityResponse.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TUpdateJobPriorityResponse.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

end.
