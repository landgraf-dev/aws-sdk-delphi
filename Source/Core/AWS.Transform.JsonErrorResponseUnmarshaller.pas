unit AWS.Transform.JsonErrorResponseUnmarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.ErrorResponse,
  AWS.Transform.JsonUnmarshallerContext,
  AWS.Transform.ResponseUnmarshaller;

type
  TJsonErrorResponseUnmarshaller = class(TInterfacedObject, IUnmarshaller<TErrorResponse, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: TJsonErrorResponseUnmarshaller;
    class procedure GetValuesFromJsonIfPossible(AContext: TJsonUnmarshallerContext;
      var AType, AMessage, ACode: string); static;
    class function TryReadContext(AContext: TJsonUnmarshallerContext): Boolean; static;
    class destructor Destroy;
  public
    class function Instance: TJsonErrorResponseUnmarshaller;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TErrorResponse;
  end;

implementation

uses
  AWS.SDKUtils,
  AWS.Runtime.Exceptions,
  AWS.Transform.SimpleTypeUnmarshaller;

{ TJsonErrorResponseUnmarshaller }

class destructor TJsonErrorResponseUnmarshaller.Destroy;
begin
  FInstance.Free;
end;

class procedure TJsonErrorResponseUnmarshaller.GetValuesFromJsonIfPossible(AContext: TJsonUnmarshallerContext;
  var AType, AMessage, ACode: string);
begin
  ACode := '';
  AType := '';
  AMessage := '';

  while TryReadContext(AContext) do
  begin
    if AContext.TestExpression('__type') then
      AType := TStringUnmarshaller.JsonInstance.Unmarshall(AContext)
    else
    if AContext.TestExpression('message') then
      AMessage := TStringUnmarshaller.JsonInstance.Unmarshall(AContext)
    else
    if AContext.TestExpression('code') then
      ACode := TStringUnmarshaller.JsonInstance.Unmarshall(AContext);
  end;
end;

class function TJsonErrorResponseUnmarshaller.Instance: TJsonErrorResponseUnmarshaller;
begin
  if FInstance = nil then
    FInstance := TJsonErrorResponseUnmarshaller.Create;
  Result := FInstance;
end;

class function TJsonErrorResponseUnmarshaller.TryReadContext(AContext: TJsonUnmarshallerContext): Boolean;
begin
  try
    Result := AContext.Read;
  except
    // TODO: Improve exception handling
//    on E: EJsonException do
//      Result := False
//    else
      raise;
  end;
end;

function TJsonErrorResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TErrorResponse;
var
  Response: TErrorResponse;
  LType: string;
  ErrorType: string;
  Message: string;
  ErrorMessage: string;
  Code: string;
  RequestId: string;
  Index: Integer;
begin
  Response := TErrorResponse.Create;
  try
    // TODO: allow retrieving exception from XML
    // This needs TJsonReader to allow a constructor receiving a TStreamReader directly,
    // so we can peek chars from the stream and check if it's a open tag "<" char.

    // if AContext.Peek = 60 then
    // begin
    //   Unmarshall using XML
    // end
    // else
    begin
      GetValuesFromJsonIfPossible(AContext, LType, Message, Code);

      // If an error code was not found, check for the x-amzn-ErrorType header.
      // This header is returned by rest-json services.
      if (LType = '') and
        (AContext.ResponseData.IsHeaderPresent(THeaderKeys.XAmzErrorType)) then
      begin
        ErrorType := AContext.ResponseData.GetHeaderValue(THeaderKeys.XAmzErrorType);
        if ErrorType <> '' then
        begin
          // The error type can contain additional information, with ":" as a delimiter
          // We are only interested in the initial part which is the error type
          Index := Pos(':', ErrorType);
          if Index > 0 then
            ErrorType := Copy(ErrorType, 1, Index - 1);
          LType := errorType;
        end;
      end;

      // Check for the x-amzn-error-message header. This header is returned by rest-json services.
      // If the header is present it is preferred over any value provided in the response body.
      if AContext.ResponseData.IsHeaderPresent(THeaderKeys.XAmznErrorMessage) then
      begin
        ErrorMessage := AContext.ResponseData.GetHeaderValue(THeaderKeys.XAmznErrorMessage);
        if ErrorMessage <> '' then
          Message := ErrorMessage;
      end;

      // if both "__type" and HeaderKeys.XAmzErrorType were not specified, use "code" as type
      // this impacts Glacier
      if (LType = '') and (Code <> '') then
        LType := Code;

      // strip extra data from type, leaving only the exception type name
      LType := LType.Substring(LType.LastIndexOf('#') + 1);

      // if no message was found create a generic message
      if Message = '' then
      begin
        if LType = '' then
        begin
          if AContext.ResponseBody = '' then
            Message := 'The service returned an error. See inner exception for details.'
          else
            Message := 'The service returned an error with HTTP Body: ' + AContext.ResponseBody;
        end
        else
        begin
          if AContext.ResponseBody = '' then
            Message := 'The service returned an error with Error Code ' + LType + '.'
          else
            Message := 'The service returned an error with Error Code ' + LType + ' and HTTP Body: ' + AContext.ResponseBody;
        end;
      end;

      // Check for the x-amzn-RequestId header. This header is returned by rest-json services.
      // If the header is present it is preferred over any value provided in the response body.
      if AContext.ResponseData.IsHeaderPresent(THeaderKeys.RequestIdHeader) then
        RequestId  := AContext.ResponseData.GetHeaderValue(THeaderKeys.RequestIdHeader);

      Response.Code := LType;
      Response.Message := Message;
      Response.RequestId := RequestId;
      // type is not applicable to JSON services, setting to Unknown
      Response.ErrorType := TErrorType.Unknown;

      Result := Response;
    end;
  except
    Response.Free;
    raise;
  end;
end;

end.
