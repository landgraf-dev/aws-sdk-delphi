unit AWS.SSM.Transform.ResourceLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ResourceLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IResourceLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceLimitExceededException, TJsonUnmarshallerContext>;
  
  TResourceLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceLimitExceededException; overload;
    class function Instance: IResourceLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceLimitExceededExceptionUnmarshaller }

function TResourceLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceLimitExceededException;
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

function TResourceLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceLimitExceededException;
begin
  UnmarshalledObject := EResourceLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TResourceLimitExceededExceptionUnmarshaller.Create;
end;

class function TResourceLimitExceededExceptionUnmarshaller.Instance: IResourceLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
