unit AWS.Lib.MicroDictionary;
{$INCLUDE AWS.inc}
{$INLINE OFF}
interface
uses System.Generics.Defaults, System.Generics.Collections;
type

  TuBaseDictionary = class
  protected
    FCount: Integer;
  protected
    Buckets: Array of Int32;
    FreeList, FreeCount: Int32;
    function CalcPrime(const aSize: Int32): Int32; inline;
    procedure ResizeBuckets(const aCount: integer);
  public
    constructor Create;
    property Count: Integer read FCount;
    function FullCount: integer;
  end;


  TuDictKeyEnumerator<TKey, TValue> = class
  private
    FIndex: Integer;
    FOwner: TObject; //XE won't allow us to define this inside the dict, and we can't forward declare the type.
  public
    constructor Create(AOwner: TObject);
    function MoveNext: Boolean; inline;
    function GetCurrent: TKey; inline;
    property Current: TKey read GetCurrent;
  end;

  TuDictValueEnumerator<TKey, TValue> = class
  private
    FIndex: Integer;
    FOwner: TObject;
  public
    constructor Create(AOwner: TObject);
    function MoveNext: Boolean; inline;
    function GetCurrent: TValue; inline;
    property Current: TValue read GetCurrent;
  end;

  TuDictKeyEnumerable<TKey, TValue> = class
    private
      FOwner: TObject;
    public
    constructor Create(AOwner: TObject);
    function GetEnumerator: TuDictKeyEnumerator<TKey, TValue>;
    function ToArray: TArray<TKey>;
  end;

  TuDictValueEnumerable<TKey, TValue> = class
    private
      FOwner: TObject;
    public
    constructor Create(AOwner: TObject);
    function GetEnumerator: TuDictValueEnumerator<TKey, TValue>;
    function ToArray: TArray<TValue>;
  end;



  TuDictionary<TKey, TValue> = class(TuBaseDictionary)
  private
  type
    TEntry = record
      HashCode: Int32;
      Next: Int32;
      Key: TKey;
      Value: TValue;
    end;

  public
   type
    TuKVEnumerator = class(TEnumerator<TPair<TKey, TValue>>) //this is a class, can be accessed as a TEnumerator<...> so it can be defined inline for XE.
    private
      FIndex: Integer;
      FOwner: TuDictionary<TKey, TValue>;
    protected
      function DoMoveNext: Boolean; override;
      function DoGetCurrent: TPair<TKey, TValue>; override;
    public
      constructor Create(AOwner: TuDictionary<TKey, TValue>);
    end;

  private
    Entries: array of TEntry;
    FComparer: IEqualityComparer<TKey>;
    FKeyEnumerable: TuDictKeyEnumerable<TKey, TValue>;
    FValueEnumerable: TuDictValueEnumerable<TKey, TValue>;

    function GetItem(const Key: TKey): TValue;
    procedure SetItem(const Key: TKey; const Value: TValue);
    function GetEntryIndex(const Key: TKey): Int32; overload;
    function GetEntryIndex0(const Key: TKey; out hc, BucketIndex, PrevEntry: Int32): Int32; overload;
    procedure SetCapacity(const aCount: Int32);
    procedure Grow;
  protected
    function OwnsObjects: boolean; virtual;
    procedure FreeValue(const Value: TValue); virtual;
  public
    constructor Create; overload;
    constructor Create(const ACapacity: Integer; AComparer: IEqualityComparer<TKey>); overload;
    constructor Create(AComparer: IEqualityComparer<TKey>); overload;
    destructor Destroy; override;
    procedure Add(const Key: TKey; const Value: TValue);
    procedure Remove(const Key: TKey);
    procedure Clear;
    property Items[const Key: TKey]: TValue read GetItem write SetItem; default;

    function TryGetValue(const Key: TKey; out Value: TValue): Boolean;
    procedure AddOrSetValue(const Key: TKey; const Value: TValue; const ErrorIfRepeated: Boolean = false);
    function ContainsKey(const Key: TKey): Boolean;
    function Keys: TuDictKeyEnumerable<TKey, TValue>;
    function Values: TuDictValueEnumerable<TKey, TValue>;

    function GetEnumerator: TuKVEnumerator;

  end;


  procedure ThrowRepeatedKey;
  procedure ThrowKeyNotFound;

const //needs to be in interface for FPC
  LoadFactor = 1.0;

implementation
uses System.SysUtils;

procedure ThrowRepeatedKey;
begin
  raise Exception.Create('Duplicated key in uDictionary');
end;

