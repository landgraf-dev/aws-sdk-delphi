unit AWS.S3Control.Model.LifecycleExpiration;

interface

uses
  AWS.Nullable;

type
  TLifecycleExpiration = class;
  
  ILifecycleExpiration = interface
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetExpiredObjectDeleteMarker: Boolean;
    procedure SetExpiredObjectDeleteMarker(const Value: Boolean);
    function Obj: TLifecycleExpiration;
    function IsSetDate: Boolean;
    function IsSetDays: Boolean;
    function IsSetExpiredObjectDeleteMarker: Boolean;
    property Date: TDateTime read GetDate write SetDate;
    property Days: Integer read GetDays write SetDays;
    property ExpiredObjectDeleteMarker: Boolean read GetExpiredObjectDeleteMarker write SetExpiredObjectDeleteMarker;
  end;
  
  TLifecycleExpiration = class
  strict private
    FDate: Nullable<TDateTime>;
    FDays: Nullable<Integer>;
    FExpiredObjectDeleteMarker: Nullable<Boolean>;
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetExpiredObjectDeleteMarker: Boolean;
    procedure SetExpiredObjectDeleteMarker(const Value: Boolean);
  strict protected
    function Obj: TLifecycleExpiration;
  public
    function IsSetDate: Boolean;
    function IsSetDays: Boolean;
    function IsSetExpiredObjectDeleteMarker: Boolean;
    property Date: TDateTime read GetDate write SetDate;
    property Days: Integer read GetDays write SetDays;
    property ExpiredObjectDeleteMarker: Boolean read GetExpiredObjectDeleteMarker write SetExpiredObjectDeleteMarker;
  end;
  
implementation

{ TLifecycleExpiration }

function TLifecycleExpiration.Obj: TLifecycleExpiration;
begin
  Result := Self;
end;

function TLifecycleExpiration.GetDate: TDateTime;
begin
  Result := FDate.ValueOrDefault;
end;

procedure TLifecycleExpiration.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

function TLifecycleExpiration.IsSetDate: Boolean;
begin
  Result := FDate.HasValue;
end;

function TLifecycleExpiration.GetDays: Integer;
begin
  Result := FDays.ValueOrDefault;
end;

procedure TLifecycleExpiration.SetDays(const Value: Integer);
begin
  FDays := Value;
end;

function TLifecycleExpiration.IsSetDays: Boolean;
begin
  Result := FDays.HasValue;
end;

function TLifecycleExpiration.GetExpiredObjectDeleteMarker: Boolean;
begin
  Result := FExpiredObjectDeleteMarker.ValueOrDefault;
end;

procedure TLifecycleExpiration.SetExpiredObjectDeleteMarker(const Value: Boolean);
begin
  FExpiredObjectDeleteMarker := Value;
end;

function TLifecycleExpiration.IsSetExpiredObjectDeleteMarker: Boolean;
begin
  Result := FExpiredObjectDeleteMarker.HasValue;
end;

end.
