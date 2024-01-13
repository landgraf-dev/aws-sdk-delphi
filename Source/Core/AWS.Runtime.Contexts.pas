unit AWS.Runtime.Contexts;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Runtime.Model,
  AWS.Runtime.Credentials,
  AWS.Internal.CapacityManager,
  AWS.Internal.ServiceMetadata,
  AWS.Runtime.ClientConfig,
  AWS.Internal.WebResponseData,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Transform.RequestMarshaller,
  AWS.Auth.Signer,
  AWS.Internal.InvokeOptions;

type
  TRequestContext = class
  private
    FClientSigner: TAbstractAWSSigner;
    FServiceMetadata: IServiceMetadata;
    FRequest: IRequest;
    FRetries: Integer;
    FClientConfig: IClientConfig;
    FMarshaller: IMarshaller<IRequest, TAmazonWebServiceRequest>;
    FUnmarshaller: IResponseUnmarshaller;
    FOptions: TInvokeOptionsBase;
    FOriginalRequest: TAmazonWebServiceRequest;
    FImmutableCredentials: IImmutableCredentials;
    FIsSigned: Boolean;
    FInvocationId: TGuid;
    FIsLastExceptionRetryable: Boolean;
    FCSMEnabled: Boolean;
    FLastCapacityType: TCapacityType;
    function GetSigner: TAbstractAWSSigner;
    procedure SetServiceMetadata(const Value: IServiceMetadata);
  public
    constructor Create(AEnableMetrics: Boolean; AClientSigner: TAbstractAWSSigner);
    function RequestName: string;
    property Request: IRequest read FRequest write FRequest;
    property ClientConfig: IClientConfig read FClientConfig write FClientConfig;
    property ServiceMetadata: IServiceMetadata read FServiceMetadata write SetServiceMetadata;
    property Retries: Integer read FRetries write FRetries;
    property IsSigned: Boolean read FIsSigned write FIsSigned;
    property OriginalRequest: TAmazonWebServiceRequest read FOriginalRequest write FOriginalRequest;
    property Marshaller: IMarshaller<IRequest, TAmazonWebServiceRequest> read FMarshaller write FMarshaller;
    property Unmarshaller: IResponseUnmarshaller read FUnmarshaller write FUnmarshaller;
    property Options: TInvokeOptionsBase read FOptions write FOptions;
    property ImmutableCredentials: IImmutableCredentials read FImmutableCredentials write FImmutableCredentials;
    property Signer: TAbstractAWSSigner read GetSigner;
    property InvocationId: TGuid read FInvocationId;
    property IsLastExceptionRetryable: Boolean read FIsLastExceptionRetryable write FIsLastExceptionRetryable;
    property CSMEnabled: Boolean read FCSMEnabled;
    property LastCapacityType: TCapacityType read FLastCapacityType write FLastCapacityType;
  end;

  TResponseContext = class
  strict private
    FResponse: TAmazonWebServiceResponse;
    FHttpResponse: IWebResponseData;
  private
    procedure SetResponse(const Value: TAmazonWebServiceResponse);
  public
    destructor Destroy; override;
    function ExtractResponse: TAmazonWebServiceResponse;
    property Response: TAmazonWebServiceResponse read FResponse write SetResponse;
    property HttpResponse: IWebResponseData read FHttpResponse write FHttpResponse;
  end;

  TExecutionContext = class
  strict private
    FRequestContext: TRequestContext;
    FResponseContext: TResponseContext;
  public
    constructor Create(ARequestContext: TRequestContext; AResponseContext: TResponseContext);
    property RequestContext: TRequestContext read FRequestContext;
    property ResponseContext: TResponseContext read FResponseContext;
  end;

implementation

{ TExecutionContext }

constructor TExecutionContext.Create(ARequestContext: TRequestContext; AResponseContext: TResponseContext);
begin
  inherited Create;
  FRequestContext := ARequestContext;
  FResponseContext := AResponseContext;
end;

{ TRequestContext }

constructor TRequestContext.Create(AEnableMetrics: Boolean; AClientSigner: TAbstractAWSSigner);
begin
  inherited Create;
  if AClientSigner = nil then
    raise EArgumentNilException.Create('AClientSigner');

  FClientSigner := AClientSigner;
  {TODO: Enable metrics}
  FInvocationId := TGuid.NewGuid;
end;

function TRequestContext.GetSigner: TAbstractAWSSigner;
var
  RequestSigner: TAbstractAWSSigner;
begin
  if OriginalRequest = nil then
    RequestSigner := nil
  else
    RequestSigner := OriginalRequest.GetSigner;
  if RequestSigner = nil then
    Result := FClientSigner
  else
    Result := RequestSigner;
end;

function TRequestContext.RequestName: string;
begin
  if OriginalRequest <> nil then
    Result := Copy(OriginalRequest.ClassName, 2)
  else
    Result := 'Unknown';
end;

procedure TRequestContext.SetServiceMetadata(const Value: IServiceMetadata);
begin
  FServiceMetadata := Value;

  {TODO: Uncomment when CSM is implemented}
  // The CSMEnabled flag is referred in the runtime pipeline before capturing any CSM data.
  // Along with the customer set CSMEnabled flag, the ServiceMetadata.ServiceId needs to be set
  // to capture client side metrics. Older service nuget packages might not have a ServiceMetadata
  // implementation and in such cases client side metrics will not be captured.
//  CSMEnabled = TDeterminedCSMConfiguration.Instance.CSMConfiguration.Enabled and not string.IsNullOrEmpty(FServiceMetadata.ServiceId);
end;

{ TResponseContext }

destructor TResponseContext.Destroy;
begin
  FResponse.Free;
  inherited;
end;

type
  TInternalAWSResponse = class(TAmazonWebServiceResponse)
  end;

function TResponseContext.ExtractResponse: TAmazonWebServiceResponse;
begin
  Result := FResponse;
  FResponse := nil;
  TInternalAWSResponse(Result).SetWebResponse(FHttpResponse);
end;

procedure TResponseContext.SetResponse(const Value: TAmazonWebServiceResponse);
begin
  if FResponse <> Value then
  begin
    FResponse.Free;
    FResponse := Value;
  end;
end;

end.
