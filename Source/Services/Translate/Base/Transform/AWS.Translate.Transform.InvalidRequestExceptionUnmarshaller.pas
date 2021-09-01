unit AWS.Translate.Transform.InvalidRequestExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.InvalidRequestException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidRequestException, TJsonUnmarshallerContext>;
  
  TInvalidRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidRequestException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidRequestException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRequestException; overload;
    class function Instance: IInvalidRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidRequestExceptionUnmarshaller }

function TInvalidRequestExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidRequestException;
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

function TInvalidRequestExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidRequestException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidRequestException;
begin
  UnmarshalledObject := EInvalidRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidRequestExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidRequestExceptionUnmarshaller.Create;
end;

class function TInvalidRequestExceptionUnmarshaller.Instance: IInvalidRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
