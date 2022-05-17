unit AWS.Textract.Transform.InternalServerErrorExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.InternalServerErrorException, 
  AWS.Internal.ErrorResponse;

type
  IInternalServerErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<EInternalServerErrorException, TJsonUnmarshallerContext>;
  
  TInternalServerErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInternalServerErrorException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInternalServerErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInternalServerErrorException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalServerErrorException; overload;
    class function Instance: IInternalServerErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TInternalServerErrorExceptionUnmarshaller }

function TInternalServerErrorExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInternalServerErrorException;
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

function TInternalServerErrorExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInternalServerErrorException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInternalServerErrorException;
begin
  UnmarshalledObject := EInternalServerErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInternalServerErrorExceptionUnmarshaller.Create;
begin
  FInstance := TInternalServerErrorExceptionUnmarshaller.Create;
end;

class function TInternalServerErrorExceptionUnmarshaller.Instance: IInternalServerErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
