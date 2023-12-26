unit AWS.Lib.Collections;

interface

uses
  System.SysUtils, System.Generics.Collections, System.Generics.Defaults, System.Classes, AWS.Lib.MicroDictionary;

type
  THashSet<T> = class
  strict private
    FDictionary: TDictionary<T, Integer>;
  public
    function GetEnumerator: TEnumerator<T>;
  public
    constructor Create; overload;
    constructor Create(sc: IEqualityComparer<T>); overload;
    destructor Destroy; override;
    procedure Add(Item: T);
    procedure Clear;
    function Contains(Item: T): Boolean;
    procedure Remove(Item: T);
    function Count: Integer;
  end;

  TOrderedDictionary<K, V> = class
  type
    TPairKV = TPair<K, V>;
  private
    FItems: TList<TPairKV>;
    function GetItems(const key: K): V;
    procedure SetItems(const key: K; const value: V);
    function GetKey(const index: integer): K;
    function GetValue(const index: integer): V;
  protected
    FComparer: IEqualityComparer<K>;
    procedure KeyNotify(const Key: K; Action: TCollectionNotification); virtual;
    procedure ValueNotify(const Value: V; Action: TCollectionNotification); virtual;
    procedure Notify(Sender: TObject; const Value: TPairKV; Action: TCollectionNotification); virtual;
  public
    function GetEnumerator: TList<TPairKV>.TEnumerator;
  public
    procedure Sort; overload;
    procedure Sort(const AComparer: IComparer<TPairKV>); overload;
  public
    constructor Create; overload;
    constructor Create(const AComparer: IEqualityComparer<K>); overload;
    destructor Destroy; override;
    procedure Clear;
    procedure Add(const key: K; const value: V);
    procedure Remove(const key: K);
    procedure Delete(const Index: Integer);
    function ExtractPair(const key: K): TPairKV;
    function ContainsKey(const key: K): boolean;
    function IndexOfKey(const key: K): integer;
    function TryGetValue(const key: K; out value: V): boolean;
    function Count: integer;
    property Values[const index: integer]: V read GetValue;
    property Keys[const index: integer]: K read GetKey;
    property Items[const key: K]: V read GetItems write SetItems; default;
  end;

  TOrderedObjectDictionary<K; V: class> = class(TOrderedDictionary<K, V>)
  private
    FOwnerships: TDictionaryOwnerships;
  protected
    procedure KeyNotify(const Key: K; Action: TCollectionNotification); override;
    procedure ValueNotify(const Value: V; Action: TCollectionNotification); override;
  public
    constructor Create; overload;
    constructor Create(Ownerships: TDictionaryOwnerships); overload;
    constructor Create(Ownerships: TDictionaryOwnerships;
      const AComparer: IEqualityComparer<K>); overload;
    property Ownerships: TDictionaryOwnerships read FOwnerships;
  end;

  // Different HashSet implementation. Review this to unify with THashSet<T>
  HashSet<T> = class
  private
    Dict: TuDictionary<T, boolean>;
  public
    constructor Create; overload;
    constructor Create(sc: IEqualityComparer<T>); overload;
    destructor Destroy; override;

    procedure Add(const aItem: T);
    function Count: integer;
    function Contains(const aItem: T): boolean;
    procedure Remove(const aItem: T);
    procedure Loop(const p: TProc<T>);
  end;

implementation

{ THashSet<T> }

procedure THashSet<T>.Add(Item: T);
begin
  FDictionary.AddOrSetValue(Item, 0);
end;

procedure THashSet<T>.Clear;
begin
  FDictionary.Clear;
end;

function THashSet<T>.Contains(Item: T): Boolean;
begin
  Result := FDictionary.ContainsKey(Item);
end;

function THashSet<T>.Count: Integer;
begin
  Result := FDictionary.Count;
end;

constructor THashSet<T>.Create(sc: IEqualityComparer<T>);
begin
  FDictionary := TDictionary<T, Integer>.Create(sc);
end;

constructor THashSet<T>.Create;
begin
  FDictionary := TDictionary<T, Integer>.Create;
end;

destructor THashSet<T>.Destroy;
begin
  FDictionary.Free;
  inherited;
end;

function THashSet<T>.GetEnumerator: TEnumerator<T>;
begin
  Result := FDictionary.Keys.GetEnumerator;
end;

procedure THashSet<T>.Remove(Item: T);
begin
  FDictionary.Remove(Item);
end;

{ TOrderedDictionary<K, V> }

procedure TOrderedDictionary<K, V>.Add(const key: K; const value: V);
var
  Index: integer;
begin
  Index := IndexOfKey(key);
  if Index >= 0 then
    FItems[Index] := TPairKV.Create(key, value)
  else
    FItems.Add(TPairKV.Create(key, value));
end;

procedure TOrderedDictionary<K, V>.Clear;
begin
  FItems.Clear;
end;

function TOrderedDictionary<K, V>.ContainsKey(const key: K): boolean;
begin
  Result := IndexOfKey(key) >= 0;
end;

function TOrderedDictionary<K, V>.Count: integer;
begin
  Result := FItems.Count;
end;

constructor TOrderedDictionary<K, V>.Create(const AComparer: IEqualityComparer<K>);
begin
  inherited Create;
  FComparer := AComparer;
  FItems := TList<TPairKV>.Create;
  FItems.OnNotify := Notify;
end;

constructor TOrderedDictionary<K, V>.Create;
begin
  Create(TEqualityComparer<K>.Default);
end;

procedure TOrderedDictionary<K, V>.Delete(const Index: Integer);
begin
  FItems.Delete(Index);
end;

