unit AWS.S3.Util.BucketRegionDetector;

interface

uses
  AWS.RegionEndpoint,
  AWS.Internal.Util.LruCache;

type
  TBucketRegionDetector = class
  private const
    BucketRegionCacheMaxEntries = 300;
    AuthorizationHeaderMalformedErrorCode = 'AuthorizationHeaderMalformed';
  private
    class var FBucketRegionCache: TLruCache<string, IRegionEndpointEx>;
    class constructor Create;
    class destructor Destroy;
  public
    class property BucketRegionCache: TLruCache<string, IRegionEndpointEx> read FBucketRegionCache;
  end;

implementation

{ TBucketRegionDetector }

class constructor TBucketRegionDetector.Create;
begin
  FBucketRegionCache := TLruCache<string, IRegionEndpointEx>.Create(BucketRegionCacheMaxEntries);
end;

class destructor TBucketRegionDetector.Destroy;
begin
  FBucketRegionCache.Free;
end;

end.
