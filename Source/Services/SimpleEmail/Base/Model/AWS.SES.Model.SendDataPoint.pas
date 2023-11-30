unit AWS.SES.Model.SendDataPoint;

interface

uses
  AWS.Nullable;

type
  TSendDataPoint = class;
  
  ISendDataPoint = interface
    function GetBounces: Int64;
    procedure SetBounces(const Value: Int64);
    function GetComplaints: Int64;
    procedure SetComplaints(const Value: Int64);
    function GetDeliveryAttempts: Int64;
    procedure SetDeliveryAttempts(const Value: Int64);
    function GetRejects: Int64;
    procedure SetRejects(const Value: Int64);
    function GetTimestamp: TDateTime;
    procedure SetTimestamp(const Value: TDateTime);
    function Obj: TSendDataPoint;
    function IsSetBounces: Boolean;
    function IsSetComplaints: Boolean;
    function IsSetDeliveryAttempts: Boolean;
    function IsSetRejects: Boolean;
    function IsSetTimestamp: Boolean;
    property Bounces: Int64 read GetBounces write SetBounces;
    property Complaints: Int64 read GetComplaints write SetComplaints;
    property DeliveryAttempts: Int64 read GetDeliveryAttempts write SetDeliveryAttempts;
    property Rejects: Int64 read GetRejects write SetRejects;
    property Timestamp: TDateTime read GetTimestamp write SetTimestamp;
  end;
  
  TSendDataPoint = class
  strict private
    FBounces: Nullable<Int64>;
    FComplaints: Nullable<Int64>;
    FDeliveryAttempts: Nullable<Int64>;
    FRejects: Nullable<Int64>;
    FTimestamp: Nullable<TDateTime>;
    function GetBounces: Int64;
    procedure SetBounces(const Value: Int64);
    function GetComplaints: Int64;
    procedure SetComplaints(const Value: Int64);
    function GetDeliveryAttempts: Int64;
    procedure SetDeliveryAttempts(const Value: Int64);
    function GetRejects: Int64;
    procedure SetRejects(const Value: Int64);
    function GetTimestamp: TDateTime;
    procedure SetTimestamp(const Value: TDateTime);
  strict protected
    function Obj: TSendDataPoint;
  public
    function IsSetBounces: Boolean;
    function IsSetComplaints: Boolean;
    function IsSetDeliveryAttempts: Boolean;
    function IsSetRejects: Boolean;
    function IsSetTimestamp: Boolean;
    property Bounces: Int64 read GetBounces write SetBounces;
    property Complaints: Int64 read GetComplaints write SetComplaints;
    property DeliveryAttempts: Int64 read GetDeliveryAttempts write SetDeliveryAttempts;
    property Rejects: Int64 read GetRejects write SetRejects;
    property Timestamp: TDateTime read GetTimestamp write SetTimestamp;
  end;
  
implementation

{ TSendDataPoint }

function TSendDataPoint.Obj: TSendDataPoint;
begin
  Result := Self;
end;

function TSendDataPoint.GetBounces: Int64;
begin
  Result := FBounces.ValueOrDefault;
end;

procedure TSendDataPoint.SetBounces(const Value: Int64);
begin
  FBounces := Value;
end;

function TSendDataPoint.IsSetBounces: Boolean;
begin
  Result := FBounces.HasValue;
end;

function TSendDataPoint.GetComplaints: Int64;
begin
  Result := FComplaints.ValueOrDefault;
end;

procedure TSendDataPoint.SetComplaints(const Value: Int64);
begin
  FComplaints := Value;
end;

function TSendDataPoint.IsSetComplaints: Boolean;
begin
  Result := FComplaints.HasValue;
end;

function TSendDataPoint.GetDeliveryAttempts: Int64;
begin
  Result := FDeliveryAttempts.ValueOrDefault;
end;

procedure TSendDataPoint.SetDeliveryAttempts(const Value: Int64);
begin
  FDeliveryAttempts := Value;
end;

function TSendDataPoint.IsSetDeliveryAttempts: Boolean;
begin
  Result := FDeliveryAttempts.HasValue;
end;

function TSendDataPoint.GetRejects: Int64;
begin
  Result := FRejects.ValueOrDefault;
end;

procedure TSendDataPoint.SetRejects(const Value: Int64);
begin
  FRejects := Value;
end;

function TSendDataPoint.IsSetRejects: Boolean;
begin
  Result := FRejects.HasValue;
end;

function TSendDataPoint.GetTimestamp: TDateTime;
begin
  Result := FTimestamp.ValueOrDefault;
end;

procedure TSendDataPoint.SetTimestamp(const Value: TDateTime);
begin
  FTimestamp := Value;
end;

function TSendDataPoint.IsSetTimestamp: Boolean;
begin
  Result := FTimestamp.HasValue;
end;

end.
