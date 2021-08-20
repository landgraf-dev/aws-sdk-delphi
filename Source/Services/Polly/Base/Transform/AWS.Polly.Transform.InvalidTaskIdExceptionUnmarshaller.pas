unit AWS.Polly.Transform.InvalidTaskIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidTaskIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidTaskIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidTaskIdException, TJsonUnmarshallerContext>;
  
  TInvalidTaskIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidTaskIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidTaskIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTaskIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTaskIdException; overload;
    class function Instance: IInvalidTaskIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidTaskIdExceptionUnmarshaller }

function TInvalidTaskIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTaskIdException;
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

function TInvalidTaskIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTaskIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidTaskIdException;
begin
  UnmarshalledObject := EInvalidTaskIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidTaskIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidTaskIdExceptionUnmarshaller.Create;
end;

class function TInvalidTaskIdExceptionUnmarshaller.Instance: IInvalidTaskIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
