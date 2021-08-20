unit AWS.Polly.Transform.SynthesisTaskNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.SynthesisTaskNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  ISynthesisTaskNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<ESynthesisTaskNotFoundException, TJsonUnmarshallerContext>;
  
  TSynthesisTaskNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ESynthesisTaskNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ISynthesisTaskNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ESynthesisTaskNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESynthesisTaskNotFoundException; overload;
    class function Instance: ISynthesisTaskNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TSynthesisTaskNotFoundExceptionUnmarshaller }

function TSynthesisTaskNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ESynthesisTaskNotFoundException;
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

function TSynthesisTaskNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESynthesisTaskNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ESynthesisTaskNotFoundException;
begin
  UnmarshalledObject := ESynthesisTaskNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TSynthesisTaskNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TSynthesisTaskNotFoundExceptionUnmarshaller.Create;
end;

class function TSynthesisTaskNotFoundExceptionUnmarshaller.Instance: ISynthesisTaskNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
