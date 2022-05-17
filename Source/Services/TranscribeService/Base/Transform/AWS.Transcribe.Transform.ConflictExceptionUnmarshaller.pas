unit AWS.Transcribe.Transform.ConflictExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transcribe.Model.ConflictException, 
  AWS.Internal.ErrorResponse;

type
  IConflictExceptionUnmarshaller = IErrorResponseUnmarshaller<EConflictException, TJsonUnmarshallerContext>;
  
  TConflictExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EConflictException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IConflictExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EConflictException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EConflictException; overload;
    class function Instance: IConflictExceptionUnmarshaller; static;
  end;
  
implementation

{ TConflictExceptionUnmarshaller }

function TConflictExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EConflictException;
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

function TConflictExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EConflictException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EConflictException;
begin
  UnmarshalledObject := EConflictException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TConflictExceptionUnmarshaller.Create;
begin
  FInstance := TConflictExceptionUnmarshaller.Create;
end;

class function TConflictExceptionUnmarshaller.Instance: IConflictExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
