unit AWS.Textract.Transform.InvalidKMSKeyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.InvalidKMSKeyException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidKMSKeyExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidKMSKeyException, TJsonUnmarshallerContext>;
  
  TInvalidKMSKeyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidKMSKeyException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidKMSKeyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidKMSKeyException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidKMSKeyException; overload;
    class function Instance: IInvalidKMSKeyExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidKMSKeyExceptionUnmarshaller }

function TInvalidKMSKeyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidKMSKeyException;
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

function TInvalidKMSKeyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidKMSKeyException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidKMSKeyException;
begin
  UnmarshalledObject := EInvalidKMSKeyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidKMSKeyExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidKMSKeyExceptionUnmarshaller.Create;
end;

class function TInvalidKMSKeyExceptionUnmarshaller.Instance: IInvalidKMSKeyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
