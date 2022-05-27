unit AWS.Transcribe.Model.GetCallAnalyticsJobResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Transcribe.Model.CallAnalyticsJob;

type
  TGetCallAnalyticsJobResponse = class;
  
  IGetCallAnalyticsJobResponse = interface(IAmazonWebServiceResponse)
    function GetCallAnalyticsJob: TCallAnalyticsJob;
    procedure SetCallAnalyticsJob(const Value: TCallAnalyticsJob);
    function GetKeepCallAnalyticsJob: Boolean;
    procedure SetKeepCallAnalyticsJob(const Value: Boolean);
    function Obj: TGetCallAnalyticsJobResponse;
    function IsSetCallAnalyticsJob: Boolean;
    property CallAnalyticsJob: TCallAnalyticsJob read GetCallAnalyticsJob write SetCallAnalyticsJob;
    property KeepCallAnalyticsJob: Boolean read GetKeepCallAnalyticsJob write SetKeepCallAnalyticsJob;
  end;
  
  TGetCallAnalyticsJobResponse = class(TAmazonWebServiceResponse, IGetCallAnalyticsJobResponse)
  strict private
    FCallAnalyticsJob: TCallAnalyticsJob;
    FKeepCallAnalyticsJob: Boolean;
    function GetCallAnalyticsJob: TCallAnalyticsJob;
    procedure SetCallAnalyticsJob(const Value: TCallAnalyticsJob);
    function GetKeepCallAnalyticsJob: Boolean;
    procedure SetKeepCallAnalyticsJob(const Value: Boolean);
  strict protected
    function Obj: TGetCallAnalyticsJobResponse;
  public
    destructor Destroy; override;
    function IsSetCallAnalyticsJob: Boolean;
    property CallAnalyticsJob: TCallAnalyticsJob read GetCallAnalyticsJob write SetCallAnalyticsJob;
    property KeepCallAnalyticsJob: Boolean read GetKeepCallAnalyticsJob write SetKeepCallAnalyticsJob;
  end;
  
implementation

{ TGetCallAnalyticsJobResponse }

destructor TGetCallAnalyticsJobResponse.Destroy;
begin
  CallAnalyticsJob := nil;
  inherited;
end;

function TGetCallAnalyticsJobResponse.Obj: TGetCallAnalyticsJobResponse;
begin
  Result := Self;
end;

function TGetCallAnalyticsJobResponse.GetCallAnalyticsJob: TCallAnalyticsJob;
begin
  Result := FCallAnalyticsJob;
end;

procedure TGetCallAnalyticsJobResponse.SetCallAnalyticsJob(const Value: TCallAnalyticsJob);
begin
  if FCallAnalyticsJob <> Value then
  begin
    if not KeepCallAnalyticsJob then
      FCallAnalyticsJob.Free;
    FCallAnalyticsJob := Value;
  end;
end;

function TGetCallAnalyticsJobResponse.GetKeepCallAnalyticsJob: Boolean;
begin
  Result := FKeepCallAnalyticsJob;
end;

procedure TGetCallAnalyticsJobResponse.SetKeepCallAnalyticsJob(const Value: Boolean);
begin
  FKeepCallAnalyticsJob := Value;
end;

function TGetCallAnalyticsJobResponse.IsSetCallAnalyticsJob: Boolean;
begin
  Result := FCallAnalyticsJob <> nil;
end;

end.
