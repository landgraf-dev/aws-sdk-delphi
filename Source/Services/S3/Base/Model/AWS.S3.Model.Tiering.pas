unit AWS.S3.Model.Tiering;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Enums;

type
  TTiering = class;
  
  ITiering = interface
    function GetAccessTier: TIntelligentTieringAccessTier;
    procedure SetAccessTier(const Value: TIntelligentTieringAccessTier);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function Obj: TTiering;
    function IsSetAccessTier: Boolean;
    function IsSetDays: Boolean;
    property AccessTier: TIntelligentTieringAccessTier read GetAccessTier write SetAccessTier;
    property Days: Integer read GetDays write SetDays;
  end;
  
  TTiering = class
  strict private
    FAccessTier: Nullable<TIntelligentTieringAccessTier>;
    FDays: Nullable<Integer>;
    function GetAccessTier: TIntelligentTieringAccessTier;
    procedure SetAccessTier(const Value: TIntelligentTieringAccessTier);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
  strict protected
    function Obj: TTiering;
  public
    function IsSetAccessTier: Boolean;
    function IsSetDays: Boolean;
    property AccessTier: TIntelligentTieringAccessTier read GetAccessTier write SetAccessTier;
    property Days: Integer read GetDays write SetDays;
  end;
  
implementation

{ TTiering }

function TTiering.Obj: TTiering;
begin
  Result := Self;
end;

function TTiering.GetAccessTier: TIntelligentTieringAccessTier;
begin
  Result := FAccessTier.ValueOrDefault;
end;

procedure TTiering.SetAccessTier(const Value: TIntelligentTieringAccessTier);
begin
  FAccessTier := Value;
end;

function TTiering.IsSetAccessTier: Boolean;
begin
  Result := FAccessTier.HasValue;
end;

function TTiering.GetDays: Integer;
begin
  Result := FDays.ValueOrDefault;
end;

procedure TTiering.SetDays(const Value: Integer);
begin
  FDays := Value;
end;

function TTiering.IsSetDays: Boolean;
begin
  Result := FDays.HasValue;
end;

end.
