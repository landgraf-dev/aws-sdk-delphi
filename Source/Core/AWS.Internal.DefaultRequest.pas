unit AWS.Internal.DefaultRequest;

interface

uses
  System.Generics.Collections, System.Generics.Defaults, System.Classes, System.SysUtils,
  AWS.Internal.Auth.AWS4SigningResult,
  AWS.Internal.Request,
  AWS.Internal.ParameterCollection,
  AWS.Internal.ParameterDictionary,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.RegionEndpoint;

type
  TDefaultRequest = class(TInterfacedObject, IRequest)
  strict private
    FParametersCollection: TParameterCollection;
    FParametersFacade: IParameterDictionary;
    FHeaders: TDictionary<string, string>;
    FSubResources: TDictionary<string, string>;
    FPathResources: TDictionary<string, string>;
    FEndpoint: IUri;
    FResourcePath: string;
    FServiceName: string;
    FOriginalRequest: TAmazonWebServiceRequest;
    FContent: TArray<Byte>;
    FContentStream: TStream;
    FOwnsContentStream: Boolean;
    FHttpMethod: string;
    FUseQueryString: Boolean;
    FRequestName: string;
    FCanonicalResource: string;
//    FAlternateRegion: IRegionEndpoint;
//    FOriginalStreamLength: Integer;
    FMarshallerVersion: Integer;
    FSetContentFromParameters: Boolean;
    FUseSigV4: Boolean;
    FAlternateEndpoint: IRegionEndpointEx;
    FDisablePayloadSigning: Boolean;
    FOverrideSigningServiceName: string;
    FDeterminedSigningRegion: string;
    FAuthenticationRegion: string;
    FUseChunkEncoding: Boolean;
    FContentStreamHash: string;
    FSuppress404Exceptions: Boolean;
    FAWS4SignerResult: TAWS4SigningResult;
    FOriginalStreamPosition: Int64;
    FCanonicalResourcePrefix: string;
    FHostPrefix: string;
  strict private
    function GetRequestName: string;
    function GetServiceName: string;
    function GetEndpoint: IUri;
    procedure SetEndpoint(const Value: IUri);
    function GetHttpMethod: string;
    procedure SetHttpMethod(const Value: string);
    function GetHeaders: TDictionary<string, string>;
    function GetContent: TArray<Byte>;
    procedure SetContent(const Value: TArray<Byte>);
    function GetContentStream: TStream;
    procedure SetContentStream(const Value: TStream);
    function GetOwnsContentStream: Boolean;
    procedure SetOwnsContentStream(const Value: Boolean);
    function GetResourcePath: string;
    procedure SetResourcePath(const Value: string);
    function GetPathResources: TDictionary<string, string>;
    function GetSubResources: TDictionary<string, string>;
    function GetUseQueryString: Boolean;
    procedure SetUseQueryString(const Value: Boolean);
    function GetSetContentFromParameters: Boolean;
    procedure SetSetContentFromParameters(const Value: Boolean);
    function GetParameters: IParameterDictionary;
    function GetParameterCollection: TParameterCollection;
    function GetOriginalRequest: TObject;
    function GetMarshallerVersion: Integer;
    procedure SetMarshallerVersion(const Value: Integer);
    function GetCanonicalResource: string;
    procedure SetCanonicalResource(const Value: string);
    function GetUseSigV4: Boolean;
    procedure SetUseSigV4(const Value: Boolean);
    function GetAlternateEndpoint: IRegionEndpointEx;
    procedure SetAlternateEndpoint(const Value: IRegionEndpointEx);
    function GetDisablePayloadSigning: Boolean;
    procedure SetDisablePayloadSigning(const Value: Boolean);
    function GetOverrideSigningServiceName: string;
    procedure SetOverrideSigningServiceName(const Value: string);
    function GetDeterminedSigningRegion: string;
    procedure SetDeterminedSigningRegion(const Value: string);
    function GetAuthenticationRegion: string;
    procedure SetAuthenticationRegion(const Value: string);
    function GetUseChunkEncoding: Boolean;
    procedure SetUseChunkEncoding(const Value: Boolean);
    function GetOriginalStreamPosition: Int64;
    procedure SetOriginalStreamPosition(const Value: Int64);
    function GetSuppress404Exceptions: Boolean;
    procedure SetSuppress404Exceptions(const Value: Boolean);
    function GetAWS4SignerResult: TAWS4SigningResult;
    procedure SetAWS4SignerResult(const Value: TAWS4SigningResult);
    function GetCanonicalResourcePrefix: string;
    procedure SetCanonicalResourcePrefix(const Value: string);
    function GetHostPrefix: string;
    procedure SetHostPrefix(const Value: string);
  public
    constructor Create(ARequest: TAmazonWebServiceRequest; AServiceName: string); reintroduce;
    destructor Destroy; override;
    function MayContainRequestBody: Boolean;
    function HasRequestBody: Boolean;
    function HasRequestData: Boolean;
    function ComputeContentStreamHash: string;
    function IsRequestStreamRewindable: Boolean;

    procedure AddSubResource(const ASubResource: string; const AValue: string = '');
    procedure AddPathResource(const AKey, AValue: string);
    function GetHeaderValue(const AHeaderName: string): string;
    property Endpoint: IUri read GetEndpoint write SetEndpoint;
    property HttpMethod: string read GetHttpMethod write SetHttpMethod;
    property Headers: TDictionary<string, string> read GetHeaders;
    property Content: TArray<Byte> read GetContent write SetContent;
    property ContentStream: TStream read GetContentStream write SetContentStream;
    property OwnsContentStream: Boolean read GetOwnsContentStream write SetOwnsContentStream;
    property ResourcePath: string read GetResourcePath write SetResourcePath;
    property PathResources: TDictionary<string, string> read GetPathResources;
    property SubResources: TDictionary<string, string> read GetSubResources;
    property UseQueryString: Boolean read GetUseQueryString write SetUseQueryString;
    property SetContentFromParameters: Boolean read GetSetContentFromParameters write SetSetContentFromParameters;
    property Parameters: IParameterDictionary read GetParameters;
    property ParameterCollection: TParameterCollection read GetParameterCollection;
    property OriginalRequest: TObject read GetOriginalRequest;
    property MarshallerVersion: Integer read GetMarshallerVersion write SetMarshallerVersion;
    property CanonicalResource: string read GetCanonicalResource write SetCanonicalResource;
    property UseSigV4: Boolean read GetUseSigV4 write SetUseSigV4;
    property AlternateEndpoint: IRegionEndpointEx read GetAlternateEndpoint write SetAlternateEndpoint;
    property DisablePayloadSigning: Boolean read GetDisablePayloadSigning write SetDisablePayloadSigning;
    property OverrideSigningServiceName: string read GetOverrideSigningServiceName write SetOverrideSigningServiceName;
    property DeterminedSigningRegion: string read GetDeterminedSigningRegion write SetDeterminedSigningRegion;
    property AuthenticationRegion: string read GetAuthenticationRegion write SetAuthenticationRegion;
    property UseChunkEncoding: Boolean read GetUseChunkEncoding write SetUseChunkEncoding;
    property Suppress404Exceptions: Boolean read GetSuppress404Exceptions write SetSuppress404Exceptions;
    property AWS4SignerResult: TAWS4SigningResult read GetAWS4SignerResult write SetAWS4SignerResult;
    property OriginalStreamPosition: Int64 read GetOriginalStreamPosition write SetOriginalStreamPosition;
    property CanonicalResourcePrefix: string read GetCanonicalResourcePrefix write SetCanonicalResourcePrefix;
    property HostPrefix: string read GetHostPrefix write SetHostPrefix;
  end;

