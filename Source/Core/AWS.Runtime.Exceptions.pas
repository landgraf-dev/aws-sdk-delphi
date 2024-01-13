unit AWS.Runtime.Exceptions;

{$I AWS.inc}

interface

uses
  System.SysUtils;

type
  EAmazonClientException = class(Exception)
  end;

  /// <summary>
  /// Which end of a request was responsible for a service error response.
  /// </summary>
  TErrorType = (
    /// <summary>
    /// An unrecognized error type was returned.
    /// </summary>
    Unknown,
    /// <summary>
    /// The sender was responsible for the error, i.e. the client
    /// request failed validation or was improperly formatted.
    /// </summary>
    Sender,
    /// <summary>
    /// The error occured within the service.
    /// </summary>
    Receiver
  );

  TRetryableDetails = class
  strict private
    FThrottling: Boolean;
  public
    constructor Create(AThrottling: Boolean);
    property Throttling: Boolean read FThrottling;
  end;

  EAmazonServiceException = class(Exception)
  strict private
    FErrorType: TErrorType;
    FErrorCode: string;
    FRequestId: string;
    FStatusCode: Integer;
    FRetryable: TRetryableDetails;
    class function BuildGenericErrorMessage(const AErrorCode: string; AStatusCode: Integer): string;
    procedure SetRetryable(const Value: TRetryableDetails); protected
    function BuildMessage(const AMessage: string; AException: Exception): string;
  public
    constructor Create(const AMessage: string; AInnerException: Exception); overload;
    constructor Create(const AMessage: string; AInnerException: Exception; AStatusCode: Integer); overload;
    constructor Create(const AMessage: string; AInnerException: Exception; AErrorType: TErrorType;
      const AErrorCode, ARequestId: string; AStatusCode: Integer); overload;
    destructor Destroy; override;
    property ErrorType: TErrorType read FErrorType write FErrorType;
    property ErrorCode: string read FErrorCode write FErrorCode;
    property RequestId: string read FRequestId write FRequestId;
    property StatusCode: Integer read FStatusCode write FStatusCode;
    property Retryable: TRetryableDetails read FRetryable write SetRetryable;
  end;

  EAmazonUnmarshallingException = class(EAmazonServiceException)
  strict private
    FLastKnownLocation: string;
    FResponseBody: string;
  public
    constructor Create(const ARequestId, ALastKnownLocation: string;
      AInnerException: Exception; AStatusCode: Integer); overload;
    constructor Create(const ARequestId, ALastKnownLocation, AResponseBody: string;
      AInnerException: Exception; AStatusCode: Integer); overload;
    property LastKnownLocation: string read FLastKnownLocation;
    property ResponseBody: string read FResponseBody;
  end;

  EInvalidDataException = class(Exception)
  end;

implementation

{ EAmazonUnmarshallingException }

constructor EAmazonUnmarshallingException.Create(const ARequestId, ALastKnownLocation, AResponseBody: string;
  AInnerException: Exception; AStatusCode: Integer);
begin
  inherited Create('Error unmarshalling response back from AWS', AInnerException, AStatusCode);
  RequestId := ARequestId;
  FLastKnownLocation := ALastKnownLocation;
  FResponseBody := AResponseBody;
end;

constructor EAmazonUnmarshallingException.Create(const ARequestId, ALastKnownLocation: string; AInnerException: Exception;
  AStatusCode: Integer);
begin
  inherited Create('Error unmarshalling response back from AWS', AInnerException, AStatusCode);
  RequestId := ARequestId;
  FLastKnownLocation := ALastKnownLocation;
end;

{ EAmazonServiceException }

class function EAmazonServiceException.BuildGenericErrorMessage(const AErrorCode: string; AStatusCode: Integer): string;
begin
  Result := Format('Error making request with Error Code %s and Http Status Code %d. ' +
    'No further error information was returned by the service', [AErrorCode, AStatusCode]);
end;

function EAmazonServiceException.BuildMessage(const AMessage: string; AException: Exception): string;
begin
  // Let's not rely on InnerException mechanism right now
  Result := AMessage;
  if (AException <> nil) and (AException.Message <> '') then
    Result := Result + sLineBreak + AException.Message;
end;

constructor EAmazonServiceException.Create(const AMessage: string; AInnerException: Exception);
begin
  inherited Create(BuildMessage(AMessage, AInnerException));
end;

constructor EAmazonServiceException.Create(const AMessage: string; AInnerException: Exception; AStatusCode: Integer);
begin
  Create(AMessage, AInnerException);
  FStatusCode := AStatusCode;
end;

constructor EAmazonServiceException.Create(const AMessage: string; AInnerException: Exception; AErrorType: TErrorType;
  const AErrorCode, ARequestId: string; AStatusCode: Integer);
begin
  if AMessage = '' then
    Create(BuildGenericErrorMessage(AErrorCode, AStatusCode), AInnerException)
  else
    Create(AMessage, AInnerException);
  FErrorCode := AErrorCode;
  FErrorType := AErrorType;
  FRequestId := ARequestId;
  FStatusCode := AStatusCode;
end;

destructor EAmazonServiceException.Destroy;
begin
  FRetryable.Free;
  inherited;
end;

procedure EAmazonServiceException.SetRetryable(const Value: TRetryableDetails);
begin
  if FRetryable <> Value then
  begin
    FRetryable.Free;
    FRetryable := Value;
  end;
end;

{ TRetryableDetails }

constructor TRetryableDetails.Create(AThrottling: Boolean);
begin
  inherited Create;
  FThrottling := AThrottling;
end;

end.
