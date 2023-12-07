unit AWS.Internal.Util.ChunkedUploadWrapperStream;

interface

uses
  System.SysUtils,
  AWS.Util.Streams;

type
  TChunkedUploadWrapperStream = class(TWrapperStream)
  private const
    CLRF = #13#10;
    CHUNK_STRING_TO_SIGN_PREFIX = 'AWS4-HMAC-SHA256-PAYLOAD';
    CHUNK_SIGNATURE_HEADER = ';chunk-signature=';
    SIGNATURE_LENGTH = 64;
  public const
    DefaultChunkSize = 81920;
  private
    class function CalculateChunkHeaderLength(ChunkDataSize: Int64): Int64; static;
  public
    class function ComputeChunkedContentLength(OriginalLength: Int64): Int64; static;
  end;

implementation

{ TChunkedUploadWrapperStream }

class function TChunkedUploadWrapperStream.CalculateChunkHeaderLength(ChunkDataSize: Int64): Int64;
begin
  Result := Length(IntToHex(ChunkDataSize, 0))
    + Length(CHUNK_SIGNATURE_HEADER)
    + SIGNATURE_LENGTH
    + Length(CLRF)
    + chunkDataSize
    + Length(CLRF);
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

end.
