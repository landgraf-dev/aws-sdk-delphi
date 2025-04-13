unit AWS.Transform.ErrorResponseUnmarshaller;

interface

uses
  AWS.Internal.ErrorResponse,
  AWS.Transform.UnmarshallerContext,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Runtime.Exceptions,
  AWS.Transform.SimpleTypeUnmarshaller;

type
  TErrorResponseUnmarshaller = class(TInterfacedObject, IUnmarshaller<TErrorResponse, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: TErrorResponseUnmarshaller;
    class procedure PopulateErrorResponseFromXmlIfPossible(AContext: TXmlUnmarshallerContext; AResponse: TErrorResponse);
    class function TryReadContext(AContext: TXmlUnmarshallerContext): Boolean;
    class destructor Destroy;
  public
    class function GetInstance: TErrorResponseUnmarshaller;
    class function Instance: TErrorResponseUnmarshaller;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TErrorResponse;
  end;

implementation

uses
  System.SyncObjs,
  System.TypInfo;

{ TErrorResponseUnmarshaller }

class destructor TErrorResponseUnmarshaller.Destroy;
begin
  FInstance.Free;
end;

class function TErrorResponseUnmarshaller.GetInstance: TErrorResponseUnmarshaller;
var
  LocalInstance: TErrorResponseUnmarshaller;
begin
  if FInstance = nil then
  begin
    LocalInstance := TErrorResponseUnmarshaller.Create;
    if TInterlocked.CompareExchange<TErrorResponseUnmarshaller>(FInstance, LocalInstance, nil) <> nil then
      LocalInstance.Free;
  end;
  Result := FInstance;
end;

class function TErrorResponseUnmarshaller.Instance: TErrorResponseUnmarshaller;
begin
  Result := GetInstance;
end;

class procedure TErrorResponseUnmarshaller.PopulateErrorResponseFromXmlIfPossible(AContext: TXmlUnmarshallerContext;
  AResponse: TErrorResponse);
begin
  while TryReadContext(AContext) do
    if AContext.IsStartElement then
    begin
      if AContext.TestExpression('Error/Type') then
      begin
        try
          AResponse.ErrorType := TErrorType(GetEnumValue(TypeInfo(TErrorType),
            TStringUnmarshaller.Instance.Unmarshall(AContext)));
        except
          AResponse.ErrorType := TErrorType.Unknown;
        end;
      end
      else
      if AContext.TestExpression('Error/Code') then
        AResponse.Code := TStringUnmarshaller.Instance.Unmarshall(AContext)
      else
      if AContext.TestExpression('Error/Message') then
        AResponse.Message := TStringUnmarshaller.Instance.Unmarshall(AContext)
      else
      if AContext.TestExpression('RequestId') then
        AResponse.RequestId := TStringUnmarshaller.Instance.Unmarshall(AContext);
    end;
end;

class function TErrorResponseUnmarshaller.TryReadContext(AContext: TXmlUnmarshallerContext): Boolean;
begin
  try
    Result := AContext.Read;
  except
    // TODO: Improve exception handling
//    on E: EXmlException do
//      Result := False
//    else
      raise;
  end;
end;

function TErrorResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TErrorResponse;
var
  Response: TErrorResponse;
begin
  Response := TErrorResponse.Create;
  try
    PopulateErrorResponseFromXmlIfPossible(AContext, Response);
    if Response.Message = '' then
    begin
      if Response.Code = '' then
      begin
        if AContext.ResponseBody = '' then
          Response.Message := 'The service returned an error'
        else
          Response.Message := 'The service returned an error with HTTP Body: ' + AContext.ResponseBody;
      end
      else
        Response.Message := 'The service returned an error with Error Code ' +
          Response.Code + ' and HTTP Body: ' + AContext.ResponseBody;
    end;
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

end.
