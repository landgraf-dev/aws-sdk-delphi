unit AWS.SESv2.Model.GetDomainStatisticsReportRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TGetDomainStatisticsReportRequest = class;
  
  IGetDomainStatisticsReportRequest = interface
    function GetDomain: string;
    procedure SetDomain(const Value: string);
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
    function Obj: TGetDomainStatisticsReportRequest;
    function IsSetDomain: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetStartDate: Boolean;
    property Domain: string read GetDomain write SetDomain;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
  end;
  
  TGetDomainStatisticsReportRequest = class(TAmazonSimpleEmailServiceV2Request, IGetDomainStatisticsReportRequest)
  strict private
    FDomain: Nullable<string>;
    FEndDate: Nullable<TDateTime>;
    FStartDate: Nullable<TDateTime>;
    function GetDomain: string;
    procedure SetDomain(const Value: string);
    function GetEndDate: TDateTime;
    procedure SetEndDate(const Value: TDateTime);
    function GetStartDate: TDateTime;
    procedure SetStartDate(const Value: TDateTime);
  strict protected
    function Obj: TGetDomainStatisticsReportRequest;
  public
    function IsSetDomain: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetStartDate: Boolean;
    property Domain: string read GetDomain write SetDomain;
    property EndDate: TDateTime read GetEndDate write SetEndDate;
    property StartDate: TDateTime read GetStartDate write SetStartDate;
  end;
  
implementation

{ TGetDomainStatisticsReportRequest }

function TGetDomainStatisticsReportRequest.Obj: TGetDomainStatisticsReportRequest;
begin
  Result := Self;
end;

function TGetDomainStatisticsReportRequest.GetDomain: string;
begin
  Result := FDomain.ValueOrDefault;
end;

procedure TGetDomainStatisticsReportRequest.SetDomain(const Value: string);
begin
  FDomain := Value;
end;

function TGetDomainStatisticsReportRequest.IsSetDomain: Boolean;
begin
  Result := FDomain.HasValue;
end;

function TGetDomainStatisticsReportRequest.GetEndDate: TDateTime;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TGetDomainStatisticsReportRequest.SetEndDate(const Value: TDateTime);
begin
  FEndDate := Value;
end;

function TGetDomainStatisticsReportRequest.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TGetDomainStatisticsReportRequest.GetStartDate: TDateTime;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TGetDomainStatisticsReportRequest.SetStartDate(const Value: TDateTime);
begin
  FStartDate := Value;
end;

function TGetDomainStatisticsReportRequest.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

end.
