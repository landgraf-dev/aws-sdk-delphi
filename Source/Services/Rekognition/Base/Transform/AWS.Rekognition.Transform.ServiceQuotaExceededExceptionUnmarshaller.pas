unit AWS.Rekognition.Transform.ServiceQuotaExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.ServiceQuotaExceededException, 
  AWS.Internal.ErrorResponse;

type
  IServiceQuotaExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EServiceQuotaExceededException, TJsonUnmarshallerContext>;
  
  TServiceQuotaExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EServiceQuotaExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IServiceQuotaExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EServiceQuotaExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceQuotaExceededException; overload;
    class function Instance: IServiceQuotaExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TServiceQuotaExceededExceptionUnmarshaller }

function TServiceQuotaExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EServiceQuotaExceededException;
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

function TServiceQuotaExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceQuotaExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EServiceQuotaExceededException;
begin
  UnmarshalledObject := EServiceQuotaExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TServiceQuotaExceededExceptionUnmarshaller.Create;
begin
  FInstance := TServiceQuotaExceededExceptionUnmarshaller.Create;
end;

class function TServiceQuotaExceededExceptionUnmarshaller.Instance: IServiceQuotaExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
