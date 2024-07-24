unit AWS.SSM.Transform.InvalidTypeNameExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidTypeNameException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidTypeNameExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidTypeNameException, TJsonUnmarshallerContext>;
  
  TInvalidTypeNameExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidTypeNameException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidTypeNameExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTypeNameException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTypeNameException; overload;
    class function Instance: IInvalidTypeNameExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidTypeNameExceptionUnmarshaller }

function TInvalidTypeNameExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTypeNameException;
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

function TInvalidTypeNameExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTypeNameException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidTypeNameException;
begin
  UnmarshalledObject := EInvalidTypeNameException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidTypeNameExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidTypeNameExceptionUnmarshaller.Create;
end;

class function TInvalidTypeNameExceptionUnmarshaller.Instance: IInvalidTypeNameExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
