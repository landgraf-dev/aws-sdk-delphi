unit AWS.SESv2.Model.GetDeliverabilityTestReportRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TGetDeliverabilityTestReportRequest = class;
  
  IGetDeliverabilityTestReportRequest = interface
    function GetReportId: string;
    procedure SetReportId(const Value: string);
    function Obj: TGetDeliverabilityTestReportRequest;
    function IsSetReportId: Boolean;
    property ReportId: string read GetReportId write SetReportId;
  end;
  
  TGetDeliverabilityTestReportRequest = class(TAmazonSimpleEmailServiceV2Request, IGetDeliverabilityTestReportRequest)
  strict private
    FReportId: Nullable<string>;
    function GetReportId: string;
    procedure SetReportId(const Value: string);
  strict protected
    function Obj: TGetDeliverabilityTestReportRequest;
  public
    function IsSetReportId: Boolean;
    property ReportId: string read GetReportId write SetReportId;
  end;
  
implementation

{ TGetDeliverabilityTestReportRequest }

function TGetDeliverabilityTestReportRequest.Obj: TGetDeliverabilityTestReportRequest;
begin
  Result := Self;
end;

function TGetDeliverabilityTestReportRequest.GetReportId: string;
begin
  Result := FReportId.ValueOrDefault;
end;

procedure TGetDeliverabilityTestReportRequest.SetReportId(const Value: string);
begin
  FReportId := Value;
end;

function TGetDeliverabilityTestReportRequest.IsSetReportId: Boolean;
begin
  Result := FReportId.HasValue;
end;

end.
