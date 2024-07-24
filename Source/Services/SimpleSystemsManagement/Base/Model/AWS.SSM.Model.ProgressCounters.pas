unit AWS.SSM.Model.ProgressCounters;

interface

uses
  AWS.Nullable;

type
  TProgressCounters = class;
  
  IProgressCounters = interface
    function GetCancelledSteps: Integer;
    procedure SetCancelledSteps(const Value: Integer);
    function GetFailedSteps: Integer;
    procedure SetFailedSteps(const Value: Integer);
    function GetSuccessSteps: Integer;
    procedure SetSuccessSteps(const Value: Integer);
    function GetTimedOutSteps: Integer;
    procedure SetTimedOutSteps(const Value: Integer);
    function GetTotalSteps: Integer;
    procedure SetTotalSteps(const Value: Integer);
    function Obj: TProgressCounters;
    function IsSetCancelledSteps: Boolean;
    function IsSetFailedSteps: Boolean;
    function IsSetSuccessSteps: Boolean;
    function IsSetTimedOutSteps: Boolean;
    function IsSetTotalSteps: Boolean;
    property CancelledSteps: Integer read GetCancelledSteps write SetCancelledSteps;
    property FailedSteps: Integer read GetFailedSteps write SetFailedSteps;
    property SuccessSteps: Integer read GetSuccessSteps write SetSuccessSteps;
    property TimedOutSteps: Integer read GetTimedOutSteps write SetTimedOutSteps;
    property TotalSteps: Integer read GetTotalSteps write SetTotalSteps;
  end;
  
  TProgressCounters = class
  strict private
    FCancelledSteps: Nullable<Integer>;
    FFailedSteps: Nullable<Integer>;
    FSuccessSteps: Nullable<Integer>;
    FTimedOutSteps: Nullable<Integer>;
    FTotalSteps: Nullable<Integer>;
    function GetCancelledSteps: Integer;
    procedure SetCancelledSteps(const Value: Integer);
    function GetFailedSteps: Integer;
    procedure SetFailedSteps(const Value: Integer);
    function GetSuccessSteps: Integer;
    procedure SetSuccessSteps(const Value: Integer);
    function GetTimedOutSteps: Integer;
    procedure SetTimedOutSteps(const Value: Integer);
    function GetTotalSteps: Integer;
    procedure SetTotalSteps(const Value: Integer);
  strict protected
    function Obj: TProgressCounters;
  public
    function IsSetCancelledSteps: Boolean;
    function IsSetFailedSteps: Boolean;
    function IsSetSuccessSteps: Boolean;
    function IsSetTimedOutSteps: Boolean;
    function IsSetTotalSteps: Boolean;
    property CancelledSteps: Integer read GetCancelledSteps write SetCancelledSteps;
    property FailedSteps: Integer read GetFailedSteps write SetFailedSteps;
    property SuccessSteps: Integer read GetSuccessSteps write SetSuccessSteps;
    property TimedOutSteps: Integer read GetTimedOutSteps write SetTimedOutSteps;
    property TotalSteps: Integer read GetTotalSteps write SetTotalSteps;
  end;
  
implementation

{ TProgressCounters }

function TProgressCounters.Obj: TProgressCounters;
begin
  Result := Self;
end;

function TProgressCounters.GetCancelledSteps: Integer;
begin
  Result := FCancelledSteps.ValueOrDefault;
end;

procedure TProgressCounters.SetCancelledSteps(const Value: Integer);
begin
  FCancelledSteps := Value;
end;

function TProgressCounters.IsSetCancelledSteps: Boolean;
begin
  Result := FCancelledSteps.HasValue;
end;

function TProgressCounters.GetFailedSteps: Integer;
begin
  Result := FFailedSteps.ValueOrDefault;
end;

procedure TProgressCounters.SetFailedSteps(const Value: Integer);
begin
  FFailedSteps := Value;
end;

function TProgressCounters.IsSetFailedSteps: Boolean;
begin
  Result := FFailedSteps.HasValue;
end;

function TProgressCounters.GetSuccessSteps: Integer;
begin
  Result := FSuccessSteps.ValueOrDefault;
end;

procedure TProgressCounters.SetSuccessSteps(const Value: Integer);
begin
  FSuccessSteps := Value;
end;

function TProgressCounters.IsSetSuccessSteps: Boolean;
begin
  Result := FSuccessSteps.HasValue;
end;

function TProgressCounters.GetTimedOutSteps: Integer;
begin
  Result := FTimedOutSteps.ValueOrDefault;
end;

procedure TProgressCounters.SetTimedOutSteps(const Value: Integer);
begin
  FTimedOutSteps := Value;
end;

function TProgressCounters.IsSetTimedOutSteps: Boolean;
begin
  Result := FTimedOutSteps.HasValue;
end;

function TProgressCounters.GetTotalSteps: Integer;
begin
  Result := FTotalSteps.ValueOrDefault;
end;

procedure TProgressCounters.SetTotalSteps(const Value: Integer);
begin
  FTotalSteps := Value;
end;

function TProgressCounters.IsSetTotalSteps: Boolean;
begin
  Result := FTotalSteps.HasValue;
end;

end.
