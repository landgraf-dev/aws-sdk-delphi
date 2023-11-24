unit AWS.S3.Model.Progress;

interface

uses
  Bcl.Types.Nullable;

type
  TProgress = class;
  
  IProgress = interface
    function GetBytesProcessed: Int64;
    procedure SetBytesProcessed(const Value: Int64);
    function GetBytesReturned: Int64;
    procedure SetBytesReturned(const Value: Int64);
    function GetBytesScanned: Int64;
    procedure SetBytesScanned(const Value: Int64);
    function Obj: TProgress;
    function IsSetBytesProcessed: Boolean;
    function IsSetBytesReturned: Boolean;
    function IsSetBytesScanned: Boolean;
    property BytesProcessed: Int64 read GetBytesProcessed write SetBytesProcessed;
    property BytesReturned: Int64 read GetBytesReturned write SetBytesReturned;
    property BytesScanned: Int64 read GetBytesScanned write SetBytesScanned;
  end;
  
  TProgress = class
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
    function Obj: TProgress;
  public
    function IsSetBytesProcessed: Boolean;
    function IsSetBytesReturned: Boolean;
    function IsSetBytesScanned: Boolean;
    property BytesProcessed: Int64 read GetBytesProcessed write SetBytesProcessed;
    property BytesReturned: Int64 read GetBytesReturned write SetBytesReturned;
    property BytesScanned: Int64 read GetBytesScanned write SetBytesScanned;
  end;
  
implementation

{ TProgress }

function TProgress.Obj: TProgress;
begin
  Result := Self;
end;

function TProgress.GetBytesProcessed: Int64;
begin
  Result := FBytesProcessed.ValueOrDefault;
end;

procedure TProgress.SetBytesProcessed(const Value: Int64);
begin
  FBytesProcessed := Value;
end;

function TProgress.IsSetBytesProcessed: Boolean;
begin
  Result := FBytesProcessed.HasValue;
end;

function TProgress.GetBytesReturned: Int64;
begin
  Result := FBytesReturned.ValueOrDefault;
end;

procedure TProgress.SetBytesReturned(const Value: Int64);
begin
  FBytesReturned := Value;
end;

function TProgress.IsSetBytesReturned: Boolean;
begin
  Result := FBytesReturned.HasValue;
end;

function TProgress.GetBytesScanned: Int64;
begin
  Result := FBytesScanned.ValueOrDefault;
end;

procedure TProgress.SetBytesScanned(const Value: Int64);
begin
  FBytesScanned := Value;
end;

function TProgress.IsSetBytesScanned: Boolean;
begin
  Result := FBytesScanned.HasValue;
end;

end.