procedure ThrowKeyNotFound;
begin
  raise Exception.Create('Key not found in uDictionary');
end;


{ TuDictionary<TKey, TValue> }

constructor TuDictionary<TKey, TValue>.Create(const ACapacity: Integer;
  AComparer: IEqualityComparer<TKey>);
begin
  inherited Create;
  if AComparer = nil then FComparer := TEqualityComparer<TKey>.Default else FComparer := AComparer;
  SetCapacity(ACapacity);
end;

constructor TuDictionary<TKey, TValue>.Create(
  AComparer: IEqualityComparer<TKey>);
begin
  Create(0, AComparer);
end;

destructor TuDictionary<TKey, TValue>.Destroy;
begin
  FKeyEnumerable.Free;
  FValueEnumerable.Free;
  inherited;
end;

constructor TuDictionary<TKey, TValue>.Create;
begin
  Create(0, nil);
end;

procedure TuDictionary<TKey, TValue>.FreeValue(const Value: TValue);
begin
  //nothing here.
end;

function TuDictionary<TKey, TValue>.OwnsObjects: boolean;
begin
  Result := false;
end;

function TuDictionary<TKey, TValue>.GetEntryIndex(const Key: TKey): Int32;
var
  hc: Int32;
  BucketIndex, PrevEntry: Int32;
begin
  Result := GetEntryIndex0(Key, hc, BucketIndex, PrevEntry);
end;

function TuDictionary<TKey, TValue>.GetEntryIndex0(const Key: TKey; out hc,
  BucketIndex, PrevEntry: Int32): Int32;
var
  EntryIndex: Int32;
begin
  hc := FComparer.GetHashCode(Key) and $7FFFFFFF; //make it positive, negative will mean free bucket.
  BucketIndex := hc mod Length(Buckets);
  EntryIndex := Buckets[BucketIndex];
  PrevEntry := -1;
  while EntryIndex >= 0 do
  begin
    if (Entries[EntryIndex].HashCode = hc) and FComparer.Equals(Entries[EntryIndex].Key, Key) then exit(EntryIndex);
    PrevEntry := EntryIndex;
    EntryIndex := Entries[EntryIndex].Next;
  end;
  Result := -1;
end;

function TuDictionary<TKey, TValue>.GetEnumerator: TuKVEnumerator;
begin
  Result := TuKVEnumerator.Create(Self);
end;

procedure TuDictionary<TKey, TValue>.Add(const Key: TKey; const Value: TValue);
begin
  AddOrSetValue(Key, Value, true);
end;

procedure TuDictionary<TKey, TValue>.AddOrSetValue(const Key: TKey;
  const Value: TValue; const ErrorIfRepeated: Boolean);
var
  EntryIndex: Int32;
  BucketIndex, hc, PrevEntry: int32;
begin
  EntryIndex := GetEntryIndex0(Key, hc, BucketIndex, PrevEntry);
  if EntryIndex >= 0 then
  begin
    if ErrorIfRepeated then ThrowRepeatedKey;
    if (OwnsObjects) then FreeValue(Entries[EntryIndex].Value);
    Entries[EntryIndex].Key := Key; //key might be a different object, even if "equal" is true.
    Entries[EntryIndex].Value := Value;
    exit;
  end;

  if FreeCount > 0 then
  begin
    EntryIndex := FreeList;
    FreeList := Entries[EntryIndex].Next;
    dec(FreeCount);
  end
  else
  begin
    if Count = Length(Entries) then //count and fullcount are the same.
    begin
      Grow;
      BucketIndex := hc mod Length(Buckets);
    end;

    EntryIndex := Count;
  end;

  Inc(FCount);

  Entries[EntryIndex].HashCode := hc;
  Entries[EntryIndex].Next := Buckets[BucketIndex];
  Entries[EntryIndex].Key := Key;
  Entries[EntryIndex].Value := Value;
  Buckets[BucketIndex] := EntryIndex;

  //we could check if too many items in linked list.
end;

procedure TuDictionary<TKey, TValue>.Clear;
var
  i: integer;
begin
  if OwnsObjects then
  begin
    for i := 0 to FullCount - 1 do if (Entries[i].HashCode >= 0) then FreeValue(Entries[i].Value);
  end;

  FCount := 0;
  FreeList := -1;
  FreeCount := 0;
  Buckets := nil;
  Entries := nil;
  SetCapacity(0);
end;

function TuDictionary<TKey, TValue>.ContainsKey(const Key: TKey): Boolean;
begin
  Result := GetEntryIndex(Key) >= 0;
end;

