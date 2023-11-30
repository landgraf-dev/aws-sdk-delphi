unit AWS.SES.Model.GetSendQuotaResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetSendQuotaResponse = class;
  
  IGetSendQuotaResponse = interface(IAmazonWebServiceResponse)
    function GetMax24HourSend: Double;
    procedure SetMax24HourSend(const Value: Double);
    function GetMaxSendRate: Double;
    procedure SetMaxSendRate(const Value: Double);
    function GetSentLast24Hours: Double;
    procedure SetSentLast24Hours(const Value: Double);
    function Obj: TGetSendQuotaResponse;
    function IsSetMax24HourSend: Boolean;
    function IsSetMaxSendRate: Boolean;
    function IsSetSentLast24Hours: Boolean;
    property Max24HourSend: Double read GetMax24HourSend write SetMax24HourSend;
    property MaxSendRate: Double read GetMaxSendRate write SetMaxSendRate;
    property SentLast24Hours: Double read GetSentLast24Hours write SetSentLast24Hours;
  end;
  
  TGetSendQuotaResponse = class(TAmazonWebServiceResponse, IGetSendQuotaResponse)
  strict private
    FMax24HourSend: Nullable<Double>;
    FMaxSendRate: Nullable<Double>;
    FSentLast24Hours: Nullable<Double>;
    function GetMax24HourSend: Double;
    procedure SetMax24HourSend(const Value: Double);
    function GetMaxSendRate: Double;
    procedure SetMaxSendRate(const Value: Double);
    function GetSentLast24Hours: Double;
    procedure SetSentLast24Hours(const Value: Double);
  strict protected
    function Obj: TGetSendQuotaResponse;
  public
    function IsSetMax24HourSend: Boolean;
    function IsSetMaxSendRate: Boolean;
    function IsSetSentLast24Hours: Boolean;
    property Max24HourSend: Double read GetMax24HourSend write SetMax24HourSend;
    property MaxSendRate: Double read GetMaxSendRate write SetMaxSendRate;
    property SentLast24Hours: Double read GetSentLast24Hours write SetSentLast24Hours;
  end;
  
implementation

{ TGetSendQuotaResponse }

function TGetSendQuotaResponse.Obj: TGetSendQuotaResponse;
begin
  Result := Self;
end;

function TGetSendQuotaResponse.GetMax24HourSend: Double;
begin
  Result := FMax24HourSend.ValueOrDefault;
end;

procedure TGetSendQuotaResponse.SetMax24HourSend(const Value: Double);
begin
  FMax24HourSend := Value;
end;

function TGetSendQuotaResponse.IsSetMax24HourSend: Boolean;
begin
  Result := FMax24HourSend.HasValue;
end;

function TGetSendQuotaResponse.GetMaxSendRate: Double;
begin
  Result := FMaxSendRate.ValueOrDefault;
end;

procedure TGetSendQuotaResponse.SetMaxSendRate(const Value: Double);
begin
  FMaxSendRate := Value;
end;

function TGetSendQuotaResponse.IsSetMaxSendRate: Boolean;
begin
  Result := FMaxSendRate.HasValue;
end;

function TGetSendQuotaResponse.GetSentLast24Hours: Double;
begin
  Result := FSentLast24Hours.ValueOrDefault;
end;

procedure TGetSendQuotaResponse.SetSentLast24Hours(const Value: Double);
begin
  FSentLast24Hours := Value;
end;

function TGetSendQuotaResponse.IsSetSentLast24Hours: Boolean;
begin
  Result := FSentLast24Hours.HasValue;
end;

end.
