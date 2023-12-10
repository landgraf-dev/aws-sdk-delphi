unit AWS.Internal.Util.ChunkedUploadWrapperStream;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.Classes,
  AWS.Internal.Auth.AWS4SignerHelper,
  AWS.Runtime.Exceptions,
  AWS.SDKUtils,
  AWS.Util.Streams;

type
  TReadStrategy = (ReadDirect, ReadAndCopy);

  TChunkedUploadWrapperStream = class(TWrapperStream)
  private const
    CLRF = #13#10;
    CHUNK_STRING_TO_SIGN_PREFIX = 'AWS4-HMAC-SHA256-PAYLOAD';
    CHUNK_SIGNATURE_HEADER = ';chunk-signature=';
    SIGNATURE_LENGTH = 64;
  public const
    DefaultChunkSize = 81920;
  private
    FInputBuffer: TArray<Byte>;
    FOutputBuffer: TArray<Byte>;
    FOutputBufferPos: Integer;
    FOutputBufferDataLen: Integer;
    FWrappedStreamBufferSize: Integer;
    FWrappedStreamConsumed: Boolean;
    FOutputBufferIsTerminatingChunk: Boolean;
    FReadStrategy: TReadStrategy;
    FHeaderSigningResult: TAWS4SigningResult;
    FPreviousChunkSignature: string;
    FPosition: Int64;
    class function CalculateChunkHeaderLength(ChunkDataSize: Int64): Int64; static;
    function AdjustBufferAfterReading(var Buffer; Count, BytesRead: Longint): Longint;
    procedure ConstructOutputBufferChunk(DataLen: Longint);
    function FillInputBuffer: Integer;
  protected
    { TStream overrides }
    function GetSize: Int64; override;
  public
    { TStream overrides }
    function Read(var Buffer; Count: Longint): Longint; override;
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64; override;
  public
    class function ComputeChunkedContentLength(OriginalLength: Int64): Int64; static;
    constructor Create(AStream: TStream; AWrappedStreamBufferSize: Integer; AHeaderSigningResult: TAWS4SigningResult;
      AOwnsStream: Boolean); reintroduce;
    function CanSeek: Boolean; override;
    function HasLength: Boolean; override;
  end;

implementation

{ TChunkedUploadWrapperStream }

function TChunkedUploadWrapperStream.AdjustBufferAfterReading(var Buffer; Count, BytesRead: Longint): Longint;
begin
  if FOutputBufferPos = -1 then
  begin
    ConstructOutputBufferChunk(BytesRead);
    FOutputBufferIsTerminatingChunk := FWrappedStreamConsumed and (BytesRead = 0);
  end;

  var outputRemaining := FOutputBufferDataLen - FOutputBufferPos;
  if outputRemaining < Count then
    Count := outputRemaining;

  System.Move(PByte(@FOutputBuffer[FOutputBufferPos])^, Buffer, Count);
  FOutputBufferPos := FOutputBufferPos + Count;
  if FOutputBufferPos >= FOutputBufferDataLen then
    FOutputBufferPos := -1;

  Result := Count;
end;

class function TChunkedUploadWrapperStream.CalculateChunkHeaderLength(ChunkDataSize: Int64): Int64;
begin
  Result := Length(IntToHex(ChunkDataSize, 0))
    + Length(CHUNK_SIGNATURE_HEADER)
    + SIGNATURE_LENGTH
    + Length(CLRF)
    + chunkDataSize
    + Length(CLRF);
end;

function TChunkedUploadWrapperStream.CanSeek: Boolean;
begin
  Result := False;
end;

class function TChunkedUploadWrapperStream.ComputeChunkedContentLength(OriginalLength: Int64): Int64;
begin
  if OriginalLength < 0 then
    raise EArgumentOutOfRangeException.Create('Expected 0 or greater value for originalLength');

  if OriginalLength = 0 then
    Exit(CalculateChunkHeaderLength(0));

  var maxSizeChunks := OriginalLength div DefaultChunkSize;
  var remainingBytes := OriginalLength mod DefaultChunkSize;
  var remainingChunkLength: Integer := 0;
  if remainingBytes > 0 then
    remainingChunkLength := CalculateChunkHeaderLength(remainingBytes);

  Result := maxSizeChunks * CalculateChunkHeaderLength(DefaultChunkSize) + remainingChunkLength + CalculateChunkHeaderLength(0);
end;

