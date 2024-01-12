unit AWS.S3.Util.AmazonS3Uri;

interface

uses
  System.RegularExpressions, System.SysUtils,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.Runtime.Exceptions,
  AWS.SDKUtils;

type
  TAmazonS3Uri = class
  private
    class var EndpointRegexMatch: TRegex;
  private
    class constructor Create;
    class function Decode(const S: string): string; overload; static;
    class function Decode(const S: string; FirstPercent: Integer): string; overload; static;
    class procedure AppendDecoded(var Value: string; const S: string; Index: Integer); static;
    class function FromHex(C: Char): Byte; static;
  public
    class function TryParseAmazonS3Uri(const Uri: string; var AmazonS3Uri: TAmazonS3Uri): Boolean; overload; static;
    class function TryParseAmazonS3Uri(const Uri: IUri; var AmazonS3Uri: TAmazonS3Uri): Boolean; overload; static;
    class function IsAmazonS3Endpoint(const Uri: IUri): Boolean; overload; static;
  private
    FIsPathStyle: Boolean;
    FBucket: string;
    FKey: string;
    FRegion: IRegionEndpointEx;
  public
    constructor Create(const Uri: IUri); overload;
    constructor Create(const Uri: string); overload;
    property IsPathStyle: Boolean read FIsPathStyle;
    property Bucket: string read FBucket;
    property Key: string read FKey;
    property Region: IRegionEndpointEx read FRegion write FRegion;
  end;


implementation

{ TAmazonS3Uri }

class constructor TAmazonS3Uri.Create;
begin
  EndpointRegexMatch := TRegex.Create('^(.+\.)?s3[.-]([a-z0-9-]+)\.', [roCompiled]);
end;

class function TAmazonS3Uri.TryParseAmazonS3Uri(const Uri: string; var AmazonS3Uri: TAmazonS3Uri): Boolean;
begin
  try
    Result := TryParseAmazonS3Uri(TUri.Create(Uri), AmazonS3Uri);
  except
    AmazonS3Uri := nil;
    Result := False;
  end;
end;

class procedure TAmazonS3Uri.AppendDecoded(var Value: string; const S: string; Index: Integer);
begin
  if Index > S.Length - 3 then
   raise EInvalidOpException.CreateFmt('Invalid percent-encoded string "%s"', [S]);
  var first := S.Chars[index + 1];
  var second := S.Chars[index + 2];

  var decoded := Chr((FromHex(first) shl 4) or FromHex(second));
  Value := Value + decoded;
end;

constructor TAmazonS3Uri.Create(const Uri: IUri);
begin
  if Uri = nil then
    raise EArgumentNilException.Create('uri');

  if Uri.Host = '' then
    raise EArgumentException.Create('Invalid URI - no hostname present');

  var match := EndpointRegexMatch.Match(Uri.Host);
  if not match.Success then
    raise EArgumentException.Create('Invalid S3 URI - hostname does not appear to be a valid S3 endpoint');

  // for host style urls:
  //   group 0 is bucketname plus 's3' prefix and possible region code
  //   group 1 is bucket name
  //   group 2 will be region or 'amazonaws' if US Classic region
  // for path style urls:
  //   group 0 will be s3 prefix plus possible region code
  //   group 1 will be empty
  //   group 2 will be region or 'amazonaws' if US Classic region
  var bucketNameGroup := match.Groups[1];
  if string.IsNullOrEmpty(bucketNameGroup.Value) then
  begin
    // no bucket name in the authority, parse it from the path
    FIsPathStyle := True;

    // grab the encoded path so we don't run afoul of '/'s in the bucket name
    var path := Uri.AbsolutePath;
    if path = '/' then
    begin
      FBucket := '';
      FKey := '';
    end
    else
    begin
      var index := path.IndexOf('/', 1);
      if index = -1 then
      begin
        // https://s3.amazonaws.com/bucket
        FBucket := Decode(path.Substring(1));
        FKey := '';
      end
      else
      if index = (path.Length - 1) then
      begin
        // https://s3.amazonaws.com/bucket/
        FBucket := Decode(path.Substring(1, index)).TrimRight(['/']);
        FKey := '';
      end
      else
      begin
        // https://s3.amazonaws.com/bucket/key
        FBucket := Decode(path.Substring(1, index)).TrimRight(['/']);
        FKey := Decode(path.Substring(index + 1));
      end;
    end;
  end
  else
  begin
    // bucket name in the host, path is the object key
    FIsPathStyle := false;

    // remove any trailing '.' from the prefix to get the bucket name
    FBucket := bucketNameGroup.Value.TrimRight(['.']);
    if Uri.AbsolutePath = '/' then
      FKey := ''
    else
      FKey := Decode(Uri.AbsolutePath.Substring(1));
  end;

  if match.Groups.Count > 2 then
  begin
    // US 'classic' urls will not have a region code in the endpoint
    var regionGroupValue := match.Groups[2].Value;
    if (regionGroupValue = 'amazonaws') or (regionGroupValue = 'external-1') then
      Region := TRegionEndpoints.USEast1
    else
      try
        Region := TRegionEndpoint.GetBySystemName(regionGroupValue);
      except
        on E: EAmazonClientException do
        begin
          // in cases where endpoints such as "s3-accelerate" matches,
          // just set the region to null and move on.
          Region := nil;
        end;
      end;
  end;
