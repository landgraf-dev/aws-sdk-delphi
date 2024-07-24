unit AWS.SSM.Transform.InvalidKeyIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidKeyIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidKeyIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidKeyIdException, TJsonUnmarshallerContext>;
  
  TInvalidKeyIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidKeyIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidKeyIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidKeyIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidKeyIdException; overload;
    class function Instance: IInvalidKeyIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidKeyIdExceptionUnmarshaller }

function TInvalidKeyIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidKeyIdException;
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

function TInvalidKeyIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidKeyIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidKeyIdException;
begin
  UnmarshalledObject := EInvalidKeyIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidKeyIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidKeyIdExceptionUnmarshaller.Create;
end;

class function TInvalidKeyIdExceptionUnmarshaller.Instance: IInvalidKeyIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
