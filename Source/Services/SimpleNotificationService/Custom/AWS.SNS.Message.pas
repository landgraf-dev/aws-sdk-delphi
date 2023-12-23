unit AWS.SNS.Message;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.StrUtils, System.Generics.Collections, System.Classes, System.Math, System.RegularExpressions,
  System.JSON,
{$IFDEF USE_SPARKLE}
  Sparkle.Http.Client,
  {$IFDEF MSWINDOWS}
  Sparkle.WinHttp.Engine,
  {$ENDIF}
{$ELSE}
  System.Net.HttpClient,
{$ENDIF}
  AWS.Lib.Uri,
  AWS.Lib.Utils,
  AWS.Nullable,
  AWS.OpenSSL,
  AWS.Runtime.Exceptions;

type
  TMessage = class
  strict private const
    MAX_RETRIES = 3;
  public const
    /// <summary>
    /// The value of the Type property for a subscription confirmation message
    /// </summary>
    MESSAGE_TYPE_SUBSCRIPTION_CONFIRMATION = 'SubscriptionConfirmation';

    /// <summary>
    /// The value of the Type property for a unsubscribe confirmation message
    /// </summary>
    MESSAGE_TYPE_UNSUBSCRIPTION_CONFIRMATION = 'UnsubscribeConfirmation';

    /// <summary>
    /// The value of the Type property for a notification message
    /// </summary>
    MESSAGE_TYPE_NOTIFICATION = 'Notification';
  strict private
    FMessageId: string;
    FMessageText: string;
    FSignature: string;
    FSignatureVersion: string;
    FSigningCertURL: string;
    FSubject: Nullable<string>;
    FSubscribeURL: string;
    FTimestampString: string;
    FToken: string;
    FTopicArn: string;
    FType: string;
    FUnsubscribeURL: string;
    function GetTimestamp: TDateTime;
    function GetMessageBytesToSign: TArray<Byte>;
    function BuildNotificationStringToSign: string;
    function BuildSubscriptionStringToSign: string;
    function GetX509Certificate: TOpenSSLX509;
  private
    class var
      FCertificateCache: TObjectDictionary<string, TOpenSSLX509>;
    class function ValidateCertUrl(const ACertUrl: string): string; static;
    class constructor Create;
    class destructor Destroy;
  public
    class procedure ClearCertificateCache;
    class function ParseMessage(const AMessageText: string): TMessage; static;
  public
    function IsMessageSignatureValid: Boolean;
    function IsSubscriptionType: Boolean;
    function IsUnsubscriptionType: Boolean;
    function IsNotificationType: Boolean;
    property MessageId: string read FMessageId;
    property MessageText: string read FMessageText;
    property Signature: string read FSignature;
    property SignatureVersion: string read FSignatureVersion;
    property SigningCertURL: string read FSigningCertURL;
    property Subject: Nullable<string> read FSubject;
    property SubscribeURL: string read FSubscribeURL;
    property Timestamp: TDateTime read GetTimestamp;
    property Token: string read FToken write FToken;
    property TopicArn: string read FTopicArn write FTopicArn;
    property MessageType: string read FType write FType;
    property UnsubscribeUrl: string read FUnsubscribeURL write FUnsubscribeURL;
  end;

implementation

{ TMessage }

function TMessage.BuildNotificationStringToSign: string;
begin
  Result := '';

  Result := Result + 'Message'#10;
  Result := Result + MessageText;
  Result := Result + #10;

  Result := Result + 'MessageId'#10;
  Result := Result + MessageId;
  Result := Result + #10;

  if Subject.HasValue then
  begin
    Result := Result + 'Subject'#10;
    Result := Result + Subject;
    Result := Result + #10;
  end;

  Result := Result + 'Timestamp'#10;
  Result := Result + FTimestampString;
  Result := Result + #10;

  Result := Result + 'TopicArn'#10;
  Result := Result + TopicArn;
  Result := Result + #10;

  Result := Result + 'Type'#10;
  Result := Result + FType;
  Result := Result + #10;
end;

function TMessage.BuildSubscriptionStringToSign: string;
begin
  Result := Result + 'Message'#10;
  Result := Result + MessageText;
  Result := Result + #10;

  Result := Result + 'MessageId'#10;
  Result := Result + MessageId;
  Result := Result + #10;

  Result := Result + 'SubscribeURL'#10;
  Result := Result + SubscribeURL;
  Result := Result + #10;

  Result := Result + 'Timestamp'#10;
  Result := Result + FTimestampString;
  Result := Result + #10;

  Result := Result + 'Token'#10;
  Result := Result + Token;
  Result := Result + #10;

  Result := Result + 'TopicArn'#10;
  Result := Result + TopicArn;
  Result := Result + #10;

  Result := Result + 'Type'#10;
  Result := Result + FType;
  Result := Result + #10;
end;

class procedure TMessage.ClearCertificateCache;
begin
  FCertificateCache.Clear;
end;

class constructor TMessage.Create;
begin
  FCertificateCache := TObjectDictionary<string, TOpenSSLX509>.Create([doOwnsValues]);
end;

class destructor TMessage.Destroy;
begin
  FCertificateCache.Free;
end;

function TMessage.GetMessageBytesToSign: TArray<Byte>;
var
  StringToSign: string;
