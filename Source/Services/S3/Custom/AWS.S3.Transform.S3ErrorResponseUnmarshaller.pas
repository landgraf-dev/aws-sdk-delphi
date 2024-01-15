unit AWS.S3.Transform.S3ErrorResponseUnmarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.ErrorResponse,
  AWS.Runtime.Exceptions,
  AWS.SDKUtils,
  AWS.Transform.UnmarshallerContext,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Transform.SimpleTypeUnmarshaller,
  AWS.Internal.Request;

type
  TS3ErrorResponse = class(TErrorResponse)
  private
    FRegion: string;
    FResource: string;
    FId2: string;
    FAmzCfId: string;
    FParsingException: Exception;
  public
    property Region: string read FRegion write FRegion;
    property Resource: string read FResource write FResource;
    property Id2: string read FId2 write FId2;
    property AmzCfId: string read FAmzCfId write FAmzCfId;
    property ParsingException: Exception read FParsingException write FParsingException;
  end;

  IS3ErrorResponseUnmarshaller = IUnmarshaller<TS3ErrorResponse, TXmlUnmarshallerContext>;

  TS3ErrorResponseUnmarshaller = class(TInterfacedObject, IUnmarshaller<TS3ErrorResponse, TXmlUnmarshallerContext>)
  strict private const
    XML_CONTENT_TYPE = 'text/xml';
  strict private
    class var FInstance: IS3ErrorResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TS3ErrorResponse;
    class function Instance: IS3ErrorResponseUnmarshaller; static;
  end;

implementation

{ TS3ErrorResponseUnmarshaller }

function TS3ErrorResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TS3ErrorResponse;
begin
  var response := TS3ErrorResponse.Create;
  try
    var statusCode := AContext.ResponseData.StatusCode;
    response.Code := statusCode.ToString;
    if AContext.ResponseData.IsHeaderPresent(THeaderKeys.XAmzRequestIdHeader) then
      response.RequestId := AContext.ResponseData.GetHeaderValue(THeaderKeys.XAmzRequestIdHeader);
    if AContext.ResponseData.IsHeaderPresent(THeaderKeys.XAmzId2Header) then
      response.Id2 := AContext.ResponseData.GetHeaderValue(THeaderKeys.XAmzId2Header);
    if AContext.ResponseData.IsHeaderPresent(THeaderKeys.XAmzCloudFrontIdHeader) then
      response.AmzCfId := AContext.ResponseData.GetHeaderValue(THeaderKeys.XAmzCloudFrontIdHeader);

    if statusCode >= 500 then
      response.ErrorType := TErrorType.Receiver
    else
    if statusCode >= 400 then
      response.ErrorType := TErrorType.Sender
    else
      response.ErrorType := TErrorType.Unknown;

    var contentLengthHeader := '';
    if AContext.ResponseData.IsHeaderPresent(THeaderKeys.ContentLengthHeader) then
      contentLengthHeader := AContext.ResponseData.GetHeaderValue(THeaderKeys.ContentLengthHeader);

    var contentTypeHeader := XML_CONTENT_TYPE;
    if AContext.ResponseData.IsHeaderPresent(THeaderKeys.ContentTypeHeader) then
      contentTypeHeader := AContext.ResponseData.GetHeaderValue(THeaderKeys.ContentTypeHeader);

    var contentLength: Int64;
    if string.IsNullOrEmpty(contentLengthHeader) or not TryStrToInt64(contentLengthHeader, contentLength) then
    begin
      contentLength := -1;
    end;
    if contentLength < 0 then
    begin
        try
          contentLength := AContext.Stream.Size;
        except
          contentLength := -1;
        end;
    end;

    if (contentLength <> 0) and contentTypeHeader.EndsWith('/xml', True) then
    begin
      try
        while AContext.Read do
        begin
          if AContext.IsStartElement then
          begin
            if AContext.TestExpression('Error/Code') then
            begin
              response.Code := TStringUnmarshaller.Instance.Unmarshall(AContext);
              Continue;
            end;
            if AContext.TestExpression('Error/Message') then
            begin
              response.Message := TStringUnmarshaller.Instance.Unmarshall(AContext);
              Continue;
            end;
            if AContext.TestExpression('Error/Resource') then
            begin
              response.Resource := TStringUnmarshaller.Instance.Unmarshall(AContext);
              Continue;
            end;
            if AContext.TestExpression('Error/RequestId') then
            begin
              response.RequestId := TStringUnmarshaller.Instance.Unmarshall(AContext);
              Continue;
            end;
            if AContext.TestExpression('Error/HostId') then
            begin
              response.Id2 := TStringUnmarshaller.Instance.Unmarshall(AContext);
              Continue;
            end;
            if AContext.TestExpression('Error/Region') then
            begin
              response.Region := TStringUnmarshaller.Instance.Unmarshall(AContext);
              continue;
            end;
          end;
        end;
      except
        on E: Exception do
          // Error response was not XML
          response.ParsingException := E;
      end;
    end;

    Result := response;
  except
    response.Free;
    raise;
  end;
end;

class constructor TS3ErrorResponseUnmarshaller.Create;
begin
  FInstance := TS3ErrorResponseUnmarshaller.Create;
end;

class function TS3ErrorResponseUnmarshaller.Instance: IS3ErrorResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
