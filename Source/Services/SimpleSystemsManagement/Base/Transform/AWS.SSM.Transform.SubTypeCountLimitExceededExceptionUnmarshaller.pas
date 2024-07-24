unit AWS.SSM.Transform.SubTypeCountLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.SubTypeCountLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ISubTypeCountLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ESubTypeCountLimitExceededException, TJsonUnmarshallerContext>;
  
  TSubTypeCountLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ESubTypeCountLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ISubTypeCountLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ESubTypeCountLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESubTypeCountLimitExceededException; overload;
    class function Instance: ISubTypeCountLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TSubTypeCountLimitExceededExceptionUnmarshaller }

function TSubTypeCountLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ESubTypeCountLimitExceededException;
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

function TSubTypeCountLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ESubTypeCountLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ESubTypeCountLimitExceededException;
begin
  UnmarshalledObject := ESubTypeCountLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TSubTypeCountLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TSubTypeCountLimitExceededExceptionUnmarshaller.Create;
end;

class function TSubTypeCountLimitExceededExceptionUnmarshaller.Instance: ISubTypeCountLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
