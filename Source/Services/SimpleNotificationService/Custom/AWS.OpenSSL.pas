unit AWS.OpenSSL;

interface

{$IF CompilerVersion < 34}
  {$DEFINE DUMMY_VERIFIER}
{$ENDIF}

uses
  System.SysUtils,
  IdSSLOpenSSLHeaders;

type
  TOpenSSLDigestType = (MD5, MDC2, RIPEMD160, SHA1, SHA224, SHA256, SHA384, SHA512);

  EOpenSSLException = class(Exception)
  end;

  EOpenSSLLibException = class(EOpenSSLException)
  private
    FErrorCode: Integer;
  public
    constructor Create(Code: Integer; const Msg: string);
    property ErrorCode: Integer read FErrorCode;
  end;

  TOpenSSLObject = class
  public
    constructor Create;
    class procedure CheckOpenSSLLibrary; static;
  end;

  TOpenSSLDigestVerifier = class(TOpenSSLObject)
  private
    class function GetDigestMD(DigestType: TOpenSSLDigestType): PEVP_MD; static;
  strict private
{$IFNDEF DUMMY_VERIFIER}
    FContext: PEVP_MD_CTX;
{$ENDIF}
  public
    constructor Create(APKey: PEVP_PKEY; ADigest: PEVP_MD);
    destructor Destroy; override;
    procedure Update(const Bytes: TArray<Byte>);
    function Verify(const Signature: TArray<Byte>): Boolean;
  end;

  TOpenSSLPKey = class(TOpenSSLObject)
  strict private
    FPKey: PEVP_PKEY;
  public
    constructor Create(APKey: PEVP_PKEY);
    destructor Destroy; override;
    function InitDigestVerifier(DigestType: TOpenSSLDigestType): TOpenSSLDigestVerifier;
  end;

  TOpenSSLX509 = class(TOpenSSLObject)
  strict private
    FX509: PX509;
    FPublicKey: TOpenSSLPKey;
  public
    constructor Create(AX509: PX509);
    destructor Destroy; override;
    function PublicKey: TOpenSSLPKey;
    class function LoadFromBytes(const ABytes: TArray<Byte>): TOpenSSLX509; static;
  end;

procedure RaiseOpenSSLError(const AMessage :string = '');

implementation

procedure RaiseOpenSSLError(const AMessage :string = '');
var
  ErrCode: Integer;
  ErrMsg, FullMsg: string;
begin
  ErrCode := ERR_get_error;
  ErrMsg := string(AnsiString(ERR_error_string(ErrCode, nil)));
  if AMessage = '' then
    FullMsg := ErrMsg
  else
    FullMsg := AMessage + ': ' + ErrMsg;
  raise EOpenSSLLibException.Create(ErrCode, FullMsg);
end;

{ EOpenSSLException }

constructor EOpenSSLLibException.Create(Code: Integer; const Msg: string);
begin
  FErrorCode := Code;
  inherited Create(Msg);
end;

{ TOpenSSLObject }

class procedure TOpenSSLObject.CheckOpenSSLLibrary;
const
  cCannotLoadOpenSSL = 'Cannot load OpenSSL library';
begin
  if not IdSSLOpenSSLHeaders.Load then
    raise EOpenSSLException.Create(cCannotLoadOpenSSL);
end;

constructor TOpenSSLObject.Create;
begin
  inherited;
  CheckOpenSSLLibrary;
end;

{ TOpenSSLX509 }

constructor TOpenSSLX509.Create(AX509: PX509);
begin
  inherited Create;
  FX509 := AX509;
end;

destructor TOpenSSLX509.Destroy;
begin
  X509_free(FX509);
  FPublicKey.Free;
  inherited;
end;

class function TOpenSSLX509.LoadFromBytes(const ABytes: TArray<Byte>): TOpenSSLX509;
var
  BIO: PBIO;
  X509: PX509;
begin
  CheckOpenSSLLibrary;
  BIO := BIO_new_mem_buf(@ABytes[0], Length(ABytes));
  try
    if BIO = nil then
      RaiseOpenSSLError;
    X509 := PEM_read_bio_X509(BIO, nil, nil, nil);
    if X509 = nil then
      RaiseOpenSSLError;
    Result := TOpenSSLX509.Create(X509);
  finally
    BIO_free(BIO);
  end;
end;

function TOpenSSLX509.PublicKey: TOpenSSLPKey;
var
  PKey: PEVP_PKEY;
begin
  if FPublicKey = nil then
  begin
    PKey := X509_PUBKEY_get(FX509.cert_info.key);
    if PKey = nil then
      RaiseOpenSSLError;
    FPublicKey := TOpenSSLPKey.Create(PKey);
  end;
  Result := FPublicKey;
end;

{ TOpenSSLPKey }

constructor TOpenSSLPKey.Create(APKey: PEVP_PKEY);
begin
  inherited Create;
  FPKey := APKey;
end;

destructor TOpenSSLPKey.Destroy;
begin
  EVP_PKEY_free(FPKey);
  inherited;
end;

function TOpenSSLPKey.InitDigestVerifier(DigestType: TOpenSSLDigestType): TOpenSSLDigestVerifier;
begin
  Result := TOpenSSLDigestVerifier.Create(FPKey, TOpenSSLDigestVerifier.GetDigestMD(DigestType));
end;

{ TOpenSSLDigestVerify }

constructor TOpenSSLDigestVerifier.Create(APKey: PEVP_PKEY; ADigest: PEVP_MD);
begin
  inherited Create;
{$IFNDEF DUMMY_VERIFIER}
  FContext := EVP_MD_CTX_create;
  if EVP_DigestVerifyInit(FContext, nil, ADigest, nil, APKey) <> 1 then
    RaiseOpenSSLError;
{$ENDIF}
end;

destructor TOpenSSLDigestVerifier.Destroy;
begin
{$IFNDEF DUMMY_VERIFIER}
  EVP_MD_CTX_destroy(FContext);
{$ENDIF}
  inherited;
end;

class function TOpenSSLDigestVerifier.GetDigestMD(DigestType: TOpenSSLDigestType): PEVP_MD;
const
  cUnsupportedDigestType = 'Unsupported digest type';
begin
  case DigestType of
    TOpenSSLDigestType.MD5:
      Result := EVP_md5;
    TOpenSSLDigestType.RIPEMD160:
      Result := EVP_ripemd160;
    TOpenSSLDigestType.SHA1:
      Result := EVP_sha1;
    TOpenSSLDigestType.SHA256:
      Result := EVP_sha256;
    TOpenSSLDigestType.SHA384:
      Result := EVP_sha384;
    TOpenSSLDigestType.SHA512:
      Result := EVP_sha512;
  else
    raise EOpenSSLException.Create(cUnsupportedDigestType);
  end;
end;

procedure TOpenSSLDigestVerifier.Update(const Bytes: TArray<Byte>);
begin
{$IFNDEF DUMMY_VERIFIER}
  if EVP_DigestUpdate(FContext, @Bytes[0], Length(Bytes)) <> 1 then
    RaiseOpenSSLError;
{$ENDIF}
end;

function TOpenSSLDigestVerifier.Verify(const Signature: TArray<Byte>): Boolean;
{$IFNDEF DUMMY_VERIFIER}
var
  Code: Integer;
begin
  Code := EVP_DigestVerifyFinal(FContext, @Signature[0], Length(Signature));
  Result := Code = 1;
  if Code > 1 then
    RaiseOpenSSLError;
end;
{$ELSE}
begin
  Result := True;
end;
{$ENDIF}

initialization
finalization
  IdSSLOpenSSLHeaders.Unload;
end.
