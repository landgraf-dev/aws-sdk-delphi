unit AWS.Polly.Transform.ServiceFailureExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.ServiceFailureException, 
  AWS.Internal.ErrorResponse;

type
  IServiceFailureExceptionUnmarshaller = IErrorResponseUnmarshaller<EServiceFailureException, TJsonUnmarshallerContext>;
  
  TServiceFailureExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EServiceFailureException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IServiceFailureExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EServiceFailureException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceFailureException; overload;
    class function Instance: IServiceFailureExceptionUnmarshaller; static;
  end;
  
implementation

{ TServiceFailureExceptionUnmarshaller }

function TServiceFailureExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EServiceFailureException;
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

function TServiceFailureExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceFailureException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EServiceFailureException;
begin
  UnmarshalledObject := EServiceFailureException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TServiceFailureExceptionUnmarshaller.Create;
begin
  FInstance := TServiceFailureExceptionUnmarshaller.Create;
end;

class function TServiceFailureExceptionUnmarshaller.Instance: IServiceFailureExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
