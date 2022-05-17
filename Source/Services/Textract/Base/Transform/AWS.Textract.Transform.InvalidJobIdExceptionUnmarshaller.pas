unit AWS.Textract.Transform.InvalidJobIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.InvalidJobIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidJobIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidJobIdException, TJsonUnmarshallerContext>;
  
  TInvalidJobIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidJobIdException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidJobIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidJobIdException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidJobIdException; overload;
    class function Instance: IInvalidJobIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidJobIdExceptionUnmarshaller }

function TInvalidJobIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidJobIdException;
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

function TInvalidJobIdExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidJobIdException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidJobIdException;
begin
  UnmarshalledObject := EInvalidJobIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidJobIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidJobIdExceptionUnmarshaller.Create;
end;

class function TInvalidJobIdExceptionUnmarshaller.Instance: IInvalidJobIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
