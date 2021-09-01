unit AWS.Translate.Transform.InternalServerExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Translate.Model.InternalServerException, 
  AWS.Internal.ErrorResponse;

type
  IInternalServerExceptionUnmarshaller = IErrorResponseUnmarshaller<EInternalServerException, TJsonUnmarshallerContext>;
  
  TInternalServerExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInternalServerException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInternalServerExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInternalServerException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalServerException; overload;
    class function Instance: IInternalServerExceptionUnmarshaller; static;
  end;
  
implementation

{ TInternalServerExceptionUnmarshaller }

function TInternalServerExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInternalServerException;
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

function TInternalServerExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalServerException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInternalServerException;
begin
  UnmarshalledObject := EInternalServerException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInternalServerExceptionUnmarshaller.Create;
begin
  FInstance := TInternalServerExceptionUnmarshaller.Create;
end;

class function TInternalServerExceptionUnmarshaller.Instance: IInternalServerExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
