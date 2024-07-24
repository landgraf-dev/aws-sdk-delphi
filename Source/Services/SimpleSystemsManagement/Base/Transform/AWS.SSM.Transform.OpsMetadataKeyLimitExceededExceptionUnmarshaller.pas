unit AWS.SSM.Transform.OpsMetadataKeyLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsMetadataKeyLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IOpsMetadataKeyLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsMetadataKeyLimitExceededException, TJsonUnmarshallerContext>;
  
  TOpsMetadataKeyLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsMetadataKeyLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataKeyLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataKeyLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataKeyLimitExceededException; overload;
    class function Instance: IOpsMetadataKeyLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataKeyLimitExceededExceptionUnmarshaller }

function TOpsMetadataKeyLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataKeyLimitExceededException;
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

function TOpsMetadataKeyLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataKeyLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsMetadataKeyLimitExceededException;
begin
  UnmarshalledObject := EOpsMetadataKeyLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsMetadataKeyLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TOpsMetadataKeyLimitExceededExceptionUnmarshaller.Create;
end;

class function TOpsMetadataKeyLimitExceededExceptionUnmarshaller.Instance: IOpsMetadataKeyLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