implementation

uses
  AWS.Util.Crypto,
  AWS.Util.Streams;

{ TDefaultRequest }

procedure TDefaultRequest.AddPathResource(const AKey, AValue: string);
begin
  PathResources.Add(AKey, AValue);
end;

procedure TDefaultRequest.AddSubResource(const ASubResource, AValue: string);
begin
  SubResources.Add(ASubResource, AValue);
end;

function TDefaultRequest.ComputeContentStreamHash: string;
var
  SeekableStream: TStream;
  Position: Int64;
  PayloadHashBytes: TArray<Byte>;
begin
  if FContentStream = nil then
    Exit('');

  if FContentStreamHash = '' then
  begin
    SeekableStream := TWrapperStream.SearchWrappedStream(FContentStream,
      function(S: TStream): Boolean
      begin
        Result := CanSeek(S);
      end);
    if SeekableStream <> nil then
    begin
      Position := SeekableStream.Position;
      PayloadHashBytes := TCryptoUtilFactory.CryptoInstance.ComputeSHA256Hash(SeekableStream);
      FContentStreamHash := TAWSSDKUtils.ToHex(PayloadHashBytes, True);
      SeekableStream.Seek(Position, TSeekOrigin.soBeginning);
    end;
  end;
  Result := FContentStreamHash;
end;

