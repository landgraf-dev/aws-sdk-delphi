unit AWS.SESv2.Model.DeliverabilityTestReport;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Enums;

type
  TDeliverabilityTestReport = class;
  
  IDeliverabilityTestReport = interface
    function GetCreateDate: TDateTime;
    procedure SetCreateDate(const Value: TDateTime);
    function GetDeliverabilityTestStatus: TDeliverabilityTestStatus;
    procedure SetDeliverabilityTestStatus(const Value: TDeliverabilityTestStatus);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetReportId: string;
    procedure SetReportId(const Value: string);
    function GetReportName: string;
    procedure SetReportName(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
    function Obj: TDeliverabilityTestReport;
    function IsSetCreateDate: Boolean;
    function IsSetDeliverabilityTestStatus: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetReportId: Boolean;
    function IsSetReportName: Boolean;
    function IsSetSubject: Boolean;
    property CreateDate: TDateTime read GetCreateDate write SetCreateDate;
    property DeliverabilityTestStatus: TDeliverabilityTestStatus read GetDeliverabilityTestStatus write SetDeliverabilityTestStatus;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property ReportId: string read GetReportId write SetReportId;
    property ReportName: string read GetReportName write SetReportName;
    property Subject: string read GetSubject write SetSubject;
  end;
  
  TDeliverabilityTestReport = class
  strict private
    FCreateDate: Nullable<TDateTime>;
    FDeliverabilityTestStatus: Nullable<TDeliverabilityTestStatus>;
    FFromEmailAddress: Nullable<string>;
    FReportId: Nullable<string>;
    FReportName: Nullable<string>;
    FSubject: Nullable<string>;
    function GetCreateDate: TDateTime;
    procedure SetCreateDate(const Value: TDateTime);
    function GetDeliverabilityTestStatus: TDeliverabilityTestStatus;
    procedure SetDeliverabilityTestStatus(const Value: TDeliverabilityTestStatus);
    function GetFromEmailAddress: string;
    procedure SetFromEmailAddress(const Value: string);
    function GetReportId: string;
    procedure SetReportId(const Value: string);
    function GetReportName: string;
    procedure SetReportName(const Value: string);
    function GetSubject: string;
    procedure SetSubject(const Value: string);
  strict protected
    function Obj: TDeliverabilityTestReport;
  public
    function IsSetCreateDate: Boolean;
    function IsSetDeliverabilityTestStatus: Boolean;
    function IsSetFromEmailAddress: Boolean;
    function IsSetReportId: Boolean;
    function IsSetReportName: Boolean;
    function IsSetSubject: Boolean;
    property CreateDate: TDateTime read GetCreateDate write SetCreateDate;
    property DeliverabilityTestStatus: TDeliverabilityTestStatus read GetDeliverabilityTestStatus write SetDeliverabilityTestStatus;
    property FromEmailAddress: string read GetFromEmailAddress write SetFromEmailAddress;
    property ReportId: string read GetReportId write SetReportId;
    property ReportName: string read GetReportName write SetReportName;
    property Subject: string read GetSubject write SetSubject;
  end;
  
implementation

{ TDeliverabilityTestReport }

function TDeliverabilityTestReport.Obj: TDeliverabilityTestReport;
begin
  Result := Self;
end;

function TDeliverabilityTestReport.GetCreateDate: TDateTime;
begin
  Result := FCreateDate.ValueOrDefault;
end;

procedure TDeliverabilityTestReport.SetCreateDate(const Value: TDateTime);
begin
  FCreateDate := Value;
end;

function TDeliverabilityTestReport.IsSetCreateDate: Boolean;
begin
  Result := FCreateDate.HasValue;
end;

function TDeliverabilityTestReport.GetDeliverabilityTestStatus: TDeliverabilityTestStatus;
begin
  Result := FDeliverabilityTestStatus.ValueOrDefault;
end;

procedure TDeliverabilityTestReport.SetDeliverabilityTestStatus(const Value: TDeliverabilityTestStatus);
begin
  FDeliverabilityTestStatus := Value;
end;

function TDeliverabilityTestReport.IsSetDeliverabilityTestStatus: Boolean;
begin
  Result := FDeliverabilityTestStatus.HasValue;
end;

function TDeliverabilityTestReport.GetFromEmailAddress: string;
begin
  Result := FFromEmailAddress.ValueOrDefault;
end;

procedure TDeliverabilityTestReport.SetFromEmailAddress(const Value: string);
begin
  FFromEmailAddress := Value;
end;

function TDeliverabilityTestReport.IsSetFromEmailAddress: Boolean;
begin
  Result := FFromEmailAddress.HasValue;
end;

function TDeliverabilityTestReport.GetReportId: string;
begin
  Result := FReportId.ValueOrDefault;
end;

procedure TDeliverabilityTestReport.SetReportId(const Value: string);
begin
  FReportId := Value;
end;

function TDeliverabilityTestReport.IsSetReportId: Boolean;
begin
  Result := FReportId.HasValue;
end;

function TDeliverabilityTestReport.GetReportName: string;
begin
  Result := FReportName.ValueOrDefault;
end;

procedure TDeliverabilityTestReport.SetReportName(const Value: string);
begin
  FReportName := Value;
end;

function TDeliverabilityTestReport.IsSetReportName: Boolean;
begin
  Result := FReportName.HasValue;
end;

function TDeliverabilityTestReport.GetSubject: string;
begin
  Result := FSubject.ValueOrDefault;
end;

procedure TDeliverabilityTestReport.SetSubject(const Value: string);
begin
  FSubject := Value;
end;

function TDeliverabilityTestReport.IsSetSubject: Boolean;
begin
  Result := FSubject.HasValue;
end;

end.
