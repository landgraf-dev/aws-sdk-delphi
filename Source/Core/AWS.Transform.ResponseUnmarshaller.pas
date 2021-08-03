unit AWS.Transform.ResponseUnmarshaller;

interface

uses
  System.SysUtils, System.Classes,
  AWS.Internal.Request,
  AWS.Runtime.Model,
  AWS.Runtime.Exceptions,
  AWS.Transform.UnmarshallerContext,
  AWS.Internal.WebResponseData;

type
  IUnmarshaller<T, R> = interface
    /// <summary>
    /// Given the current position in the XML stream, extract a T.
    /// </summary>
    /// <param name="AInput">The XML parsing context</param>
    /// <returns>An object of type T populated with data from the XML stream.</returns>
    function Unmarshall(AInput: R): T;
  end;

  IResponseUnmarshaller<T, R> = interface(IUnmarshaller<T, R>)
    /// <summary>
    /// Extracts an exception with data from an ErrorResponse.
    /// </summary>
    /// <param name="AInput">The XML parsing context.</param>
    /// <param name="AInnerException">An inner exception to be included with the returned exception</param>
    /// <param name="AStatusCode">The HttpStatusCode from the ErrorResponse</param>
    /// <returns>Either an exception based on the ErrorCode from the ErrorResponse, or the
    /// general service exception for the service in question.</returns>
    function UnmarshallException(AInput: R; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
    function UnmarshallResponse(AContext: TUnmarshallerContext): TAmazonWebServiceResponse;
    function CreateContext(AResponse: IWebResponseData; AReadEntireResponse: Boolean;
      AStream: TStream; AIsException: Boolean): TUnmarshallerContext;
  end;

  IResponseUnmarshaller = IResponseUnmarshaller<TAmazonWebServiceResponse, TUnmarshallerContext>;

  TResponseUnmarshaller = class(TInterfacedObject, IResponseUnmarshaller<TAmazonWebServiceResponse, TUnmarshallerContext>)
  strict protected
    function ConstructUnmarshallerContext(AResponseStream: TStream; AMaintainResponseBody: Boolean;
      AResponse: IWebResponseData; AIsException: Boolean): TUnmarshallerContext; virtual; abstract;
    function ShouldReadEntireResponse(AResponse: IWebResponseData; AReadEntireResponse: Boolean): Boolean; virtual;
  public
    function CreateContext(AResponse: IWebResponseData; AReadEntireResponse: Boolean;
      AStream: TStream; AIsException: Boolean): TUnmarshallerContext; virtual;
    function HasStreamingProperty: Boolean; virtual;
    function Unmarshall(AContext: TUnmarshallerContext): TAmazonWebServiceResponse; overload; virtual; abstract;
    function UnmarshallException(AInput: TUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; overload; virtual;
    function UnmarshallResponse(AContext: TUnmarshallerContext): TAmazonWebServiceResponse;
    class function GetDefaultErrorMessage(E: ExceptClass): string; static;
  end;

  TXmlResponseUnmarshaller = class(TResponseUnmarshaller)
  strict protected
    function ConstructUnmarshallerContext(AResponseStream: TStream; AMaintainResponseBody: Boolean;
      AResponse: IWebResponseData; AIsException: Boolean): TUnmarshallerContext; override;
  public
    function Unmarshall(AInput: TUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function Unmarshall(AInput: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; virtual; abstract;
    function UnmarshallException(AInput: TUnmarshallerContext; AInnerException: Exception;
      AStatusCode: Integer): EAmazonServiceException; overload; override;
    function UnmarshallException(AInput: TXmlUnmarshallerContext; AInnerException: Exception;
      AStatusCode: Integer): EAmazonServiceException; overload; virtual; abstract;
  end;

implementation

uses
  AWS.SDKUtils;

{ TResponseUnmarshaller }

function TResponseUnmarshaller.CreateContext(AResponse: IWebResponseData; AReadEntireResponse: Boolean;
  AStream: TStream; AIsException: Boolean): TUnmarshallerContext;
begin
  if AResponse = nil then
    raise EAmazonServiceException.Create('The Web Response for a successful request is null');

  Result := ConstructUnmarshallerContext(AStream, ShouldReadEntireResponse(AResponse, AReadEntireResponse),
    AResponse, AIsException);
end;

class function TResponseUnmarshaller.GetDefaultErrorMessage(E: ExceptClass): string;
begin
  Result := Format('An exception of type %s, please check the error log for mode details.',
    [E.ClassName]);
end;

function TResponseUnmarshaller.HasStreamingProperty: Boolean;
begin
  Result := False;
end;

function TResponseUnmarshaller.ShouldReadEntireResponse(AResponse: IWebResponseData;
  AReadEntireResponse: Boolean): Boolean;
begin
  Result := AReadEntireResponse;
end;

function TResponseUnmarshaller.UnmarshallException(AInput: TUnmarshallerContext; AInnerException: Exception;
  AStatusCode: Integer): EAmazonServiceException;
begin
  raise ENotImplemented.Create('TResponseUnmarshaller.UnmarshallException');
end;

function TResponseUnmarshaller.UnmarshallResponse(AContext: TUnmarshallerContext): TAmazonWebServiceResponse;
begin
  Result := Unmarshall(AContext);
  try
    Result.ContentLength := AContext.ResponseData.ContentLength;
    Result.HttpStatusCode := AContext.ResponseData.StatusCode;
  except
    Result.Free;
    raise;
  end;
end;

{ TXmlResponseUnmarshaller }

function TXmlResponseUnmarshaller.ConstructUnmarshallerContext(AResponseStream: TStream; AMaintainResponseBody: Boolean;
  AResponse: IWebResponseData; AIsException: Boolean): TUnmarshallerContext;
begin
  Result := TXmlUnmarshallerContext.Create(AResponseStream, AMaintainResponseBody, AResponse, AIsException);
end;

function TXmlResponseUnmarshaller.Unmarshall(AInput: TUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TAmazonWebServiceResponse;
  Context: TXmlUnmarshallerContext;
begin
  if not (AInput is TXmlUnmarshallerContext) then
    raise EInvalidOpException.Create('Unsupported UnmarshallerContext');
  Context := TXmlUnmarshallerContext(AInput);

  Response := Unmarshall(Context);
  try
    if Context.ResponseData.IsHeaderPresent(THeaderKeys.RequestIdHeader) and
      (Context.ResponseData.GetHeaderValue(THeaderKeys.RequestIdHeader) <> '') then
    begin
      Response.ResponseMetadata.RequestId := Context.ResponseData.GetHeaderValue(THeaderKeys.RequestIdHeader);
    end
    else
    if Context.ResponseData.IsHeaderPresent(THeaderKeys.XAmzRequestIdHeader) and
      (Context.ResponseData.GetHeaderValue(THeaderKeys.XAmzRequestIdHeader) <> '') then
    begin
      Response.ResponseMetadata.RequestId := Context.ResponseData.GetHeaderValue(THeaderKeys.XAmzRequestIdHeader);
    end;

    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TXmlResponseUnmarshaller.UnmarshallException(AInput: TUnmarshallerContext; AInnerException: Exception;
  AStatusCode: Integer): EAmazonServiceException;
begin
  if not (AInput is TXmlUnmarshallerContext) then
    raise EInvalidOpException.Create('Unsupported UnmarshallerContext');

  Result := UnmarshallException(TXmlUnmarshallerContext(AInput), AInnerException, AStatusCode);
end;

end.