procedure TChunkedUploadWrapperStream.ConstructOutputBufferChunk(DataLen: Longint);
begin
  // if the input wasn't sufficient to fill the buffer, size it
  // down to make the subseqent hashing/computations easier since
  // they don't take any length arguments
  if (DataLen > 0) and (DataLen < Length(FInputBuffer)) then
  begin
    var temp: TArray<Byte>;
    SetLength(temp, DataLen);
    System.Move(PByte(@FInputBuffer[0])^, PByte(@Temp[0])^, DataLen);
    FInputBuffer := temp;
  end;

  var chunkHeader := TStringBuilder.Create;
  try
    // variable-length size of the embedded chunk data in hex
    chunkHeader.Append(IntToHex(DataLen, 0));

    if FHeaderSigningResult <> nil then
    begin
      var nonsigExtension := '';

      // signature-extension
      var chunkContentHash := TAWS4SignerConsts.EmptyBodySha256;
      if DataLen > 0 then
        chunkContentHash := TAWSSDKUtils.ToHex(TAWS4SignerUtils.ComputeHash(FInputBuffer), true);

      var chunkStringToSign :=
        CHUNK_STRING_TO_SIGN_PREFIX + #10 +
        FHeaderSigningResult.ISO8601DateTime + #10 +
        FHeaderSigningResult.Scope + #10 +
        FPreviousChunkSignature + #10 +
        TAWSSDKUtils.ToHex(TAWS4SignerUtils.ComputeHash(nonsigExtension), True) + #10 +
        chunkContentHash;

      var chunkSignature := TAWSSDKUtils.ToHex(TAWS4SignerUtils.SignBlob(FHeaderSigningResult.SigningKey, chunkStringToSign), True);
      FPreviousChunkSignature := chunkSignature;
      chunkHeader.Append(nonsigExtension + CHUNK_SIGNATURE_HEADER + chunkSignature);
    end;

    chunkHeader.Append(CLRF);

    try
      var header := TEncoding.UTF8.GetBytes(chunkHeader.ToString);
      var trailer := TEncoding.UTF8.GetBytes(CLRF);

      var writePos := 0;
      System.Move(PByte(@Header[0])^, PByte(@FOutputBuffer[writePos])^, Length(header));
      writePos := writePos + Length(header);
      if DataLen > 0 then
      begin
        System.Move(PByte(@FInputBuffer[0])^, PByte(@FOutputBuffer[writePos])^, DataLen);
        writePos := writePos + DataLen;
      end;
      System.Move(PByte(@trailer[0])^, PByte(@FOutputBuffer[writePos])^, Length(trailer));

      FOutputBufferPos := 0;
      FOutputBufferDataLen := Length(header) + DataLen + Length(trailer);
    except
      on E: Exception do
        raise EAmazonClientException.Create('Unable to sign the chunked data. ' + E.Message);
    end;
  finally
    chunkHeader.Free;
  end;
end;

constructor TChunkedUploadWrapperStream.Create(AStream: TStream; AWrappedStreamBufferSize: Integer;
  AHeaderSigningResult: TAWS4SigningResult; AOwnsStream: Boolean);
begin
  inherited Create(AStream, AOwnsStream);
  FOutputBufferPos := -1;
  FOutputBufferDataLen := -1;

  FHeaderSigningResult := AHeaderSigningResult;
  if FHeaderSigningResult <> nil then
    FPreviousChunkSignature := FHeaderSigningResult.Signature;

  FWrappedStreamBufferSize := AWrappedStreamBufferSize;
  SetLength(FInputBuffer, DefaultChunkSize);
  SetLength(FOutputBuffer, CalculateChunkHeaderLength(DefaultChunkSize)); // header+data

  {TODO: implement check for encryption stream}
end;

function TChunkedUploadWrapperStream.FillInputBuffer: Integer;
begin
  if FWrappedStreamConsumed then
    Exit(0);

  var inputBufferPos := 0;

  if FReadStrategy = TReadStrategy.ReadDirect then
  begin
    while (inputBufferPos < Length(FInputBuffer)) and not FWrappedStreamConsumed do
    begin
      // chunk buffer size may not align exactly with underlying buffer size
      var chunkBufferRemaining := Length(FInputBuffer) - inputBufferPos;
      if chunkBufferRemaining > FWrappedStreamBufferSize then
        chunkBufferRemaining := FWrappedStreamBufferSize;

      var bytesRead := BaseStream.Read(PByte(@FInputBuffer[inputBufferPos])^, chunkBufferRemaining);
      if bytesRead = 0 then
        FWrappedStreamConsumed := True
      else
        inputBufferPos := inputBufferPos + bytesRead;
    end;
  end
  else
  begin
    var readBuffer: TArray<Byte>;
    SetLength(readBuffer, FWrappedStreamBufferSize);
    while (inputBufferPos < Length(FInputBuffer)) and not FWrappedStreamConsumed do
    begin
      var bytesRead := BaseStream.Read(PByte(@readBuffer[0])^, FWrappedStreamBufferSize);
      if bytesRead = 0 then
        FWrappedStreamConsumed := True
      else
      begin
        System.Move(PByte(@readBuffer[0])^, PByte(@FInputBuffer[inputBufferPos])^, bytesRead);
        inputBufferPos := inputBufferPos + bytesRead;
      end;
    end;
  end;

  Result := inputBufferPos;
end;

function TChunkedUploadWrapperStream.GetSize: Int64;
begin
  if BaseStream = nil then
    Result := 0
  else
    Result := ComputeChunkedContentLength(BaseStream.Size);
end;

function TChunkedUploadWrapperStream.HasLength: Boolean;
begin
  Result := FHeaderSigningResult <> nil;
end;

function TChunkedUploadWrapperStream.Read(var Buffer; Count: Longint): Longint;
begin
  var bytesRead := 0;

  // if we've no output and it was the special termination chunk,
  // we're done otherwise fill the input buffer with enough data
  // for the next chunk (or with whatever is left) and construct
  // the chunk in the output buffer ready for streaming
  if FOutputBufferPos = -1 then
  begin
    if FWrappedStreamConsumed and FOutputBufferIsTerminatingChunk then
      Exit(0);
    bytesRead := FillInputBuffer;
  end;
  Result := AdjustBufferAfterReading(Buffer, Count, bytesRead);
  FPosition := FPosition + Result;
end;

function TChunkedUploadWrapperStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  case Origin of
    soBeginning:
      if FPosition = Offset then Exit(FPosition);
    soCurrent:
      if Offset = 0 then
        Exit(FPosition);
  end;
  raise ENotSupportedException.Create('TChunkedUploadWrapperStream does not support seeking');
end;

end.
