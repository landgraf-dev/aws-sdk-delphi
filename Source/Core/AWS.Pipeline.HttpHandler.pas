unit AWS.Pipeline.HttpHandler;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.Classes,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Request,
  AWS.Internal.Util.ChunkedUploadWrapperStream,
  AWS.Runtime.Contexts,
  AWS.Runtime.IHttpRequestFactory,
  AWS.Runtime.Client;

type
  THttpHandler = class(TPipelineHandler)
  strict private
    FRequestFactory: IHttpRequestFactory;
    FCallbackSender: TObject;
    procedure WriteContentToRequestBody(AHttpRequest: IWebHttpRequest; ARequestContext: TRequestContext);
    class function GetInputStream(RequestContext: TRequestContext; OriginalStream: TStream; WrappedRequest: IRequest): TStream; static;
  strict protected
    function CreateWebRequest(ARequestContext: TRequestContext): IWebHttpRequest; virtual;
  public
    constructor Create(ARequestFactory: IHttpRequestFactory; ACallbackSender: TObject); reintroduce;
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

uses
  AWS.SDKUtils;

{ THttpHandler }

constructor THttpHandler.Create(ARequestFactory: IHttpRequestFactory; ACallbackSender: TObject);
begin
  inherited Create;
  FRequestFactory := ARequestFactory;
  FCallbackSender := ACallbackSender;
end;

function THttpHandler.CreateWebRequest(ARequestContext: TRequestContext): IWebHttpRequest;
var
  Request: IRequest;
  HttpRequest: IWebHttpRequest;
  Url: string;
  Content: TArray<Byte>;
begin
  Request := ARequestContext.Request;
  Url := TAmazonServiceClient.ComposeUrl(Request);
  HttpRequest := FRequestFactory.CreateHttpRequest(Url);
  HttpRequest.ConfigureRequest(ARequestContext);
  HttpRequest.Method := Request.HttpMethod;
  if Request.MayContainRequestBody then
  begin
    var ContentIsSet := Request.IsSetContent;
    Content := Request.Content;
    if Request.SetContentFromParameters or (not ContentIsSet and (Request.ContentStream = nil)) then
    begin
      if not Request.UseQueryString then
      begin
        Content := TEncoding.UTF8.GetBytes(TAWSSDKUtils.GetParametersAsString(Request.ParameterCollection));
        Request.Content := Content;
        ContentIsSet := True;
        Request.SetContentFromParameters := True;
      end
      else
      begin
        Request.Content := nil;
      end;
    end;

    if ContentIsSet then
      Request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, IntToStr(Length(Content)))
    else
    if (Request.ContentStream <> nil) and not Request.Headers.ContainsKey(THeaderKeys.ContentLengthHeader) then
      Request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, IntToStr(Request.ContentStream.Size));
  end;
  Result := HttpRequest;
end;

class function THttpHandler.GetInputStream(RequestContext: TRequestContext; OriginalStream: TStream;
  WrappedRequest: IRequest): TStream;
begin
  var requestHasConfigForChunkStream := WrappedRequest.UseChunkEncoding and (WrappedRequest.AWS4SignerResult <> nil);
  var hasTransferEncodingHeader := WrappedRequest.Headers.ContainsKey(THeaderKeys.TransferEncodingHeader);
  var isTransferEncodingHeaderChunked := hasTransferEncodingHeader and (WrappedRequest.Headers[THeaderKeys.TransferEncodingHeader] = 'chunked');
  if requestHasConfigForChunkStream or isTransferEncodingHeaderChunked then
    Result := TChunkedUploadWrapperStream.Create(OriginalStream,
      RequestContext.ClientConfig.BufferSize, WrappedRequest.AWS4SignerResult, False)
  else
    Result := OriginalStream;
end;

procedure THttpHandler.InvokeSync(AExecutionContext: TExecutionContext);
var
  HttpRequest: IWebHttpRequest;
  WrappedRequest: IRequest;
begin
  {TODO: Missing several parts of implementation, like SetMetrics}
//  SetMetrics(AExecutionContext.RequestContext);
  WrappedRequest := AExecutionContext.RequestContext.Request;
  HttpRequest := CreateWebRequest(AExecutionContext.RequestContext);
  HttpRequest.SetRequestHeaders(WrappedRequest.Headers);

  if WrappedRequest.HasRequestBody then
    WriteContentToRequestBody(HttpRequest, AExecutionContext.RequestContext);
  AExecutionContext.ResponseContext.HttpResponse := HttpRequest.GetResponse;
end;

procedure THttpHandler.WriteContentToRequestBody(AHttpRequest: IWebHttpRequest;
  ARequestContext: TRequestContext);
var
  WrappedRequest: IRequest;
begin
  WrappedRequest := ARequestContext.Request;
  if Length(WrappedRequest.Content) > 0 then
    AHttpRequest.WriteToRequestBody(WrappedRequest.Content, ARequestContext.Request.Headers)
  else
  begin
    var originalStream: TStream := nil;
    var inputStream: TStream := nil;
    try
      if WrappedRequest.ContentStream = nil then
      begin
        originalStream := TBytesStream.Create;
  //      originalStream.Write(WrappedRequest.Content, Length(WrappedRequest.Content));
  //      originalStream.Position := 0;
      end
      else
        originalStream := WrappedRequest.ContentStream;

      {TODO: add code for progress callback}
      inputStream := GetInputStream(ARequestContext, originalStream, WrappedRequest);
      AHttpRequest.WriteToRequestBody(inputStream, ARequestContext.Request.Headers, inputStream <> WrappedRequest.ContentStream);
    finally
      if (originalStream <> WrappedRequest.ContentStream) and (originalStream <> inputStream) then
        originalStream.Free;
    end;
  end;
end;

end.
