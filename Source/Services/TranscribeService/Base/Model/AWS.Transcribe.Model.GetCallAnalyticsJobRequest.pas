unit AWS.Transcribe.Model.GetCallAnalyticsJobRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.Request;

type
  TGetCallAnalyticsJobRequest = class;
  
  IGetCallAnalyticsJobRequest = interface
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function Obj: TGetCallAnalyticsJobRequest;
    function IsSetCallAnalyticsJobName: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
  end;
  
  TGetCallAnalyticsJobRequest = class(TAmazonTranscribeServiceRequest, IGetCallAnalyticsJobRequest)
  strict private
    FCallAnalyticsJobName: Nullable<string>;
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
  strict protected
    function Obj: TGetCallAnalyticsJobRequest;
  public
    function IsSetCallAnalyticsJobName: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
  end;
  
implementation

{ TGetCallAnalyticsJobRequest }

function TGetCallAnalyticsJobRequest.Obj: TGetCallAnalyticsJobRequest;
begin
  Result := Self;
end;

function TGetCallAnalyticsJobRequest.GetCallAnalyticsJobName: string;
begin
  Result := FCallAnalyticsJobName.ValueOrDefault;
end;

procedure TGetCallAnalyticsJobRequest.SetCallAnalyticsJobName(const Value: string);
begin
  FCallAnalyticsJobName := Value;
end;

function TGetCallAnalyticsJobRequest.IsSetCallAnalyticsJobName: Boolean;
begin
  Result := FCallAnalyticsJobName.HasValue;
end;

end.
