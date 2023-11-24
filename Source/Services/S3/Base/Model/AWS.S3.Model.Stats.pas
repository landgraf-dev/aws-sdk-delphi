unit AWS.S3.Model.Stats;

interface

uses
  Bcl.Types.Nullable;

type
  TStats = class;
  
  IStats = interface
    function GetBytesProcessed: Int64;
    procedure SetBytesProcessed(const Value: Int64);
    function GetBytesReturned: Int64;
    procedure SetBytesReturned(const Value: Int64);
    function GetBytesScanned: Int64;
    procedure SetBytesScanned(const Value: Int64);
    function Obj: TStats;
    function IsSetBytesProcessed: Boolean;
    function IsSetBytesReturned: Boolean;
    function IsSetBytesScanned: Boolean;
    property BytesProcessed: Int64 read GetBytesProcessed write SetBytesProcessed;
    property BytesReturned: Int64 read GetBytesReturned write SetBytesReturned;
    property BytesScanned: Int64 read GetBytesScanned write SetBytesScanned;
  end;
  
  TStats = class
  strict private
    FBytesProcessed: Nullable<Int64>;
    FBytesReturned: Nullable<Int64>;
    FBytesScanned: Nullable<Int64>;
    function GetBytesProcessed: Int64;
    procedure SetBytesProcessed(const Value: Int64);
    function GetBytesReturned: Int64;
    procedure SetBytesReturned(const Value: Int64);
    function GetBytesScanned: Int64;
    procedure SetBytesScanned(const Value: Int64);
  strict protected
    function Obj: TStats;
  public
    function IsSetBytesProcessed: Boolean;
    function IsSetBytesReturned: Boolean;
    function IsSetBytesScanned: Boolean;
    property BytesProcessed: Int64 read GetBytesProcessed write SetBytesProcessed;
    property BytesReturned: Int64 read GetBytesReturned write SetBytesReturned;
    property BytesScanned: Int64 read GetBytesScanned write SetBytesScanned;
  end;
  
implementation

{ TStats }

function TStats.Obj: TStats;
begin
  Result := Self;
end;

function TStats.GetBytesProcessed: Int64;
begin
  Result := FBytesProcessed.ValueOrDefault;
end;

procedure TStats.SetBytesProcessed(const Value: Int64);
begin
  FBytesProcessed := Value;
end;

function TStats.IsSetBytesProcessed: Boolean;
begin
  Result := FBytesProcessed.HasValue;
end;

function TStats.GetBytesReturned: Int64;
begin
  Result := FBytesReturned.ValueOrDefault;
end;

procedure TStats.SetBytesReturned(const Value: Int64);
begin
  FBytesReturned := Value;
end;

function TStats.IsSetBytesReturned: Boolean;
begin
  Result := FBytesReturned.HasValue;
end;

function TStats.GetBytesScanned: Int64;
begin
  Result := FBytesScanned.ValueOrDefault;
end;

procedure TStats.SetBytesScanned(const Value: Int64);
begin
  FBytesScanned := Value;
end;

function TStats.IsSetBytesScanned: Boolean;
begin
  Result := FBytesScanned.HasValue;
end;

end.
