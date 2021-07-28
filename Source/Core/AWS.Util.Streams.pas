unit AWS.Util.Streams;

interface

uses
  System.Classes, System.SysUtils;

type
  /// <summary>
  /// A stream that wraps another stream
  /// </summary>
  TWrapperStream = class(TStream)
  strict private
    FBaseStream: TStream;
    FOwnsStream: Boolean;
  strict protected
    property BaseStream: TStream read FBaseStream;
    property OwnsStream: Boolean read FOwnsStream write FOwnsStream;
  protected
    { TStream overrides }
    function GetSize: Int64; override;
    procedure SetSize(NewSize: Longint); override;
    procedure SetSize(const NewSize: Int64); override;
  public
    { TStream overrides }
    function Read(var Buffer; Count: Longint): Longint; override;
    function Write(const Buffer; Count: Longint): Longint; override;
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64; override;
  public
    constructor Create(ABaseStream: TStream; AOwnsStream: Boolean);
    destructor Destroy; override;
    function CanSeek: Boolean; virtual;
    function SearchWrappedStream(ACondition: TFunc<TStream, Boolean>): TStream; overload;
    class function SearchWrappedStream(AStream: TStream; ACondition: TFunc<TStream, Boolean>): TStream; overload; static;
  end;

  /// <summary>
  /// A stream which caches the contents of the underlying stream as it reads it.
  /// </summary>
  TCachingWrapperStream = class(TWrapperStream)
  strict private
    FCacheLimit: Integer;
    FLogLimit: Integer;
    FCache: TBytesStream;
    FStreamSize: Int64;
  protected
    function GetSize: Int64; override;
  public
    { TStream overrides }
    function Read(var Buffer; Count: Longint): Longint; override;
    function Write(const Buffer; Count: Longint): Longint; override;
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64; override;
  public
    constructor Create(ABaseStream: TStream; AOwnsStream: Boolean; ALogLimit, ACacheLimit: Integer);
    destructor Destroy; override;
    function AllReadBytes: TArray<Byte>;
    function LoggableReadBytes: TArray<Byte>;
    function CanSeek: Boolean; override;
  end;

function CanSeek(S: TStream): Boolean;

implementation

uses
  System.Math;

type
  TInternalStream = class(TStream)
  end;

function IsSeekableStream(S: TStream): Boolean;
begin
  // Check for specific stream classes and return False for those that
  // are not seekable - except TWrapperStream descendants.
  Result := True;
end;

function CanSeek(S: TStream): Boolean;
begin
  if S is TWrapperStream then
    Result := TWrapperStream(S).CanSeek
  else
    Result := IsSeekableStream(S);
end;

{ TWrapperStream }

function TWrapperStream.CanSeek: Boolean;
begin
  Result := IsSeekableStream(BaseStream);
end;

constructor TWrapperStream.Create(ABaseStream: TStream; AOwnsStream: Boolean);
begin
  inherited Create;
  FBaseStream := ABaseStream;
  FOwnsStream := AOwnsStream;
end;

destructor TWrapperStream.Destroy;
begin
  if OwnsStream then
    FBaseStream.Free;
  inherited;
end;

function TWrapperStream.GetSize: Int64;
begin
  Result := TInternalStream(BaseStream).GetSize;
end;

function TWrapperStream.Read(var Buffer; Count: Longint): Longint;
begin
  Result := BaseStream.Read(Buffer, Count);
end;

class function TWrapperStream.SearchWrappedStream(AStream: TStream; ACondition: TFunc<TStream, Boolean>): TStream;
begin
  if not (AStream is TWrapperStream) then
    Result := TWrapperStream(AStream).SearchWrappedStream(ACondition)
  else
  begin
    if ACondition(AStream) then
      Result := AStream
    else
      Result := nil;      
  end;
end;

function TWrapperStream.SearchWrappedStream(ACondition: TFunc<TStream, Boolean>): TStream;
var
  LocalBaseStream: TStream;
begin 
  LocalBaseStream := Self;
  repeat
    if ACondition(LocalBaseStream) then
      Exit(LocalBaseStream);

    if not (LocalBaseStream is TWrapperStream) then
      Exit(nil);

    LocalBaseStream := TWrapperStream(LocalBaseStream).BaseStream;
  until LocalBaseStream = nil;

  Result := LocalBaseStream;
end;

function TWrapperStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  Result := BaseStream.Seek(Offset, Origin);
end;

procedure TWrapperStream.SetSize(NewSize: Longint);
begin
  TInternalStream(BaseStream).SetSize(Int64(NewSize));
end;

procedure TWrapperStream.SetSize(const NewSize: Int64);
begin
  TInternalStream(BaseStream).SetSize(NewSize);
end;

function TWrapperStream.Write(const Buffer; Count: Longint): Longint;
begin
  Result := BaseStream.Write(Buffer, Count);
end;

{ TCachingWrapperStream }

function TCachingWrapperStream.AllReadBytes: TArray<Byte>;
begin
  Result := FCache.Bytes;
end;

function TCachingWrapperStream.CanSeek: Boolean;
begin
  Result := False;
end;

constructor TCachingWrapperStream.Create(ABaseStream: TStream; AOwnsStream: Boolean; ALogLimit, ACacheLimit: Integer);
begin
  inherited Create(ABaseStream, AOwnsStream);
  FCacheLimit := ACacheLimit;
  FCache := TBytesStream.Create;
end;

destructor TCachingWrapperStream.Destroy;
begin
  FCache.Free;
  inherited;
end;

function TCachingWrapperStream.GetSize: Int64;
begin
  Result := FStreamSize;
end;

function TCachingWrapperStream.LoggableReadBytes: TArray<Byte>;
begin
  Result := Copy(FCache.Bytes, 0, FLogLimit);
end;

function TCachingWrapperStream.Read(var Buffer; Count: Longint): Longint;
var
  RemainingCacheSpace: Longint;
  BytesToCache: Longint;
  LocalBuffer: TArray<Byte>;
begin
  if Count <= 0 then Exit(0);

  // Read bytes in temporary buffer
  SetLength(LocalBuffer, Count);
  Result := BaseStream.Read(LocalBuffer, Count);
  if Result <= 0 then Exit;

  // Move read bytes to the destination buffer
  System.Move(LocalBuffer[0], Buffer, Result);
  FStreamSize := FStreamSize + Result;

  // Move read bytes to cache
  RemainingCacheSpace := FCacheLimit - FCache.Size;
  if RemainingCacheSpace < 0 then
    RemainingCacheSpace := 0;
  BytesToCache := Min(Result, RemainingCacheSpace);
  FCache.Write(LocalBuffer[0], BytesToCache);
end;

function TCachingWrapperStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  case Origin of
    soBeginning:
      if FStreamSize = Offset then Exit(FStreamSize);
    soCurrent, soEnd:
      if Offset = 0 then
        Exit(FStreamSize);
  end;
  raise EStreamError.Create('Caching wrapper stream cannot change position');
end;

function TCachingWrapperStream.Write(const Buffer; Count: Longint): Longint;
begin
  Result := 0;
end;

end.