function TuDictionary<TKey, TValue>.GetItem(const Key: TKey): TValue;
var
  EntryIndex: Int32;
begin
  EntryIndex := GetEntryIndex(Key);
  if EntryIndex < 0 then ThrowKeyNotFound;
  Result := Entries[EntryIndex].Value;
end;

procedure TuDictionary<TKey, TValue>.SetItem(const Key: TKey;
  const Value: TValue);
begin
  AddOrSetValue(Key, Value);
end;

function TuDictionary<TKey, TValue>.TryGetValue(const Key: TKey;
  out Value: TValue): Boolean;
var
  EntryIndex: Int32;
begin
  EntryIndex := GetEntryIndex(Key);
  if EntryIndex < 0 then begin Value := Default(TValue); exit(false); end;

  Value := Entries[EntryIndex].Value;
  Result := true;
end;

procedure TuDictionary<TKey, TValue>.Grow;
var
  i: Integer;
  NewBucket: Integer;
begin
  SetCapacity(Length(Buckets));
  for i := 0 to Count - 1 do
  begin
    if Entries[i].HashCode >= 0 then
    begin
      NewBucket := Entries[i].HashCode mod Length(Buckets);
      Entries[i].Next := Buckets[NewBucket];
      Buckets[NewBucket] := i;
    end;

  end;
end;

procedure TuDictionary<TKey, TValue>.SetCapacity(const aCount: Int32);
var
  EntriesLen: Int32;
begin
  ResizeBuckets(aCount);
  EntriesLen := Round (Length(Buckets) * LoadFactor);
  if (EntriesLen < 17) or (EntriesLen <= Length(Entries)) then EntriesLen := Length(Buckets);

  SetLength(Entries, EntriesLen);
end;

procedure TuDictionary<TKey, TValue>.Remove(const Key: TKey);
var
  EntryIndex: Int32;
  BucketIndex, hc, PrevEntry: int32;
begin
  EntryIndex := GetEntryIndex0(Key, hc, BucketIndex, PrevEntry);
  if EntryIndex < 0 then Exit;

  if PrevEntry < 0 then Buckets[BucketIndex] := Entries[EntryIndex].Next
  else Entries[PrevEntry].Next := Entries[EntryIndex].Next;

  Entries[EntryIndex].HashCode := -1;
  Entries[EntryIndex].Next := FreeList;
  Entries[EntryIndex].Key := Default(TKey);
  if (OwnsObjects) then FreeValue(Entries[EntryIndex].Value);
  Entries[EntryIndex].Value := Default(TValue);

  FreeList := EntryIndex;

  Inc(FreeCount);
  Dec(FCount);
end;

function TuDictionary<TKey, TValue>.Keys: TuDictKeyEnumerable<TKey, TValue>;
begin
  if FKeyEnumerable = nil then FKeyEnumerable := TuDictKeyEnumerable<TKey, TValue>.Create(Self);
  Result := FKeyEnumerable;
end;

function TuDictionary<TKey, TValue>.Values: TuDictValueEnumerable<TKey, TValue>;
begin
  if FValueEnumerable = nil then FValueEnumerable := TuDictValueEnumerable<TKey, TValue>.Create(Self);
  Result := FValueEnumerable;
end;

{ TuBaseDictionary }

constructor TuBaseDictionary.Create;
begin
  FreeList := -1;
end;

function TuBaseDictionary.FullCount: integer;
begin
  Result := Count + FreeCount;
end;

function TuBaseDictionary.CalcPrime(const aSize: Int32): Int32;
begin
  Result := Round(aSize * 1.5 + 1);
  if Result < 17 then Result := 17;
{ //we could use an array of primes here to ensure number is prime, but it doesn't seem to matter.
  for i := 0 to Length(Primes) - 1 do
    if Primes[i] >= Result then exit(Primes[i]);}


end;

procedure TuBaseDictionary.ResizeBuckets(const aCount: integer);
begin
  SetLength(Buckets, CalcPrime(aCount));
  FillChar(Buckets[0], Length(Buckets) * SizeOf(Int32), $FF); //All buckets get invalid when resizing.
end;

{ TuDictKeyEnumerable<TKey, TValue> }

constructor TuDictKeyEnumerable<TKey, TValue>.Create(
  AOwner: TObject);
begin
  FOwner := AOwner; // as TuDictionary<TKey, TValue>;  wrong in C++ builder
end;

function TuDictKeyEnumerable<TKey, TValue>.GetEnumerator: TuDictKeyEnumerator<TKey, TValue>;
begin
  Result := TuDictKeyEnumerator<TKey, TValue>.Create(FOwner);