begin
  if IsNotificationType then
    StringToSign := BuildNotificationStringToSign
  else
  if IsSubscriptionType or IsUnsubscriptionType then
    StringToSign := BuildSubscriptionStringToSign
  else
    raise EAmazonClientException.Create('Unknown message type: ' + FType);
  Result := TEncoding.UTF8.GetBytes(StringToSign);
end;

function TMessage.GetTimestamp: TDateTime;
begin
  if FTimestampString = '' then
    Result := Default(TDateTime)
  else
    Result := AWS.Lib.Utils.ISOToDateTime(FTimestampString);
end;

function TMessage.GetX509Certificate: TOpenSSLX509;
var
  Retries: Integer;
  Client: THttpClient;
  Response: THttpResponse;
begin
  TMonitor.Enter(FCertificateCache);
  try
    if FCertificateCache.TryGetValue(SigningCertURL, Result) then
      Exit
    else
    begin
      for Retries := 1 to MAX_RETRIES do
        try
          Client := THttpClient.Create;
          try
{$IFDEF MSWINDOWS}
            TWinHttpEngine(Client.Engine).ProxyMode := THttpProxyMode.Auto;
{$ENDIF}
            Response := Client.Get(SigningCertURL);
            try
              Result := TOpenSSLX509.LoadFromBytes(Response.ContentAsBytes);
              FCertificateCache.Add(SigningCertURL, Result);
              Exit;
            finally
              Response.Free;
            end;
          finally
            Client.Free;
          end;
        except
          on E: Exception do
          begin
            if Retries = MAX_RETRIES then
              raise EAmazonClientException.CreateFmt(
                'Unable to download signing cert after %d retries: %s', [MAX_RETRIES, E.Message])
            else
              Sleep(Trunc(Power(4, Retries) * 100));
          end;
        end;
    end;

    raise EAmazonClientException.CreateFmt('Unable to download signing cert after %d retries', [MAX_RETRIES]);
  finally
    TMonitor.Exit(FCertificateCache);
  end;
end;

function TMessage.IsMessageSignatureValid: Boolean;
var
  BytesToSign: TArray<Byte>;
  Certificate: TOpenSSLX509;
  Verifier: TOpenSSLDigestVerifier;
begin
  BytesToSign := GetMessageBytesToSign;
  Certificate := GetX509Certificate;
  Verifier := Certificate.PublicKey.InitDigestVerifier(TOpenSSLDigestType.SHA1);
  try
    Verifier.Update(BytesToSign);
    Result := Verifier.Verify(AWS.Lib.Utils.DecodeBase64(Signature));
  finally
    Verifier.Free;
  end;
end;

function TMessage.IsNotificationType: Boolean;
begin
  Result := FType = MESSAGE_TYPE_NOTIFICATION;
end;

function TMessage.IsSubscriptionType: Boolean;
begin
  Result := FType = MESSAGE_TYPE_SUBSCRIPTION_CONFIRMATION;
end;

function TMessage.IsUnsubscriptionType: Boolean;
begin
  Result := FType = MESSAGE_TYPE_UNSUBSCRIPTION_CONFIRMATION;
end;

class function TMessage.ParseMessage(const AMessageText: string): TMessage;
var
  Msg: TMessage;
  JsonData: TJSONObject;

  function ExtractField(const FieldName: string): Nullable<string>;
  var
    Member: TJSONPair;
  begin
    for Member in JsonData do
      if SameText(Member.JsonString.Value, FieldName) and (Member.JsonValue is TJSONString) then
        Exit(TJSONString(Member.JsonValue).Value);
    Result := SNull;
  end;

begin
  Msg := TMessage.Create;
  try
    JsonData := TJSONObject.ParseJSONValue(AMessageText) as TJSONObject;
    try
      Msg.FMessageId := ExtractField('MessageId').ValueOrDefault;
      Msg.FMessageText := ExtractField('Message').ValueOrDefault;
      Msg.FSignature := ExtractField('Signature').ValueOrDefault;
      Msg.FSignatureVersion := ExtractField('SignatureVersion').ValueOrDefault;
      Msg.FSigningCertURL := ValidateCertUrl(ExtractField('SigningCertURL').ValueOrDefault);
      Msg.FSubscribeURL := ExtractField('SubscribeURL').ValueOrDefault;
      Msg.FSubject := ExtractField('Subject');
      Msg.FTimestampString := ExtractField('Timestamp').ValueOrDefault;
      Msg.FToken := ExtractField('Token').ValueOrDefault;
      Msg.FTopicArn := ExtractField('TopicArn').ValueOrDefault;
      Msg.FType := ExtractField('Type').ValueOrDefault;
      Msg.FUnsubscribeURL := ExtractField('UnsubscribeURL').ValueOrDefault;
    finally
      JsonData.Free;
    end;

    Result := Msg;
    Msg := nil;
  finally
    Msg.Free;
  end;
end;

class function TMessage.ValidateCertUrl(const ACertUrl: string): string;
const
  Pattern = '^sns\.[a-zA-Z0-9\-]{3,}\.amazonaws\.com(\.cn)?$';
var
  Uri: IUri;
  RegEx: TRegEx;
begin
  Uri := TUri.Create(ACertUrl);
  if (Uri.Scheme = 'https') and EndsStr('.pem', ACertUrl) then
  begin
    RegEx := TRegEx.Create(Pattern);
    if RegEx.IsMatch(Uri.Host) then
      Exit(ACertUrl);
  end;

  raise EAmazonClientException.CreateFmt('Signing certificate url is not from a recognised source: %s.', [ACertUrl]);
end;

end.
