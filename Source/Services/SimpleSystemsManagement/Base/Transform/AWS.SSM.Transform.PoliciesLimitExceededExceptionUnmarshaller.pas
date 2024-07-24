unit AWS.SSM.Transform.PoliciesLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.PoliciesLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IPoliciesLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EPoliciesLimitExceededException, TJsonUnmarshallerContext>;
  
  TPoliciesLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EPoliciesLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IPoliciesLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EPoliciesLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EPoliciesLimitExceededException; overload;
    class function Instance: IPoliciesLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TPoliciesLimitExceededExceptionUnmarshaller }

function TPoliciesLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EPoliciesLimitExceededException;
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

function TPoliciesLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EPoliciesLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EPoliciesLimitExceededException;
begin
  UnmarshalledObject := EPoliciesLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TPoliciesLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TPoliciesLimitExceededExceptionUnmarshaller.Create;
end;

class function TPoliciesLimitExceededExceptionUnmarshaller.Instance: IPoliciesLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
