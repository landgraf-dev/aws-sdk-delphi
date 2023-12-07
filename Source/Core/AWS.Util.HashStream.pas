unit AWS.Util.HashStream;

interface

uses
  System.Classes,
  AWS.Util.Streams;

type
  IHashingWrapper = interface
    procedure Clear;
  end;

  THashStream = class(TWrapperStream)
  private
    FAlgorithm: IHashingWrapper;
    FExpectedHash: TArray<Byte>;
    FCalculatedHash: TArray<Byte>;
    FExpectedLength: Int64;
    FCurrentPosition: Int64;
  protected
    function FinishedHashing: Boolean;
    property Algorithm: IHashingWrapper read FAlgorithm write FAlgorithm;
  public
    constructor Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64; AOwnsStream: Boolean);
    procedure Reset;
    property ExpectedHash: TArray<Byte> read FExpectedHash;
    property CalculatedHash: TArray<Byte> read FCalculatedHash;
    property ExpectedLength: Int64 read FExpectedLength;
    property CurrentPosition: Int64 read FCurrentPosition;
  end;

  TMD5Stream = class(THashStream)
  public
    constructor Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64; AOwnsStream: Boolean);
  end;

implementation

{ THashStream }

constructor THashStream.Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64; AOwnsStream: Boolean);
begin
  inherited Create(BaseStream, AOwnsStream);
  FExpectedHash := AExpectedHash;
  FExpectedLength := AExpectedLength;
  Reset;
end;

function THashStream.FinishedHashing: Boolean;
begin
  Result := Length(CalculatedHash) > 0;
end;

procedure THashStream.Reset;
begin
  FCurrentPosition := 0;
  FCalculatedHash := [];
  if Algorithm <> nil then
    Algorithm.Clear;
  if BaseStream is THashStream then
    THashStream(BaseStream).Reset;
end;

{ TMD5Stream }

constructor TMD5Stream.Create(ABaseStream: TStream; const AExpectedHash: TArray<Byte>; const AExpectedLength: Int64;
  AOwnsStream: Boolean);
begin
  inherited Create(ABaseStream, AExpectedHash, AExpectedLength, AOwnsStream);
end;

end.