constructor TDefaultRequest.Create(ARequest: TAmazonWebServiceRequest; AServiceName: string);
begin
  inherited Create;
  FHeaders := TDictionary<string, string>.Create(TIStringComparer.Ordinal);
  FSubResources := TDictionary<string, string>.Create(TIStringComparer.Ordinal);
  FPathResources := TDictionary<string, string>.Create;
  FHttpMethod := 'POST';
  FMarshallerVersion := 2;

  if ARequest = nil then
    raise EArgumentNilException.Create('ARequest');
  if AServiceName = '' then
    raise EArgumentNilException.Create('AServiceName');

  FServiceName := AServiceName;
  FOriginalRequest := ARequest;
  FRequestName := Copy(FOriginalRequest.ClassName, 2);
//  FOwnsContentStream := True;
  UseSigV4 := ARequest.UseSigV4;

  FParametersCollection := TParameterCollection.Create;
  FParametersFacade := TParameterDictionaryFacade.Create(FParametersCollection);
end;

destructor TDefaultRequest.Destroy;
begin
  FHeaders.Free;
  FSubResources.Free;
  FPathResources.Free;
  FParametersCollection.Free;
  ContentStream := nil;
  inherited;
end;

function TDefaultRequest.GetAlternateEndpoint: IRegionEndpointEx;
begin
  Result := FAlternateEndpoint;
end;

function TDefaultRequest.GetAuthenticationRegion: string;
begin
  Result := FAuthenticationRegion;
end;

function TDefaultRequest.GetAWS4SignerResult: TAWS4SigningResult;
begin
  Result := FAWS4SignerResult;
end;

function TDefaultRequest.GetCanonicalResource: string;
begin
  Result := FCanonicalResource;
end;

function TDefaultRequest.GetCanonicalResourcePrefix: string;
begin
  Result := FCanonicalResourcePrefix;
end;

function TDefaultRequest.GetContent: TArray<Byte>;
begin
  Result := FContent;
end;

function TDefaultRequest.GetContentStream: TStream;
begin
  Result := FContentStream;
end;

function TDefaultRequest.GetDeterminedSigningRegion: string;
begin
  Result := FDeterminedSigningRegion;
end;

function TDefaultRequest.GetDisablePayloadSigning: Boolean;
begin
  Result := FDisablePayloadSigning;
end;

function TDefaultRequest.GetEndpoint: IUri;
begin
  Result := FEndpoint;
end;

function TDefaultRequest.GetHeaders: TDictionary<string, string>;
begin
  Result := FHeaders;
end;

function TDefaultRequest.GetHeaderValue(const AHeaderName: string): string;
begin
  if not Headers.TryGetValue(AHeaderName, Result) then
    Result := '';
end;

function TDefaultRequest.GetHostPrefix: string;
begin
  Result := FHostPrefix;
end;

function TDefaultRequest.GetHttpMethod: string;
begin
  Result := FHttpMethod;
end;

function TDefaultRequest.GetMarshallerVersion: Integer;
begin
  Result := FMarshallerVersion;
end;

function TDefaultRequest.GetOriginalRequest: TObject;
begin
  Result := FOriginalRequest;
end;

function TDefaultRequest.GetOriginalStreamPosition: Int64;
begin
  Result := FOriginalStreamPosition;
end;

function TDefaultRequest.GetOverrideSigningServiceName: string;
begin
  Result := FOverrideSigningServiceName;
end;

function TDefaultRequest.GetOwnsContentStream: Boolean;
begin
  Result := FOwnsContentStream;
end;

function TDefaultRequest.GetParameterCollection: TParameterCollection;
begin
  Result := FParametersCollection;
end;

function TDefaultRequest.GetParameters: IParameterDictionary;
begin
  Result := FParametersFacade;
end;

function TDefaultRequest.GetPathResources: TDictionary<string, string>;
begin
  Result := FPathResources;
end;

function TDefaultRequest.GetRequestName: string;
begin
  Result := FRequestName;
end;

function TDefaultRequest.GetResourcePath: string;
begin
  Result := FResourcePath;
end;

function TDefaultRequest.GetServiceName: string;
begin
  Result := FServiceName;
end;

function TDefaultRequest.GetSetContentFromParameters: Boolean;
begin
  Result := FSetContentFromParameters;
end;

function TDefaultRequest.GetSubResources: TDictionary<string, string>;
begin
  Result := FSubResources;
end;

function TDefaultRequest.GetSuppress404Exceptions: Boolean;
begin
  Result := FSuppress404Exceptions;
end;

function TDefaultRequest.GetUseChunkEncoding: Boolean;
begin
  Result := FUseChunkEncoding;
end;

