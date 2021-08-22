unit AWS.LexRuntimeService.Transform.BadRequestExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.BadRequestException, 
  AWS.Internal.ErrorResponse;

type
  IBadRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<EBadRequestException, TJsonUnmarshallerContext>;
  
  TBadRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBadRequestException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IBadRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EBadRequestException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EBadRequestException; overload;
    class function Instance: IBadRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TBadRequestExceptionUnmarshaller }

function TBadRequestExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EBadRequestException;
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

function TBadRequestExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EBadRequestException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EBadRequestException;
begin
  UnmarshalledObject := EBadRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBadRequestExceptionUnmarshaller.Create;
begin
  FInstance := TBadRequestExceptionUnmarshaller.Create;
end;

class function TBadRequestExceptionUnmarshaller.Instance: IBadRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
