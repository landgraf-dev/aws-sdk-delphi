unit AWS.SES.Transform.TrackingOptionsDoesNotExistExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.TrackingOptionsDoesNotExistException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITrackingOptionsDoesNotExistExceptionUnmarshaller = IErrorResponseUnmarshaller<ETrackingOptionsDoesNotExistException, TXmlUnmarshallerContext>;
  
  TTrackingOptionsDoesNotExistExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETrackingOptionsDoesNotExistException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITrackingOptionsDoesNotExistExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETrackingOptionsDoesNotExistException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETrackingOptionsDoesNotExistException; overload;
    class function Instance: ITrackingOptionsDoesNotExistExceptionUnmarshaller; static;
  end;
  
implementation

{ TTrackingOptionsDoesNotExistExceptionUnmarshaller }

function TTrackingOptionsDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETrackingOptionsDoesNotExistException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TTrackingOptionsDoesNotExistExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETrackingOptionsDoesNotExistException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ETrackingOptionsDoesNotExistException;
begin
  Response := ETrackingOptionsDoesNotExistException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('ConfigurationSetName', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.ConfigurationSetName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TTrackingOptionsDoesNotExistExceptionUnmarshaller.Create;
begin
  FInstance := TTrackingOptionsDoesNotExistExceptionUnmarshaller.Create;
end;

class function TTrackingOptionsDoesNotExistExceptionUnmarshaller.Instance: ITrackingOptionsDoesNotExistExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
