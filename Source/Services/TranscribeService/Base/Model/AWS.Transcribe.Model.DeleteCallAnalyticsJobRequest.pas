unit AWS.Transcribe.Model.DeleteCallAnalyticsJobRequest;

interface

uses
  AWS.Transcribe.Model.Request, 
  AWS.Nullable;

type
  TDeleteCallAnalyticsJobRequest = class;
  
  IDeleteCallAnalyticsJobRequest = interface
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
    function Obj: TDeleteCallAnalyticsJobRequest;
    function IsSetCallAnalyticsJobName: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
  end;
  
  TDeleteCallAnalyticsJobRequest = class(TAmazonTranscribeServiceRequest, IDeleteCallAnalyticsJobRequest)
  strict private
    FCallAnalyticsJobName: Nullable<string>;
    function GetCallAnalyticsJobName: string;
    procedure SetCallAnalyticsJobName(const Value: string);
  strict protected
    function Obj: TDeleteCallAnalyticsJobRequest;
  public
    function IsSetCallAnalyticsJobName: Boolean;
    property CallAnalyticsJobName: string read GetCallAnalyticsJobName write SetCallAnalyticsJobName;
  end;
  
implementation

{ TDeleteCallAnalyticsJobRequest }

function TDeleteCallAnalyticsJobRequest.Obj: TDeleteCallAnalyticsJobRequest;
begin
  Result := Self;
end;

function TDeleteCallAnalyticsJobRequest.GetCallAnalyticsJobName: string;
begin
  Result := FCallAnalyticsJobName.ValueOrDefault;
end;

procedure TDeleteCallAnalyticsJobRequest.SetCallAnalyticsJobName(const Value: string);
begin
  FCallAnalyticsJobName := Value;
end;

function TDeleteCallAnalyticsJobRequest.IsSetCallAnalyticsJobName: Boolean;
begin
  Result := FCallAnalyticsJobName.HasValue;
end;

end.
