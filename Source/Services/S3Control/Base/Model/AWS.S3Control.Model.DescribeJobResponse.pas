unit AWS.S3Control.Model.DescribeJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3Control.Model.JobDescriptor;

type
  TDescribeJobResponse = class;
  
  IDescribeJobResponse = interface(IAmazonWebServiceResponse)
    function GetJob: TJobDescriptor;
    procedure SetJob(const Value: TJobDescriptor);
    function GetKeepJob: Boolean;
    procedure SetKeepJob(const Value: Boolean);
    function Obj: TDescribeJobResponse;
    function IsSetJob: Boolean;
    property Job: TJobDescriptor read GetJob write SetJob;
    property KeepJob: Boolean read GetKeepJob write SetKeepJob;
  end;
  
  TDescribeJobResponse = class(TAmazonWebServiceResponse, IDescribeJobResponse)
  strict private
    FJob: TJobDescriptor;
    FKeepJob: Boolean;
    function GetJob: TJobDescriptor;
    procedure SetJob(const Value: TJobDescriptor);
    function GetKeepJob: Boolean;
    procedure SetKeepJob(const Value: Boolean);
  strict protected
    function Obj: TDescribeJobResponse;
  public
    destructor Destroy; override;
    function IsSetJob: Boolean;
    property Job: TJobDescriptor read GetJob write SetJob;
    property KeepJob: Boolean read GetKeepJob write SetKeepJob;
  end;
  
implementation

{ TDescribeJobResponse }

destructor TDescribeJobResponse.Destroy;
begin
  Job := nil;
  inherited;
end;

function TDescribeJobResponse.Obj: TDescribeJobResponse;
begin
  Result := Self;
end;

function TDescribeJobResponse.GetJob: TJobDescriptor;
begin
  Result := FJob;
end;

procedure TDescribeJobResponse.SetJob(const Value: TJobDescriptor);
begin
  if FJob <> Value then
  begin
    if not KeepJob then
      FJob.Free;
    FJob := Value;
  end;
end;

function TDescribeJobResponse.GetKeepJob: Boolean;
begin
  Result := FKeepJob;
end;

procedure TDescribeJobResponse.SetKeepJob(const Value: Boolean);
begin
  FKeepJob := Value;
end;

function TDescribeJobResponse.IsSetJob: Boolean;
begin
  Result := FJob <> nil;
end;

end.