end;

constructor TAmazonS3Uri.Create(const Uri: string);
begin
  var UriIntf: IUri := TUri.Create(Uri);
  Create(UriIntf);
end;

class function TAmazonS3Uri.Decode(const S: string; FirstPercent: Integer): string;
begin
  Result := S.Substring(0, FirstPercent);
  AppendDecoded(Result, S, FirstPercent);

  var I := FirstPercent + 3;
  while I < S.Length do
  begin
    if S.Chars[i] = '%' then
    begin
      AppendDecoded(Result, S, I);
      I := I + 2;
    end
    else
      Result := Result + S.Chars[I];
    Inc(I);
  end;
end;

class function TAmazonS3Uri.FromHex(C: Char): Byte;
begin
  if c < '0' then
    raise EInvalidOpException.Create('Invalid percent-encoded string: bad character "' + c + '" in escape sequence.');

  if c <= '9' then
    Exit(Ord(C) - Ord('0'));

  if c < 'A' then
    raise EInvalidOpException.Create('Invalid percent-encoded string: bad character "' + c + '" in escape sequence.');
  if c <= 'F' then
    Exit(Ord(C) - Ord('A') + 10);

  if c < 'a' then
    raise EInvalidOpException.Create('Invalid percent-encoded string: bad character "' + c + '" in escape sequence.');
  if c <= 'f' then
    Exit(Ord(C) - Ord('a') + 10);

  raise EInvalidOpException.Create('Invalid percent-encoded string: bad character "' + c + '" in escape sequence.');
end;

class function TAmazonS3Uri.Decode(const S: string): string;
begin
  if S = '' then
    Exit('');

  for var i := 0 to Length(S) - 1 do
    if s.Chars[i] = '%' then
      Exit(Decode(S, I));
  Result := S;
end;

class function TAmazonS3Uri.IsAmazonS3Endpoint(const Uri: IUri): Boolean;
begin
  if {Uri.IsAbsoluteUri and }
    Uri.Host.EndsWith('amazonaws.com', True) or Uri.Host.EndsWith('amazonaws.com.cn', True) then
    Result := EndpointRegexMatch.Match(Uri.Host).Success
  else
    Result := False;
end;

class function TAmazonS3Uri.TryParseAmazonS3Uri(const Uri: IUri; var AmazonS3Uri: TAmazonS3Uri): Boolean;
begin
  try
    if IsAmazonS3Endpoint(Uri) then
    begin
      AmazonS3Uri := TAmazonS3Uri.Create(Uri);
      Exit(True);
    end;
  except
  end;
  AmazonS3Uri := nil;
  Result := False;
end;

end.
