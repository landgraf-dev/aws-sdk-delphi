unit AWS.SSM.Model.SeveritySummary;

interface

uses
  AWS.Nullable;

type
  TSeveritySummary = class;
  
  ISeveritySummary = interface
    function GetCriticalCount: Integer;
    procedure SetCriticalCount(const Value: Integer);
    function GetHighCount: Integer;
    procedure SetHighCount(const Value: Integer);
    function GetInformationalCount: Integer;
    procedure SetInformationalCount(const Value: Integer);
    function GetLowCount: Integer;
    procedure SetLowCount(const Value: Integer);
    function GetMediumCount: Integer;
    procedure SetMediumCount(const Value: Integer);
    function GetUnspecifiedCount: Integer;
    procedure SetUnspecifiedCount(const Value: Integer);
    function Obj: TSeveritySummary;
    function IsSetCriticalCount: Boolean;
    function IsSetHighCount: Boolean;
    function IsSetInformationalCount: Boolean;
    function IsSetLowCount: Boolean;
    function IsSetMediumCount: Boolean;
    function IsSetUnspecifiedCount: Boolean;
    property CriticalCount: Integer read GetCriticalCount write SetCriticalCount;
    property HighCount: Integer read GetHighCount write SetHighCount;
    property InformationalCount: Integer read GetInformationalCount write SetInformationalCount;
    property LowCount: Integer read GetLowCount write SetLowCount;
    property MediumCount: Integer read GetMediumCount write SetMediumCount;
    property UnspecifiedCount: Integer read GetUnspecifiedCount write SetUnspecifiedCount;
  end;
  
  TSeveritySummary = class
  strict private
    FCriticalCount: Nullable<Integer>;
    FHighCount: Nullable<Integer>;
    FInformationalCount: Nullable<Integer>;
    FLowCount: Nullable<Integer>;
    FMediumCount: Nullable<Integer>;
    FUnspecifiedCount: Nullable<Integer>;
    function GetCriticalCount: Integer;
    procedure SetCriticalCount(const Value: Integer);
    function GetHighCount: Integer;
    procedure SetHighCount(const Value: Integer);
    function GetInformationalCount: Integer;
    procedure SetInformationalCount(const Value: Integer);
    function GetLowCount: Integer;
    procedure SetLowCount(const Value: Integer);
    function GetMediumCount: Integer;
    procedure SetMediumCount(const Value: Integer);
    function GetUnspecifiedCount: Integer;
    procedure SetUnspecifiedCount(const Value: Integer);
  strict protected
    function Obj: TSeveritySummary;
  public
    function IsSetCriticalCount: Boolean;
    function IsSetHighCount: Boolean;
    function IsSetInformationalCount: Boolean;
    function IsSetLowCount: Boolean;
    function IsSetMediumCount: Boolean;
    function IsSetUnspecifiedCount: Boolean;
    property CriticalCount: Integer read GetCriticalCount write SetCriticalCount;
    property HighCount: Integer read GetHighCount write SetHighCount;
    property InformationalCount: Integer read GetInformationalCount write SetInformationalCount;
    property LowCount: Integer read GetLowCount write SetLowCount;
    property MediumCount: Integer read GetMediumCount write SetMediumCount;
    property UnspecifiedCount: Integer read GetUnspecifiedCount write SetUnspecifiedCount;
  end;
  
implementation

{ TSeveritySummary }

function TSeveritySummary.Obj: TSeveritySummary;
begin
  Result := Self;
end;

function TSeveritySummary.GetCriticalCount: Integer;
begin
  Result := FCriticalCount.ValueOrDefault;
end;

procedure TSeveritySummary.SetCriticalCount(const Value: Integer);
begin
  FCriticalCount := Value;
end;

function TSeveritySummary.IsSetCriticalCount: Boolean;
begin
  Result := FCriticalCount.HasValue;
end;

function TSeveritySummary.GetHighCount: Integer;
begin
  Result := FHighCount.ValueOrDefault;
end;

procedure TSeveritySummary.SetHighCount(const Value: Integer);
begin
  FHighCount := Value;
end;

function TSeveritySummary.IsSetHighCount: Boolean;
begin
  Result := FHighCount.HasValue;
end;

function TSeveritySummary.GetInformationalCount: Integer;
begin
  Result := FInformationalCount.ValueOrDefault;
end;

procedure TSeveritySummary.SetInformationalCount(const Value: Integer);
begin
  FInformationalCount := Value;
end;

function TSeveritySummary.IsSetInformationalCount: Boolean;
begin
  Result := FInformationalCount.HasValue;
end;

function TSeveritySummary.GetLowCount: Integer;
begin
  Result := FLowCount.ValueOrDefault;
end;

procedure TSeveritySummary.SetLowCount(const Value: Integer);
begin
  FLowCount := Value;
end;

function TSeveritySummary.IsSetLowCount: Boolean;
begin
  Result := FLowCount.HasValue;
end;

function TSeveritySummary.GetMediumCount: Integer;
begin
  Result := FMediumCount.ValueOrDefault;
end;

procedure TSeveritySummary.SetMediumCount(const Value: Integer);
begin
  FMediumCount := Value;
end;

function TSeveritySummary.IsSetMediumCount: Boolean;
begin
  Result := FMediumCount.HasValue;
end;

function TSeveritySummary.GetUnspecifiedCount: Integer;
begin
  Result := FUnspecifiedCount.ValueOrDefault;
end;

procedure TSeveritySummary.SetUnspecifiedCount(const Value: Integer);
begin
  FUnspecifiedCount := Value;
end;

function TSeveritySummary.IsSetUnspecifiedCount: Boolean;
begin
  Result := FUnspecifiedCount.HasValue;
end;

end.
