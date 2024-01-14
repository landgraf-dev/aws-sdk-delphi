unit AWS.Internal.Util.LruCache;

interface

uses
  System.Generics.Collections, System.SysUtils, System.DateUtils,
  AWS.SDKUtils;

type
  TLruListItem<TKey, TValue> = class
  private
    FValue: TValue;
    FKey: TKey;
    FLastTouchedTimestamp: TDateTime;
    FPrevious: TLruListItem<TKey, TValue>;
    FNext: TLruListItem<TKey, TValue>;
  protected
    property LastTouchedTimestamp: TDateTime read FLastTouchedTimestamp write FLastTouchedTimestamp;
  public
    constructor Create(const AKey: TKey; const AValue: TValue);
    property Value: TValue read FValue write FValue;
    property Key: TKey read FKey;
    property Next: TLruListItem<TKey, TValue> read FNext write FNext;
    property Previous: TLruListItem<TKey, TValue> read FPrevious write FPrevious;
  end;

  TLruList<TKey, TValue> = class
  strict private
    FHead: TLruListItem<TKey, TValue>;
    FTail: TLruListItem<TKey, TValue>;
  protected
    procedure Clear;
  public
    procedure Add(Item: TLruListItem<TKey, TValue>);
    procedure Remove(Item: TLruListItem<TKey, TValue>);
    procedure Touch(Item: TLruListItem<TKey, TValue>);
    function EvictOldest: TKey;
    property Tail: TLruListItem<TKey, TValue> read FTail write FTail;
    property Head: TLruListItem<TKey, TValue> read FHead write FHead;
  end;

  TLruCache<TKey, TValue> = class
  private
    FCache: TDictionary<TKey, TLruListItem<TKey, TValue>>;
    FLruList: TLruList<TKey, TValue>;
    CacheLock: TObject;
    FMaxEntries: Integer;
    FTrash: TObjectList<TLruListItem<TKey, TValue>>;
  public
    constructor Create(AMaxEntries: Integer); reintroduce;
    destructor Destroy; override;
    procedure AddOrUpdate(const Key: TKey; const Value: TValue);
    procedure Evict(const Key: TKey);
    function GetOrAdd(const Key: TKey; Factory: TFunc<TKey, TValue>): TValue;
    function TryGetValue(const Key: TKey; var Value: TValue): Boolean;
    function FindOldestItem: TLruListItem<TKey, TValue>;
    procedure EvictExpiredLRUListItems(ValidityInSeconds: Integer);
    procedure Clear;
    function Count: Integer;
    property MaxEntries: Integer read FMaxEntries;
  end;

implementation

{ TLruCache<TKey, TValue> }

procedure TLruCache<TKey, TValue>.AddOrUpdate(const Key: TKey; const Value: TValue);
begin
  TMonitor.Enter(CacheLock);
  try
    var existingLruListItem: TLruListItem<TKey, TValue>;
    if FCache.TryGetValue(Key, existingLruListItem) then
    begin
      // update
      existingLruListItem.Value := Value;
      FLruList.Touch(existingLruListItem);
    end
    else
    begin
      // add
      var newLruListItem := TLruListItem<TKey, TValue>.Create(Key, Value);
      FTrash.Add(newLruListItem);
      while FCache.Count >= MaxEntries do
      begin
        FCache.Remove(FLruList.EvictOldest);
      end;
      FLruList.Add(newLruListItem);
      FCache.Add(key, newLruListItem);
    end;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

procedure TLruCache<TKey, TValue>.Clear;
begin
  TMonitor.Enter(CacheLock);
  try
    FCache.Clear;
    FLruList.Clear;
    FTrash.Clear;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

function TLruCache<TKey, TValue>.Count: Integer;
begin
  TMonitor.Enter(CacheLock);
  try
    Result := FCache.Count;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

constructor TLruCache<TKey, TValue>.Create(AMaxEntries: Integer);
begin
  if AmaxEntries < 1 then
    raise EArgumentException.Create('maxEntries must be greater than zero');
  FMaxEntries := AMaxEntries;
  FCache := TDictionary<TKey, TLruListItem<TKey, TValue>>.Create;
  FLruList := TLruList<TKey, TValue>.Create;
  CacheLock := TObject.Create;
  FTrash := TObjectList<TLruListItem<TKey, TValue>>.Create;
