unit AWS.SSM.Transform.CustomSchemaCountLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.CustomSchemaCountLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  ICustomSchemaCountLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ECustomSchemaCountLimitExceededException, TJsonUnmarshallerContext>;
  
  TCustomSchemaCountLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ECustomSchemaCountLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ICustomSchemaCountLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ECustomSchemaCountLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomSchemaCountLimitExceededException; overload;
    class function Instance: ICustomSchemaCountLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TCustomSchemaCountLimitExceededExceptionUnmarshaller }

function TCustomSchemaCountLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ECustomSchemaCountLimitExceededException;
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

function TCustomSchemaCountLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ECustomSchemaCountLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ECustomSchemaCountLimitExceededException;
begin
  UnmarshalledObject := ECustomSchemaCountLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TCustomSchemaCountLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TCustomSchemaCountLimitExceededExceptionUnmarshaller.Create;
end;

class function TCustomSchemaCountLimitExceededExceptionUnmarshaller.Instance: ICustomSchemaCountLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
