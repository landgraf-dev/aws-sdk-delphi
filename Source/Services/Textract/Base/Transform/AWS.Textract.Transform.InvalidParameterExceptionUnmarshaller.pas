unit AWS.Textract.Transform.InvalidParameterExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.InvalidParameterException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidParameterExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidParameterException, TJsonUnmarshallerContext>;
  
  TInvalidParameterExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidParameterException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidParameterExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidParameterException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterException; overload;
    class function Instance: IInvalidParameterExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidParameterExceptionUnmarshaller }

function TInvalidParameterExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidParameterException;
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

function TInvalidParameterExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidParameterException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidParameterException;
begin
  UnmarshalledObject := EInvalidParameterException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidParameterExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidParameterExceptionUnmarshaller.Create;
end;

class function TInvalidParameterExceptionUnmarshaller.Instance: IInvalidParameterExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
