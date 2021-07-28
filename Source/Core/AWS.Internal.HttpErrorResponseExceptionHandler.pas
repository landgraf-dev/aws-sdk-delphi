unit AWS.Internal.HttpErrorResponseExceptionHandler;

interface

uses
  System.SysUtils, System.Classes,
  AWS.Runtime.ExceptionHandler,
  AWS.Runtime.Contexts,
  AWS.SDKUtils,
  AWS.Runtime.Exceptions,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Transform.UnmarshallerContext,
  AWS.Internal.WebResponseData;

type
  THttpErrorResponseExceptionHandler = class(TExceptionHandler<EHttpErrorResponseException>)
  strict private
    function HandleSuppressed404(AExecutionContext: TExecutionContext;
      AHttpErrorResponse: IWebResponseData): Boolean;
    function HandleExceptionStream(ARequestContext: TRequestContext; AHttpErrorResponse: IWebResponseData;
      AException: EHttpErrorResponseException; AResponseStream: TStream): Boolean;
  public
    function HandleException(AExecutionContext: TExecutionContext;
      AException: EHttpErrorResponseException): Boolean; override;
  end;

implementation

{ THttpErrorResponseExceptionHandler }

function THttpErrorResponseExceptionHandler.HandleException(AExecutionContext: TExecutionContext;
  AException: EHttpErrorResponseException): Boolean;
begin
  if HandleSuppressed404(AExecutionContext, AException.Response) then
    Exit(False);

  Result := HandleExceptionStream(AExecutionContext.RequestContext, AException.Response,
    AException, AException.Response.ResponseBody.OpenResponse);
end;

function THttpErrorResponseExceptionHandler.HandleExceptionStream(ARequestContext: TRequestContext;
  AHttpErrorResponse: IWebResponseData; AException: EHttpErrorResponseException;
  AResponseStream: TStream): Boolean;
var
  ErrorResponseException: EAmazonServiceException;
  Unmarshaller: IResponseUnmarshaller;
  ReadEntireResponse: Boolean;
  RequestId: string;
  ErrorContext: TUnmarshallerContext;
begin
  ErrorResponseException := nil;
  try
    Unmarshaller := ARequestContext.Unmarshaller;
    ReadEntireResponse := True;
    ErrorContext := (Unmarshaller as TResponseUnmarshaller).CreateContext(AHttpErrorResponse, ReadEntireResponse,
      AResponseStream, True);
    try
      try
        ErrorResponseException := Unmarshaller.UnmarshallException(ErrorContext, AException,
          AHttpErrorResponse.StatusCode);
      except
        on E: Exception do
        begin
          if (E is EAmazonServiceException) or (E is EAmazonClientException) then
            raise;

          RequestId := AHttpErrorResponse.GetHeaderValue(THeaderKeys.RequestIdHeader);
          raise EAmazonUnmarshallingException.Create(RequestId, '',
            ErrorContext.ResponseBody, E, AHttpErrorResponse.StatusCode);
        end;
      end;
    finally
      ErrorContext.Free;
    end;

    {TODO: LogResponseBody}
  except
    on E: Exception do
    begin
      ErrorResponseException.Free;
      Logger.Error(Format('Failed to unmarshall a service error response: %s (%s)', [E.Message, E.ClassName]));
      raise;
    end;
  end;

  raise ErrorResponseException;
end;

function THttpErrorResponseExceptionHandler.HandleSuppressed404(AExecutionContext: TExecutionContext;
  AHttpErrorResponse: IWebResponseData): Boolean;
//var
//  RequestContext: TRequestContext;
//  ResponseContext: TResponseContext;
//  Unmarshaller: TResponseUnmarshaller;
//  ReadEntireResponse: Boolean;
begin
//  RequestContext := AExecutionContext.RequestContext;
//  ResponseContext := AExecutionContext.ResponseContext;

  {$MESSAGE WARN 'Finish implementation for Suppress404Exceptions'}
//  if (AHttpErrorResponse <> nil) and (AHttpErrorResponse.StatusCode = 404) and
//    RequestContext.Request.Suppress404Exceptions then
//  begin
//    Unmarshaller := RequestContext.Unmarshaller;
//    ReadEntireResponse := RequestContext.ClientConfig.LogResponse or
//      TAWSConfigs.LoggingConfig.LogResponses <> TResponseLoggingOption.Never;
//  end;

  Result := False;
end;

end.
