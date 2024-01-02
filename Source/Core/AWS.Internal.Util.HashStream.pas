unit AWS.Internal.Util.HashStream;

interface

uses
  System.Classes, System.SysUtils, System.Hash,
  AWS.Runtime.Exceptions,
  AWS.Util.Streams;

type
  IHashingWrapper = interface
    procedure Clear;
    procedure AppendBlock(var Buffer; Count: Longint);
    function CalculatedHash: TArray<Byte>;
  end;

  TMD5HashingWrapper = class(TInterfacedObject, IHashingWrapper)
  strict private
    FHash: THashMD5;
  public
    function CalculatedHash: TArray<Byte>;
    procedure AppendBlock(var Buffer; Count: Longint);
    procedure Clear;
  end;

  THashStream = class(TWrapperStream)
  private
    FAlgorithm: IHashingWrapper;
    FExpectedHash: TArray<Byte>;
    FExpectedLength: Int64;
    FCurrentPosition: Int64;
  protected
    procedure CheckHash;
    property Algorithm: IHashingWrapper read FAlgorithm write FAlgorithm;
  protected
    { TStream overrides }
    function GetSize: Int64; override;
  public
    { TStream overrides }
    function Read(var Buffer; Count: Longint): Longint; override;
//    function Write(const Buffer; Count: Longint): Longint; override;
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64; override;
  public
    constructor Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64; AOwnsStream: Boolean);
    procedure Reset;
    function CalculatedHash: TArray<Byte>;
    function CanSeek: Boolean; override;
    property ExpectedHash: TArray<Byte> read FExpectedHash;
    property ExpectedLength: Int64 read FExpectedLength;
    property CurrentPosition: Int64 read FCurrentPosition;
  end;

  TMD5Stream = class(THashStream)
  public
    constructor Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64; AOwnsStream: Boolean);
  end;

implementation

{ THashStream }

function THashStream.CalculatedHash: TArray<Byte>;
begin
  Result := Algorithm.CalculatedHash;
end;

function THashStream.CanSeek: Boolean;
begin
  Result := False;
end;

procedure THashStream.CheckHash;
begin
  if Length(ExpectedHash) = 0 then Exit;

  var Calculated := CalculatedHash;
  if Length(ExpectedHash) <> Length(Calculated) then
    raise EAmazonClientException.Create('Expected hash not equal to calculated hash');

  if not CompareMem(@Calculated[0], @ExpectedHash[0], Length(Calculated)) then
    raise EAmazonClientException.Create('Expected hash not equal to calculated hash');
end;

constructor THashStream.Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64; AOwnsStream: Boolean);
begin
  inherited Create(ABaseStream, AOwnsStream);
  FExpectedHash := AExpectedHash;
  FExpectedLength := AExpectedLength;
  Reset;
end;

function THashStream.GetSize: Int64;
begin
  Result := ExpectedLength;
end;

function THashStream.Read(var Buffer; Count: Longint): Longint;
begin
  Result := inherited Read(Buffer, Count);

  FCurrentPosition := FCurrentPosition + Result;
  Algorithm.AppendBlock(Buffer, Result);
  if (FExpectedLength >= 0) and (FCurrentPosition >= FExpectedLength) then
    CheckHash;
end;

procedure THashStream.Reset;
begin
  FCurrentPosition := 0;
  Algorithm.Clear;
  if BaseStream is THashStream then
    THashStream(BaseStream).Reset;
end;

function THashStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  case Origin of
    soBeginning:
      if FCurrentPosition = Offset then Exit(FCurrentPosition);
    soCurrent:
      if Offset = 0 then
        Exit(FCurrentPosition);
    soEnd:
      if (Offset = 0) and (FCurrentPosition = Size) then
        Exit(FCurrentPosition);
  end;
  raise ENotSupportedException.Create('THashStream does not support seeking');
end;

{ TMD5Stream }

constructor TMD5Stream.Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64;
  AOwnsStream: Boolean);
begin
  Algorithm := TMD5HashingWrapper.Create;
  inherited Create(ABaseStream, AExpectedHash, AExpectedLength, AOwnsStream);
end;

{ TMD5HashingWrapper }

procedure TMD5HashingWrapper.AppendBlock(var Buffer; Count: Longint);
begin
  FHash.Update(Buffer, Count);
end;

function TMD5HashingWrapper.CalculatedHash: TArray<Byte>;
begin
  Result := FHash.HashAsBytes;
end;

procedure TMD5HashingWrapper.Clear;
begin
  FHash := THashMD5.Create;
end;

end.
