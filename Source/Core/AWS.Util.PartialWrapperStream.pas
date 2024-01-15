unit AWS.Util.PartialWrapperStream;

interface

uses
  System.Classes, System.SysUtils,
  AWS.Util.Streams;

type
  TPartialWrapperStream = class(TWrapperStream)
  private
    FInitialPosition: Int64;
    FPartSize: Int64;
    function RemainingPartSize: Int64;
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
    constructor Create(Stream: TStream; APartSize: Int64; AOwnsStream: Boolean);
  end;

implementation

{ TPartialWrapperStream }

constructor TPartialWrapperStream.Create(Stream: TStream; APartSize: Int64; AOwnsStream: Boolean);
begin
  if not AWS.Util.Streams.CanSeek(Stream) then
    raise EInvalidOpException.Create('Base stream of PartialWrapperStream must be seekable');

  inherited Create(Stream, AOwnsStream);

  FInitialPosition := Stream.Position;
  var remainingData: Int64 := Stream.Size - Stream.Position;
  if (APartSize = 0) or (remainingData < APartSize) then
    FPartSize := remainingData
  else
  begin
    FPartSize := APartSize;

    { TODO: implement if/when encryption is added }
//    var encryptionStream := BaseStream as TAESEncryptionUploadPartStream;
//    if (encryptionStream <> nil) and ((partSize mod 16) <> 0) then
//      FPartSize := APartSize - (APartSize mod TEncryptUploadPartStream.InternalEncryptionBlockSize);
  end;
end;

function TPartialWrapperStream.GetSize: Int64;
begin
  Result := (inherited Size) - FInitialPosition;
  if Result > FPartSize then
    Result := FPartSize;
end;

function TPartialWrapperStream.Read(var Buffer; Count: Longint): Longint;
begin
  var bytesToRead: Longint;
  if Count < RemainingPartSize then
    bytesToRead := Count
  else
    bytesToRead := Longint(RemainingPartSize);

  if bytesToRead <= 0 then
    Result := 0
  else
    Result := inherited Read(Buffer, bytesToRead);
end;

function TPartialWrapperStream.RemainingPartSize: Int64;
begin
  Result := FPartSize - Position;
end;

function TPartialWrapperStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  var Pos: Int64 := 0;
  var BasePos: Int64 := inherited Seek(0, soCurrent);

  case Origin of
    soBeginning:
      Pos := FInitialPosition + Offset;
    soCurrent:
      Pos := BasePos + Offset;
    soEnd:
      Pos := BasePos + FPartSize + Offset;
  end;

  if Pos < FInitialPosition then
    Pos := FInitialPosition
  else
  if Pos > FInitialPosition + FPartSize then
    Pos := FInitialPosition + FPartSize;

  Result := inherited Seek(Pos, soFromBeginning);
  Result := Result - FInitialPosition;
end;

procedure TPartialWrapperStream.SetSize(NewSize: Longint);
begin
  raise ENotSupportedException.Create('TPartialWrapperStream.SetSize');
end;

procedure TPartialWrapperStream.SetSize(const NewSize: Int64);
begin
  raise ENotSupportedException.Create('TPartialWrapperStream.SetSize64');
end;

function TPartialWrapperStream.Write(const Buffer; Count: Longint): Longint;
begin
  raise ENotSupportedException.Create('TPartialWrapperStream.Write');
end;

end.
