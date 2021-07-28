unit AWS.SES.Transform.TrackingOptionsAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SES.Model.TrackingOptionsAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITrackingOptionsAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<ETrackingOptionsAlreadyExistsException, TXmlUnmarshallerContext>;
  
  TTrackingOptionsAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETrackingOptionsAlreadyExistsException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITrackingOptionsAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETrackingOptionsAlreadyExistsException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETrackingOptionsAlreadyExistsException; overload;
    class function Instance: ITrackingOptionsAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TTrackingOptionsAlreadyExistsExceptionUnmarshaller }

function TTrackingOptionsAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETrackingOptionsAlreadyExistsException;
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

function TTrackingOptionsAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETrackingOptionsAlreadyExistsException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ETrackingOptionsAlreadyExistsException;
begin
  Response := ETrackingOptionsAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTrackingOptionsAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TTrackingOptionsAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TTrackingOptionsAlreadyExistsExceptionUnmarshaller.Instance: ITrackingOptionsAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
