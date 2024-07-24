unit AWS.SSM.Transform.OpsMetadataLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsMetadataLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IOpsMetadataLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsMetadataLimitExceededException, TJsonUnmarshallerContext>;
  
  TOpsMetadataLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsMetadataLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataLimitExceededException; overload;
    class function Instance: IOpsMetadataLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataLimitExceededExceptionUnmarshaller }

function TOpsMetadataLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataLimitExceededException;
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

function TOpsMetadataLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsMetadataLimitExceededException;
begin
  UnmarshalledObject := EOpsMetadataLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsMetadataLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TOpsMetadataLimitExceededExceptionUnmarshaller.Create;
end;

class function TOpsMetadataLimitExceededExceptionUnmarshaller.Instance: IOpsMetadataLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
