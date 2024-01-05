unit AWSTests.LruCacheTest;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes, System.DateUtils,
  TestFramework,
  AWSTests.TestBase,
  AWS.Configs,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.Internal.Util.LruCache;

type
  TLruCacheTest = class(TAWSTestBase)
  private
    FCache: TLruCache<string, string>;
    function GetCache(MaxItems: Integer; Count: Integer): TLruCache<string, string>;
    procedure SetUtcNowSource(const Value: TFunc<TDateTime>);
    procedure AssertCache(Cache: TLruCache<string, string>; Start, Count: Integer);
    procedure AssertNotInCache(Cache: TLruCache<string, string>; const Key: string);
    procedure AssertInCache(Cache: TLruCache<string, string>; const Key, ExpectedValue: string);
  public
    procedure TearDown; override;
  published
    procedure TestLruCacheTryGetValue;
    procedure TryGetValueEmpty;
    procedure TryGetValueOne;
    procedure TryGetValueUpdated;
    procedure AddOrUpdateAtLimit;
    procedure AddOrUpdateEvictOne;
    procedure TestEviction;
    procedure TestFindOldestItem;
    procedure TestEvictExpiredLRUListItems;
  end;

implementation

{ LruCacheTest }

procedure TLruCacheTest.AddOrUpdateAtLimit;
begin
  var cache := GetCache(5, 5);
  AssertCache(cache, 0, 5);
end;

procedure TLruCacheTest.AddOrUpdateEvictOne;
begin
  var cache := GetCache(5, 6);
  AssertCache(cache, 1, 5);
end;

procedure TLruCacheTest.AssertCache(Cache: TLruCache<string, string>; Start, Count: Integer);
begin
  ChecKEquals(Count, Cache.Count);
  for var I := -10 to Start + Count + 10 - 1 do
  begin
    if (I >= Start) and (I < start + count) then
      AssertInCache(Cache, 'key' + IntToStr(I), 'value' + IntToStr(I))
    else
      AssertNotInCache(cache, 'key' + IntToStr(i));
  end;
end;

procedure TLruCacheTest.AssertInCache(Cache: TLruCache<string, string>; const Key, ExpectedValue: string);
begin
  var value: string;
  Check(Cache.TryGetValue(Key, value), Key + ' should be in cache');
  CheckEquals(ExpectedValue, value);
end;

procedure TLruCacheTest.AssertNotInCache(Cache: TLruCache<string, string>; const Key: string);
begin
  var value: string;
  Check(not Cache.TryGetValue(Key, value), Key + ' should not be in cache');
  CheckEquals('', value);
end;

function TLruCacheTest.GetCache(MaxItems, Count: Integer): TLruCache<string, string>;
begin
  FCache := TLruCache<string, string>.Create(MaxItems);
  for var I := 0 to Count - 1 do
    FCache.AddOrUpdate('key' + IntToStr(I), 'value' + IntToStr(I));
  Result := FCache;
end;

procedure TLruCacheTest.SetUtcNowSource(const Value: TFunc<TDateTime>);
begin
  TAWSConfigs.UtcNowSource := Value;
end;

procedure TLruCacheTest.TearDown;
begin
  FCache.Free;
  inherited;
end;