function TDefaultRequest.GetUseQueryString: Boolean;
begin
  if FHttpMethod = 'GET' then
    Result := True
  else
    Result := FUseQueryString;
end;

function TDefaultRequest.GetUseSigV4: Boolean;
begin
  Result := FUseSigV4;
end;

function TDefaultRequest.HasRequestBody: Boolean;
begin
  Result := MayContainRequestBody and HasRequestData;
end;

function TDefaultRequest.HasRequestData: Boolean;
begin
  if (ContentStream <> nil) or (Length(Content) > 0) then
    Result := True
  else
    Result := Parameters.Count > 0;
end;

function TDefaultRequest.IsRequestStreamRewindable: Boolean;
begin
  var stream := ContentStream;

  // Retries may not be possible with a stream
  if stream <> nil then
  begin
    // Pull out the underlying non-wrapper stream
    stream := TWrapperStream.GetNonWrapperBaseStream(stream);

    // Retry is possible if stream is seekable
    Exit(CanSeek(stream));
  end;

  Result := True;
end;

function TDefaultRequest.MayContainRequestBody: Boolean;
begin
  Result := (HttpMethod = 'POST') or (HttpMethod = 'PUT') or (HttpMethod = 'PATCH');
end;

procedure TDefaultRequest.SetAlternateEndpoint(const Value: IRegionEndpointEx);
begin
  FAlternateEndpoint := Value;
end;

procedure TDefaultRequest.SetAuthenticationRegion(const Value: string);
begin
  FAuthenticationRegion := Value;
end;

procedure TDefaultRequest.SetAWS4SignerResult(const Value: TAWS4SigningResult);
begin
  FAWS4SignerResult := Value;
end;

procedure TDefaultRequest.SetCanonicalResource(const Value: string);
begin
  FCanonicalResource := Value;
end;

procedure TDefaultRequest.SetCanonicalResourcePrefix(const Value: string);
begin
  FCanonicalResourcePrefix := Value;
end;

procedure TDefaultRequest.SetContent(const Value: TArray<Byte>);
begin
  FContent := Value;
end;

procedure TDefaultRequest.SetContentStream(const Value: TStream);
var
  BaseStream: TStream;
begin
  if FContentStream <> Value then
  begin
    if OwnsContentStream then
      FContentStream.Free;
    FContentStream := Value;
    OriginalStreamPosition := -1;
    if FContentStream <> nil then
    begin
      BaseStream := TWrapperStream.GetNonWrapperBaseStream(FContentStream);
      if (BaseStream <> nil) and CanSeek(BaseStream) then
        OriginalStreamPosition := BaseStream.Position;
    end;
  end;
end;

procedure TDefaultRequest.SetDeterminedSigningRegion(const Value: string);
begin
  FDeterminedSigningRegion := Value;
end;

procedure TDefaultRequest.SetDisablePayloadSigning(const Value: Boolean);
begin
  FDisablePayloadSigning := Value;
end;

procedure TDefaultRequest.SetEndpoint(const Value: IUri);
begin
  FEndpoint := Value;
end;

procedure TDefaultRequest.SetHostPrefix(const Value: string);
begin
  FHostPrefix := Value;
end;

procedure TDefaultRequest.SetHttpMethod(const Value: string);
begin
  FHttpMethod := Value;
end;

procedure TDefaultRequest.SetMarshallerVersion(const Value: Integer);
begin
  FMarshallerVersion := Value;
end;

procedure TDefaultRequest.SetOriginalStreamPosition(const Value: Int64);
begin
  FOriginalStreamPosition := Value;
end;

procedure TDefaultRequest.SetOverrideSigningServiceName(const Value: string);
begin
  FOverrideSigningServiceName := Value;
end;

procedure TDefaultRequest.SetOwnsContentStream(const Value: Boolean);
begin
  FOwnsContentStream := Value;
end;

procedure TDefaultRequest.SetResourcePath(const Value: string);
begin
  FResourcePath := Value;
end;

procedure TDefaultRequest.SetSetContentFromParameters(const Value: Boolean);
begin
  FSetContentFromParameters := Value;
end;

procedure TDefaultRequest.SetSuppress404Exceptions(const Value: Boolean);
begin
  FSuppress404Exceptions := Value;
end;

procedure TDefaultRequest.SetUseChunkEncoding(const Value: Boolean);
begin
  FUseChunkEncoding := Value;
end;

procedure TDefaultRequest.SetUseQueryString(const Value: Boolean);
begin
  FUseQueryString := Value;
end;

procedure TDefaultRequest.SetUseSigV4(const Value: Boolean);
begin
  FUseSigV4 := Value;
end;

end.
