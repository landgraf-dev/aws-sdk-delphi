unit AWS.SESv2.Transform.TooManyRequestsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SESv2.Model.TooManyRequestsException, 
  AWS.Internal.ErrorResponse;

type
  ITooManyRequestsExceptionUnmarshaller = IErrorResponseUnmarshaller<ETooManyRequestsException, TJsonUnmarshallerContext>;
  
  TTooManyRequestsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETooManyRequestsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITooManyRequestsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETooManyRequestsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyRequestsException; overload;
    class function Instance: ITooManyRequestsExceptionUnmarshaller; static;
  end;
  
implementation

{ TTooManyRequestsExceptionUnmarshaller }

function TTooManyRequestsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETooManyRequestsException;
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

function TTooManyRequestsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyRequestsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETooManyRequestsException;
begin
  UnmarshalledObject := ETooManyRequestsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTooManyRequestsExceptionUnmarshaller.Create;
begin
  FInstance := TTooManyRequestsExceptionUnmarshaller.Create;
end;

class function TTooManyRequestsExceptionUnmarshaller.Instance: ITooManyRequestsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