end;

destructor TLruCache<TKey, TValue>.Destroy;
begin
  CacheLock.Free;
  FTrash.Free;
  FLruList.Free;
  FCache.Free;
  inherited;
end;

procedure TLruCache<TKey, TValue>.Evict(const Key: TKey);
begin
  TMonitor.Enter(CacheLock);
  try
    var existingLruListItem: TLruListItem<TKey, TValue>;
    if FCache.TryGetValue(key, existingLruListItem) then
    begin
      FLruList.Remove(existingLruListItem);
      FCache.Remove(key);
    end;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

procedure TLruCache<TKey, TValue>.EvictExpiredLRUListItems(ValidityInSeconds: Integer);
begin
  TMonitor.Enter(CacheLock);
  try
    while Count <> 0 do
    begin
      var item := FindOldestItem;
      var timeSpan := TAWSSDKUtils.SecondsBetween(TAWSSDKUtils.CorrectedUtcNow, item.LastTouchedTimestamp);
      if timeSpan > validityInSeconds then
        Evict(item.Key)
      else
        Break;
    end;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

function TLruCache<TKey, TValue>.FindOldestItem: TLruListItem<TKey, TValue>;
begin
  TMonitor.Enter(CacheLock);
  try
    Result := nil;
    if FLruList.Tail <> nil then
      Result := FLruList.Tail;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

function TLruCache<TKey, TValue>.GetOrAdd(const Key: TKey; Factory: TFunc<TKey, TValue>): TValue;
begin
  var value: TValue;
  if TryGetValue(key, value) then
    Exit(value);
  value := Factory(key);
  AddOrUpdate(Key, value);
  Result := Value;
end;

function TLruCache<TKey, TValue>.TryGetValue(const Key: TKey; var Value: TValue): Boolean;
begin
  var existingListItem: TLruListItem<TKey, TValue>;
  TMonitor.Enter(CacheLock);
  try
    if FCache.TryGetValue(Key, existingListItem) then
    begin
      FLruList.Touch(existingListItem);
      Value := existingListItem.Value;
      Result := True;
    end
    else
    begin
      Value := Default(TValue);
      Result := False;
    end;
  finally
    TMonitor.Exit(CacheLock);
  end;
end;

{ TLruListItem<TKey, TValue> }

constructor TLruListItem<TKey, TValue>.Create(const AKey: TKey; const AValue: TValue);
begin
  FKey := AKey;
  FValue := AValue;
end;

{ TLruList<TKey, TValue> }

procedure TLruList<TKey, TValue>.Add(Item: TLruListItem<TKey, TValue>);
begin
  if Head = nil then
  begin
    Head := Item;
    Tail := Item;
    Item.Previous := nil;
    Item.Next := nil;
  end
  else
  begin
    Head.Previous := Item;
    item.Next := Head;
    item.Previous := nil;
    Head := Item;
  end;
  var Dt := TAWSSDKUtils.CorrectedUtcNow;
  item.LastTouchedTimestamp := Dt;
end;

procedure TLruList<TKey, TValue>.Clear;
begin
  Head := nil;
  Tail := nil;
end;

function TLruList<TKey, TValue>.EvictOldest: TKey;
begin
  Result := Default(TKey);
  if Tail <> nil then
  begin
    Result := Tail.Key;
    Remove(Tail);
  end;
end;

procedure TLruList<TKey, TValue>.Remove(Item: TLruListItem<TKey, TValue>);
begin
  if (Head = Item) or (Tail = item) then
  begin
    if Head = Item then
    begin
      Head := Item.Next;
      if Head <> nil then
        Head.Previous := nil;
    end;

    if Tail = Item then
    begin
      Tail := Item.Previous;
      if Tail <> nil then
        Tail.Next := nil;
    end;
  end
  else
  begin
    item.Previous.Next := Item.Next;
    item.Next.Previous := Item.Previous;
  end;

  Item.Previous := nil;
  Item.Next := nil;
end;

procedure TLruList<TKey, TValue>.Touch(Item: TLruListItem<TKey, TValue>);
begin
  Remove(Item);
  Add(Item);
end;

end.