end;

function TuDictKeyEnumerable<TKey, TValue>.ToArray: TArray<TKey>;
var
  i, k: integer;
begin
  SetLength(Result, TuDictionary<TKey, TValue>(FOwner).Count);
  k := 0;
  for i := 0 to (TuDictionary<TKey, TValue>(FOwner)).FullCount - 1 do
  begin
    if TuDictionary<TKey, TValue>(FOwner).Entries[i].HashCode >= 0 then
    begin
      Result[k] := TuDictionary<TKey, TValue>(FOwner).Entries[i].Key;
      inc(k);
    end;
  end;
end;

{ TuDictValueEnumerable<TKey, TValue> }

constructor TuDictValueEnumerable<TKey, TValue>.Create(
  AOwner: TObject);
begin
  FOwner := AOwner; // as TuDictionary<TKey, TValue>;  Wrong in C++ builder
end;

function TuDictValueEnumerable<TKey, TValue>.GetEnumerator: TuDictValueEnumerator<TKey, TValue>;
begin
  Result := TuDictValueEnumerator<TKey, TValue>.Create(FOwner);
end;

function TuDictValueEnumerable<TKey, TValue>.ToArray: TArray<TValue>;
var
  i, k: integer;
begin
  SetLength(Result, TuDictionary<TKey, TValue>(FOwner).Count);
  k := 0;
  for i := 0 to (TuDictionary<TKey, TValue>(FOwner)).FullCount - 1 do
  begin
    if TuDictionary<TKey, TValue>(FOwner).Entries[i].HashCode >= 0 then
    begin
      Result[k] := TuDictionary<TKey, TValue>(FOwner).Entries[i].Value;
      inc(k);
    end;
  end;
end;

{ TuDictKeyEnumerator<TKey, TValue> }

constructor TuDictKeyEnumerator<TKey, TValue>.Create(AOwner: TObject);
begin
  FIndex := -1;
  FOwner := AOwner //as TuDictionary<TKey, TValue>; Wrong in c++ builder
end;

function TuDictKeyEnumerator<TKey, TValue>.GetCurrent: TKey;
begin
  Result := TuDictionary<TKey, TValue>(FOwner).Entries[FIndex].Key;
end;

function TuDictKeyEnumerator<TKey, TValue>.MoveNext: Boolean;
begin
  while True do
  begin
   Inc(FIndex);
   if FIndex >= (TuDictionary<TKey, TValue>(FOwner)).FullCount then exit(false);
   if TuDictionary<TKey, TValue>(FOwner).Entries[FIndex].HashCode >= 0 then exit(true);
  end;
end;

{ TuDictValueEnumerator<TKey, TValue> }

constructor TuDictValueEnumerator<TKey, TValue>.Create(AOwner: TObject);
begin
  FIndex := -1;
  //FOwner := AOwner as TuDictionary<TKey, TValue>; Fails in C++ builder
  FOwner := AOwner;
end;

function TuDictValueEnumerator<TKey, TValue>.GetCurrent: TValue;
begin
  Result := TuDictionary<TKey, TValue>(FOwner).Entries[FIndex].Value;
end;

function TuDictValueEnumerator<TKey, TValue>.MoveNext: Boolean;
begin
  while True do
  begin
   Inc(FIndex);
   if FIndex >= (TuDictionary<TKey, TValue>(FOwner)).FullCount then exit(false);
   if TuDictionary<TKey, TValue>(FOwner).Entries[FIndex].HashCode >= 0 then exit(true);
  end;
end;

{ TuDictionary<TKey, TValue>.TuKVEnumerator }

constructor TuDictionary<TKey, TValue>.TuKVEnumerator.Create(
  AOwner: TuDictionary<TKey, TValue>);
begin
  FIndex := -1;
  //FOwner := AOwner as TuDictionary<TKey, TValue>;  fails in c++ builder
  FOwner := AOwner;
end;

function TuDictionary<TKey, TValue>.TuKVEnumerator.DoGetCurrent: TPair<TKey, TValue>;
begin
  Result := TPair<TKey, TValue>.Create(FOwner.Entries[FIndex].Key, FOwner.Entries[FIndex].Value);
end;

function TuDictionary<TKey, TValue>.TuKVEnumerator.DoMoveNext: Boolean;
begin
  while True do
  begin
   Inc(FIndex);
   if FIndex >= FOwner.FullCount then exit(false);
   if FOwner.Entries[FIndex].HashCode >= 0 then exit(true);
  end;
end;

end.

