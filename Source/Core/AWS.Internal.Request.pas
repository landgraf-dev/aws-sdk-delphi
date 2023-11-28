unit AWS.Internal.Request;

interface

uses
  System.Generics.Collections, System.Classes,
  AWS.Internal.Auth.AWS4SigningResult,
  AWS.Internal.ParameterCollection,
  AWS.Internal.ParameterDictionary,
  AWS.SDKUtils,
  AWS.RegionEndpoint;

type
  IRequest = interface
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
    function GetSuppress404Exceptions: Boolean;
    procedure SetSuppress404Exceptions(const Value: Boolean);
    function GetAWS4SignerResult: TAWS4SigningResult;
    procedure SetAWS4SignerResult(const Value: TAWS4SigningResult);
    function GetOriginalStreamPosition: Int64;
    procedure SetOriginalStreamPosition(const Value: Int64);
    function GetCanonicalResourcePrefix: string;
    procedure SetCanonicalResourcePrefix(const Value: string);
    function GetHostPrefix: string;
    procedure SetHostPrefix(const Value: string);

    function MayContainRequestBody: Boolean;
    function HasRequestBody: Boolean;
    function HasRequestData: Boolean;
    procedure AddSubResource(const ASubResource: string; const AValue: string = '');
    procedure AddPathResource(const AKey, AValue: string);
    function GetHeaderValue(const AHeaderName: string): string;
    function ComputeContentStreamHash: string;

    /// <summary>
    /// Checks if the request stream can be rewinded.
    /// </summary>
    /// <returns>Returns true if the request stream can be rewinded ,
    /// else false.</returns>
    function IsRequestStreamRewindable: Boolean;

    property RequestName: string read GetRequestName;
    property ServiceName: string read GetServiceName;
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

    /// <summary>
    /// Used for Amazon S3 requests where the bucket name is removed from
    /// the marshalled resource path into the host header. To comply with
    /// AWS2 signature calculation, we need to recover the bucket name
    /// and include it in the resource canonicalization, which we do using
    /// this field.
    /// </summary>
    property CanonicalResourcePrefix: string read GetCanonicalResourcePrefix write SetCanonicalResourcePrefix;

    /// <summary>
    /// Host prefix value to prepend to the endpoint for this request, if any.
    /// </summary>
    property HostPrefix: string read GetHostPrefix write SetHostPrefix;
  end;

implementation

end.
