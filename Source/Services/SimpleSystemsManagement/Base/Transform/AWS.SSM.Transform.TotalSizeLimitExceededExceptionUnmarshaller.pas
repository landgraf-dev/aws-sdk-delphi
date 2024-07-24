unit AWS.SSM.Transform.TotalSizeLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.TotalSizeLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ITotalSizeLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ETotalSizeLimitExceededException, TJsonUnmarshallerContext>;
  
  TTotalSizeLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETotalSizeLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITotalSizeLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETotalSizeLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETotalSizeLimitExceededException; overload;
    class function Instance: ITotalSizeLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TTotalSizeLimitExceededExceptionUnmarshaller }

function TTotalSizeLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETotalSizeLimitExceededException;
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

function TTotalSizeLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETotalSizeLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETotalSizeLimitExceededException;
begin
  UnmarshalledObject := ETotalSizeLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTotalSizeLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TTotalSizeLimitExceededExceptionUnmarshaller.Create;
end;

class function TTotalSizeLimitExceededExceptionUnmarshaller.Instance: ITotalSizeLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
