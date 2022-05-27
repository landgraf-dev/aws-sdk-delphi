unit AWS.Transcribe.Model.StartCallAnalyticsJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CallAnalyticsJob;

type
  TStartCallAnalyticsJobResponse = class;
  
  IStartCallAnalyticsJobResponse = interface(IAmazonWebServiceResponse)
    function GetCallAnalyticsJob: TCallAnalyticsJob;
    procedure SetCallAnalyticsJob(const Value: TCallAnalyticsJob);
    function GetKeepCallAnalyticsJob: Boolean;
    procedure SetKeepCallAnalyticsJob(const Value: Boolean);
    function Obj: TStartCallAnalyticsJobResponse;
    function IsSetCallAnalyticsJob: Boolean;
    property CallAnalyticsJob: TCallAnalyticsJob read GetCallAnalyticsJob write SetCallAnalyticsJob;
    property KeepCallAnalyticsJob: Boolean read GetKeepCallAnalyticsJob write SetKeepCallAnalyticsJob;
  end;
  
  TStartCallAnalyticsJobResponse = class(TAmazonWebServiceResponse, IStartCallAnalyticsJobResponse)
  strict private
    FCallAnalyticsJob: TCallAnalyticsJob;
    FKeepCallAnalyticsJob: Boolean;
    function GetCallAnalyticsJob: TCallAnalyticsJob;
    procedure SetCallAnalyticsJob(const Value: TCallAnalyticsJob);
    function GetKeepCallAnalyticsJob: Boolean;
    procedure SetKeepCallAnalyticsJob(const Value: Boolean);
  strict protected
    function Obj: TStartCallAnalyticsJobResponse;
  public
    destructor Destroy; override;
    function IsSetCallAnalyticsJob: Boolean;
    property CallAnalyticsJob: TCallAnalyticsJob read GetCallAnalyticsJob write SetCallAnalyticsJob;
    property KeepCallAnalyticsJob: Boolean read GetKeepCallAnalyticsJob write SetKeepCallAnalyticsJob;
  end;
  
implementation

{ TStartCallAnalyticsJobResponse }

destructor TStartCallAnalyticsJobResponse.Destroy;
begin
  CallAnalyticsJob := nil;
  inherited;
end;

function TStartCallAnalyticsJobResponse.Obj: TStartCallAnalyticsJobResponse;
begin
  Result := Self;
end;

function TStartCallAnalyticsJobResponse.GetCallAnalyticsJob: TCallAnalyticsJob;
begin
  Result := FCallAnalyticsJob;
end;

procedure TStartCallAnalyticsJobResponse.SetCallAnalyticsJob(const Value: TCallAnalyticsJob);
begin
  if FCallAnalyticsJob <> Value then
  begin
    if not KeepCallAnalyticsJob then
      FCallAnalyticsJob.Free;
    FCallAnalyticsJob := Value;
  end;
end;

function TStartCallAnalyticsJobResponse.GetKeepCallAnalyticsJob: Boolean;
begin
  Result := FKeepCallAnalyticsJob;
end;

procedure TStartCallAnalyticsJobResponse.SetKeepCallAnalyticsJob(const Value: Boolean);
begin
  FKeepCallAnalyticsJob := Value;
end;

function TStartCallAnalyticsJobResponse.IsSetCallAnalyticsJob: Boolean;
begin
  Result := FCallAnalyticsJob <> nil;
end;

end.
