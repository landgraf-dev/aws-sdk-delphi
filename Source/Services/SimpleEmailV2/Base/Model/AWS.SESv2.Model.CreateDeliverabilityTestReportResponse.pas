unit AWS.SESv2.Model.CreateDeliverabilityTestReportResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SESv2.Enums;

type
  TCreateDeliverabilityTestReportResponse = class;
  
  ICreateDeliverabilityTestReportResponse = interface(IAmazonWebServiceResponse)
    function GetDeliverabilityTestStatus: TDeliverabilityTestStatus;
    procedure SetDeliverabilityTestStatus(const Value: TDeliverabilityTestStatus);
    function GetReportId: string;
    procedure SetReportId(const Value: string);
    function Obj: TCreateDeliverabilityTestReportResponse;
    function IsSetDeliverabilityTestStatus: Boolean;
    function IsSetReportId: Boolean;
    property DeliverabilityTestStatus: TDeliverabilityTestStatus read GetDeliverabilityTestStatus write SetDeliverabilityTestStatus;
    property ReportId: string read GetReportId write SetReportId;
  end;
  
  TCreateDeliverabilityTestReportResponse = class(TAmazonWebServiceResponse, ICreateDeliverabilityTestReportResponse)
  strict private
    FDeliverabilityTestStatus: Nullable<TDeliverabilityTestStatus>;
    FReportId: Nullable<string>;
    function GetDeliverabilityTestStatus: TDeliverabilityTestStatus;
    procedure SetDeliverabilityTestStatus(const Value: TDeliverabilityTestStatus);
    function GetReportId: string;
    procedure SetReportId(const Value: string);
  strict protected
    function Obj: TCreateDeliverabilityTestReportResponse;
  public
    function IsSetDeliverabilityTestStatus: Boolean;
    function IsSetReportId: Boolean;
    property DeliverabilityTestStatus: TDeliverabilityTestStatus read GetDeliverabilityTestStatus write SetDeliverabilityTestStatus;
    property ReportId: string read GetReportId write SetReportId;
  end;
  
implementation

{ TCreateDeliverabilityTestReportResponse }

function TCreateDeliverabilityTestReportResponse.Obj: TCreateDeliverabilityTestReportResponse;
begin
  Result := Self;
end;

function TCreateDeliverabilityTestReportResponse.GetDeliverabilityTestStatus: TDeliverabilityTestStatus;
begin
  Result := FDeliverabilityTestStatus.ValueOrDefault;
end;

procedure TCreateDeliverabilityTestReportResponse.SetDeliverabilityTestStatus(const Value: TDeliverabilityTestStatus);
begin
  FDeliverabilityTestStatus := Value;
end;

function TCreateDeliverabilityTestReportResponse.IsSetDeliverabilityTestStatus: Boolean;
begin
  Result := FDeliverabilityTestStatus.HasValue;
end;

function TCreateDeliverabilityTestReportResponse.GetReportId: string;
begin
  Result := FReportId.ValueOrDefault;
end;

procedure TCreateDeliverabilityTestReportResponse.SetReportId(const Value: string);
begin
  FReportId := Value;
end;

function TCreateDeliverabilityTestReportResponse.IsSetReportId: Boolean;
begin
  Result := FReportId.HasValue;
end;

end.