procedure TLruCacheTest.TestEvictExpiredLRUListItems;
begin
  var oldUtcNowSource: TFunc<TDateTime> := TAWSConfigs.UtcNowSource;
  var currentDateTime: TDateTime := TTImeZone.Local.ToUniversalTime(EncodeDate(2021, 1, 1));
  try
    var cache := TLruCache<string, string>.Create(10);

    //0th second
    SetUtcNowSource(function: TDateTime
      begin
        Result := currentDateTime
      end);
    cache.AddOrUpdate('key1', 'value1');

    //5th second
    SetUtcNowSource(function: TDateTime
      begin
        Result := currentDateTime.IncSecond(5);
      end);
    cache.AddOrUpdate('key2', 'value2');

    //10th second
    SetUtcNowSource(function: TDateTime
      begin
        Result := currentDateTime.IncSecond(10);
      end);
    cache.AddOrUpdate('key3', 'value3');

    //16th second
    SetUtcNowSource(function: TDateTime
      begin
        Result := currentDateTime.IncSecond(16);
      end);

    //Evict cache keys that are more than 10 seconds old
    cache.EvictExpiredLRUListItems(10);

    AssertNotInCache(cache, 'key1');
    AssertNotInCache(cache, 'key2');
    AssertInCache(cache, 'key3', 'value3');

    cache.Free;
  finally
    SetUtcNowSource(oldUtcNowSource);
  end;
end;

procedure TLruCacheTest.TestEviction;
begin
  var regionEndpoint: IRegionEndpointEx;
  var lru := TLruCache<string, IRegionEndpointEx>.Create(5);

  lru.AddOrUpdate('my-bucket-us-west-2', TRegionEndpoints.USWest2);

  lru.TryGetValue('my-bucket-us-west-2', regionEndpoint);
  ChecKEquals(TRegionEndpoints.USWest2.SystemName, regionEndpoint.SystemName);

  lru.Evict('my-bucket-us-west-2');

  var found := lru.TryGetValue('my-bucket-us-west-2', regionEndpoint);
  Check(not found, 'Cache entry was not evicted');
  lru.Free;
end;

procedure TLruCacheTest.TestFindOldestItem;
begin
  var cache := TLruCache<string, string>.Create(10);
  cache.AddOrUpdate('key1', 'value1');
  cache.AddOrUpdate('key2', 'value2');
  cache.AddOrUpdate('key3', 'value3');

  // current order: key1 -> key2 -> key3
  ChecKEquals('key1', cache.FindOldestItem.Key);

  cache.AddOrUpdate('key1', 'value1Updated');

  // current order: key2 -> key3 -> key1
  ChecKEquals('key2', cache.FindOldestItem.Key);

  cache.Evict('key2');

  // current order: key3 -> key1
  CheckEquals('key3', cache.FindOldestItem.Key);

  cache.Free;
end;

procedure TLruCacheTest.TestLruCacheTryGetValue;
begin
  var regionEndpoint: IRegionEndpointEx;
  var lru := TLruCache<string, IRegionEndpointEx>.Create(5);

  lru.AddOrUpdate('my-bucket-us-east-1', TRegionEndpoints.USEast1);
  lru.AddOrUpdate('my-bucket-us-west-2', TRegionEndpoints.USWest2);
  lru.AddOrUpdate('my-bucket-ap-northeast-2', TRegionEndpoints.APNortheast2);
  lru.AddOrUpdate('my-bucket-sa-east-1', TRegionEndpoints.SAEast1);

  lru.TryGetValue('my-bucket-us-west-2', regionEndpoint);
  CheckEquals(TRegionEndpoints.USWest2.SystemName, regionEndpoint.SystemName);

  lru.TryGetValue('my-bucket-ap-northeast-2', regionEndpoint);
  CheckEquals(TRegionEndpoints.APNortheast2.SystemName, regionEndpoint.SystemName);

  lru.Free;
end;

procedure TLruCacheTest.TryGetValueEmpty;
begin
  var cache := GetCache(5, 0);
  AssertCache(cache, 0, 0);
end;

procedure TLruCacheTest.TryGetValueOne;
begin
  var cache := GetCache(5, 1);
  AssertCache(cache, 0, 1);
end;

procedure TLruCacheTest.TryGetValueUpdated;
begin
  var cache := GetCache(5, 5);
  cache.AddOrUpdate('key0', 'value1');
  ChecKEquals(5, cache.Count);
  AssertInCache(cache, 'key0', 'value1');
end;

initialization
  RegisterTest('Runtime', TLruCacheTest.Suite);

end.