destructor TOrderedDictionary<K, V>.Destroy;
begin
  Clear;
{$IFDEF AUTOREFCOUNT}
  FItems.DisposeOf;
{$ELSE}
  FItems.Free;
{$ENDIF}
  inherited;
end;

function TOrderedDictionary<K, V>.ExtractPair(const key: K): TPairKV;
var
  index: integer;
begin
  index := IndexOfKey(key);
  if index < 0 then
    Exit(TPair<K,V>.Create(Key, Default(V)));

  Result := FItems.Extract(FItems[index]);
end;

function TOrderedDictionary<K, V>.GetEnumerator: TList<TPairKV>.TEnumerator;
begin
  Result := FItems.GetEnumerator;
end;

function TOrderedDictionary<K, V>.GetItems(const key: K): V;
begin
  Result := FItems[IndexOfKey(key)].Value;
end;

function TOrderedDictionary<K, V>.GetKey(const index: integer): K;
begin
  Result := FItems[index].Key;
end;

function TOrderedDictionary<K, V>.GetValue(const index: integer): V;
begin
  Result := FItems[index].Value;
end;

function TOrderedDictionary<K, V>.IndexOfKey(const key: K): integer;
var
  I: Integer;
begin
  for I := 0 to FItems.Count - 1 do
    if FComparer.Equals(FItems[I].Key, key) then
      Exit(I);
  Result := -1;
end;

procedure TOrderedDictionary<K, V>.KeyNotify(const Key: K;
  Action: TCollectionNotification);
begin
end;

procedure TOrderedDictionary<K, V>.Notify(Sender: TObject; const Value: TPairKV;
  Action: TCollectionNotification);
begin
  KeyNotify(Value.Key, Action);
  ValueNotify(Value.Value, Action);
end;

procedure TOrderedDictionary<K, V>.Remove(const key: K);
var
  index: integer;
begin
  index := IndexOfKey(key);
  if index >= 0 then
    FItems.Delete(index);
end;

procedure TOrderedDictionary<K, V>.SetItems(const key: K; const value: V);
begin
  Add(key, value);
end;

procedure TOrderedDictionary<K, V>.Sort;
var
  Comparer: IComparer<K>;
begin
  Comparer := TComparer<K>.Default;
  FItems.Sort(TComparer<TPairKV>.Construct(
    function(const Left, Right: TPairKV): Integer
    begin
      Result := Comparer.Compare(Left.Key, Right.Key);
    end
  ));
end;

procedure TOrderedDictionary<K, V>.Sort(const AComparer: IComparer<TPairKV>);
begin
  FItems.Sort(AComparer);
end;

function TOrderedDictionary<K, V>.TryGetValue(const key: K;
  out value: V): Boolean;
var
  I: integer;
begin
  I := IndexOfKey(key);
  if (I < 0) then
  begin
    Value := Default(V);
    Exit(False);
  end;

  value := FItems[I].Value;
  Result := True;
end;

procedure TOrderedDictionary<K, V>.ValueNotify(const Value: V;
  Action: TCollectionNotification);
begin
end;

{ TObjectOrderedDictionary<K, V> }

constructor TOrderedObjectDictionary<K, V>.Create;
begin
  Create([doOwnsValues]);
end;

constructor TOrderedObjectDictionary<K, V>.Create(
  Ownerships: TDictionaryOwnerships);
begin
  Create(Ownerships, TEqualityComparer<K>.Default);
end;

constructor TOrderedObjectDictionary<K, V>.Create(
  Ownerships: TDictionaryOwnerships; const AComparer: IEqualityComparer<K>);
begin
  inherited Create(AComparer);
  FOwnerships := Ownerships;
end;

procedure TOrderedObjectDictionary<K, V>.KeyNotify(const Key: K;
  Action: TCollectionNotification);
begin
  inherited;
  if (Action = cnRemoved) and (doOwnsKeys in FOwnerships) then
{$IFDEF AUTOREFCOUNT}
    (PObject(@Key)^).DisposeOf;
{$ELSE}
    (PObject(@Key)^).Free;
{$ENDIF}
end;

procedure TOrderedObjectDictionary<K, V>.ValueNotify(const Value: V;
  Action: TCollectionNotification);
begin
  inherited;
  if (Action = cnRemoved) and (doOwnsValues in FOwnerships) then
{$IFDEF AUTOREFCOUNT}
    (PObject(@Value)^).DisposeOf;
{$ELSE}
    (PObject(@Value)^).Free;
{$ENDIF}
end;

{ HashSet<T> }

constructor HashSet<T>.Create;
begin
  Dict := TuDictionary<T, boolean>.Create;
end;

constructor HashSet<T>.Create(sc: IEqualityComparer<T>);
begin
  Dict := TuDictionary<T, boolean>.Create(sc);
end;

destructor HashSet<T>.Destroy;
begin
{$IFDEF AUTOREFCOUNT}
  Dict.DisposeOf;
{$ELSE}
  Dict.Free;
{$ENDIF}
  inherited;
end;

procedure HashSet<T>.Add(const aItem: T);
begin
  Dict[aItem] := true; //add in a hashset is different from a dictionary: there is no error if the item is repeated.
end;

function HashSet<T>.Contains(const aItem: T): boolean;
begin
  Result := Dict.ContainsKey(aItem);
end;

procedure HashSet<T>.Remove(const aItem: T);
begin
  Dict.Remove(aItem);
end;

procedure HashSet<T>.Loop(const p: TProc<T>);
var
  x: T;
begin
  for x in Dict.Keys do
  begin
    p(x);
  end;
end;

function HashSet<T>.Count: integer;
begin
  Result := Dict.Count;
end;

end.
