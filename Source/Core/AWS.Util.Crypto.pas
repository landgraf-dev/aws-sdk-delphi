unit AWS.Util.Crypto;

interface

uses
  System.Classes, System.SysUtils,
  AWS.SDKUtils;

type
  ICryptoUtil = interface
    function ComputeSHA256Hash(const AData: TArray<Byte>): TArray<Byte>; overload;
    function ComputeSHA256Hash(AStream: TStream): TArray<Byte>; overload;
    function HMACSignBinary(const AData, AKey: TArray<Byte>; AAlgorithmName: TSigningAlgorithm): TArray<Byte>;
  end;

  TCryptoUtilFactory = class
  strict private
    class var FUtil: ICryptoUtil;
    class constructor Create;
  public
    class function CryptoInstance: ICryptoUtil;
  end;

  TCryptoUtil = class(TInterfacedObject, ICryptoUtil)
  public
    function ComputeSHA256Hash(const AData: TArray<Byte>): TArray<Byte>; overload;
    function ComputeSHA256Hash(AStream: TStream): TArray<Byte>; overload;
    function HMACSignBinary(const AData, AKey: TArray<Byte>; AAlgorithmName: TSigningAlgorithm): TArray<Byte>;
  end;

implementation

uses
  System.Hash,
  AWS.Runtime.Exceptions;

{ TCryptoUtilFactory }

class constructor TCryptoUtilFactory.Create;
begin
  FUtil := TCryptoUtil.Create;
end;

class function TCryptoUtilFactory.CryptoInstance: ICryptoUtil;
begin
  Result := FUtil;
end;

{ TCryptoUtil }

function TCryptoUtil.ComputeSHA256Hash(const AData: TArray<Byte>): TArray<Byte>;
var
  Hash: THashSHA2;
begin
  Hash := THashSHA2.Create(SHA256);
  Hash.Update(AData);
  Result := Hash.HashAsBytes;
end;

function TCryptoUtil.ComputeSHA256Hash(AStream: TStream): TArray<Byte>;
begin
  Result := THashSHA2.GetHashBytes(AStream, SHA256);
end;

function TCryptoUtil.HMACSignBinary(const AData, AKey: TArray<Byte>; AAlgorithmName: TSigningAlgorithm): TArray<Byte>;
begin
  if Length(AKey) = 0 then
    raise EArgumentNilException.Create('Please specify a Secret Signing Key.');
  if Length(AData) = 0 then
    raise EArgumentNilException.Create('Please specify data to sign.');

  case AAlgorithmName of
    TSigningAlgorithm.HmacSHA1:
      Result := THashSHA1.GetHMACAsBytes(AData, AKey);
    TSigningAlgorithm.HmacSHA256:
      Result := THashSHA2.GetHMACAsBytes(AData, AKey, SHA256);
  else
    raise EInvalidDataException.Create('Unsupported signing algorithm');
  end;

end;

end.
