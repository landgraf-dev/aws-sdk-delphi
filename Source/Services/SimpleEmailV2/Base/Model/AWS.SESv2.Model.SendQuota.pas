unit AWS.SESv2.Model.SendQuota;

interface

uses
  AWS.Nullable;

type
  TSendQuota = class;
  
  ISendQuota = interface
    function GetMax24HourSend: Double;
    procedure SetMax24HourSend(const Value: Double);
    function GetMaxSendRate: Double;
    procedure SetMaxSendRate(const Value: Double);
    function GetSentLast24Hours: Double;
    procedure SetSentLast24Hours(const Value: Double);
    function Obj: TSendQuota;
    function IsSetMax24HourSend: Boolean;
    function IsSetMaxSendRate: Boolean;
    function IsSetSentLast24Hours: Boolean;
    property Max24HourSend: Double read GetMax24HourSend write SetMax24HourSend;
    property MaxSendRate: Double read GetMaxSendRate write SetMaxSendRate;
    property SentLast24Hours: Double read GetSentLast24Hours write SetSentLast24Hours;
  end;
  
  TSendQuota = class
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
    function Obj: TSendQuota;
  public
    function IsSetMax24HourSend: Boolean;
    function IsSetMaxSendRate: Boolean;
    function IsSetSentLast24Hours: Boolean;
    property Max24HourSend: Double read GetMax24HourSend write SetMax24HourSend;
    property MaxSendRate: Double read GetMaxSendRate write SetMaxSendRate;
    property SentLast24Hours: Double read GetSentLast24Hours write SetSentLast24Hours;
  end;
  
implementation

{ TSendQuota }

function TSendQuota.Obj: TSendQuota;
begin
  Result := Self;
end;

function TSendQuota.GetMax24HourSend: Double;
begin
  Result := FMax24HourSend.ValueOrDefault;
end;

procedure TSendQuota.SetMax24HourSend(const Value: Double);
begin
  FMax24HourSend := Value;
end;

function TSendQuota.IsSetMax24HourSend: Boolean;
begin
  Result := FMax24HourSend.HasValue;
end;

function TSendQuota.GetMaxSendRate: Double;
begin
  Result := FMaxSendRate.ValueOrDefault;
end;

procedure TSendQuota.SetMaxSendRate(const Value: Double);
begin
  FMaxSendRate := Value;
end;

function TSendQuota.IsSetMaxSendRate: Boolean;
begin
  Result := FMaxSendRate.HasValue;
end;

function TSendQuota.GetSentLast24Hours: Double;
begin
  Result := FSentLast24Hours.ValueOrDefault;
end;

procedure TSendQuota.SetSentLast24Hours(const Value: Double);
begin
  FSentLast24Hours := Value;
end;

function TSendQuota.IsSetSentLast24Hours: Boolean;
begin
  Result := FSentLast24Hours.HasValue;
end;

end.
