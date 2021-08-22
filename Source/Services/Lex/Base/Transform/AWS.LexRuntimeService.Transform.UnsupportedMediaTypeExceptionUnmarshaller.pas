unit AWS.LexRuntimeService.Transform.UnsupportedMediaTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeService.Model.UnsupportedMediaTypeException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedMediaTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedMediaTypeException, TJsonUnmarshallerContext>;
  
  TUnsupportedMediaTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedMediaTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedMediaTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedMediaTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedMediaTypeException; overload;
    class function Instance: IUnsupportedMediaTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedMediaTypeExceptionUnmarshaller }

function TUnsupportedMediaTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedMediaTypeException;
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

function TUnsupportedMediaTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedMediaTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedMediaTypeException;
begin
  UnmarshalledObject := EUnsupportedMediaTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedMediaTypeExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedMediaTypeExceptionUnmarshaller.Create;
end;

class function TUnsupportedMediaTypeExceptionUnmarshaller.Instance: IUnsupportedMediaTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
