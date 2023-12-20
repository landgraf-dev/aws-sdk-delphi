unit AWS.Util.Crypto;

interface

uses
  System.Classes, System.SysUtils,
  AWS.Lib.Utils,
  AWS.Enums;

type
  ICryptoUtil = interface
    function HashAsString(const AData: TArray<Byte>; AsUpperCase: Boolean = False): string;
    function ComputeSHA256Hash(const AData: TArray<Byte>): TArray<Byte>; overload;
    function ComputeSHA256Hash(AStream: TStream): TArray<Byte>; overload;
    function ComputeMD5Hash(const AData: TArray<Byte>): TArray<Byte>; overload;
    function ComputeMD5Hash(Input: TStream): TArray<Byte>; overload;
    function HMACSignBinary(const AData, AKey: TArray<Byte>; AAlgorithmName: TSigningAlgorithm): TArray<Byte>;
    function HMACSign(const AData, AKey: string; AAlgorithmName: TSigningAlgorithm): string; overload;
    function HMACSign(const AData: TArray<Byte>; const AKey: string; AAlgorithmName: TSigningAlgorithm): string; overload;
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
    function HashAsString(const AData: TArray<Byte>; AsUpperCase: Boolean = False): string;
    function ComputeSHA256Hash(const AData: TArray<Byte>): TArray<Byte>; overload;
    function ComputeSHA256Hash(AStream: TStream): TArray<Byte>; overload;
    function ComputeMD5Hash(const AData: TArray<Byte>): TArray<Byte>; overload;
    function ComputeMD5Hash(Input: TStream): TArray<Byte>; overload;
    function HMACSignBinary(const AData, AKey: TArray<Byte>; AAlgorithmName: TSigningAlgorithm): TArray<Byte>;
    function HMACSign(const AData, AKey: string; AAlgorithmName: TSigningAlgorithm): string; overload;
    function HMACSign(const AData: TArray<Byte>; const AKey: string; AAlgorithmName: TSigningAlgorithm): string; overload;
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

function TCryptoUtil.ComputeMD5Hash(const AData: TArray<Byte>): TArray<Byte>;
var
  Hash: THashMD5;
begin
  Hash := THashMD5.Create;
  Hash.Update(AData);
  Result := Hash.HashAsBytes;
end;

function TCryptoUtil.ComputeMD5Hash(Input: TStream): TArray<Byte>;
begin
  Result := THashMD5.GetHashBytes(Input);
end;

function TCryptoUtil.ComputeSHA256Hash(AStream: TStream): TArray<Byte>;
begin
  Result := THashSHA2.GetHashBytes(AStream, SHA256);
end;

function TCryptoUtil.HashAsString(const AData: TArray<Byte>; AsUpperCase: Boolean = False): string;
begin
  Result := THash.DigestAsString(AData);
  if AsUpperCase then
    Result := UpperCase(Result);
end;

function TCryptoUtil.HMACSign(const AData, AKey: string; AAlgorithmName: TSigningAlgorithm): string;
begin
  var binaryData := TEncoding.UTF8.GetBytes(AData);
  Result := HMACSign(binaryData, AKey, AAlgorithmName);
end;

function TCryptoUtil.HMACSign(const AData: TArray<Byte>; const AKey: string; AAlgorithmName: TSigningAlgorithm): string;
begin
  if AKey = '' then
    raise EArgumentNilException.Create('Please specify a Secret Signing Key.');
  if Length(AData) = 0 then
    raise EArgumentNilException.Create('Please specify data to sign.');

  var bytes: TArray<Byte>;
  case AAlgorithmName of
    TSigningAlgorithm.HmacSHA1:
      bytes := THashSHA1.GetHMACAsBytes(AData, TEncoding.UTF8.GetBytes(AKey));
    TSigningAlgorithm.HmacSHA256:
      bytes := THashSHA2.GetHMACAsBytes(AData, TEncoding.UTF8.GetBytes(AKey), SHA256);
  else
    raise EInvalidDataException.Create('Unsupported signing algorithm');
  end;
  Result := AWS.Lib.Utils.EncodeBase64(bytes);
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
