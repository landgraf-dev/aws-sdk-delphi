unit AWS.Textract.Transform.AccessDeniedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.AccessDeniedException, 
  AWS.Internal.ErrorResponse;

type
  IAccessDeniedExceptionUnmarshaller = IErrorResponseUnmarshaller<EAccessDeniedException, TJsonUnmarshallerContext>;
  
  TAccessDeniedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EAccessDeniedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IAccessDeniedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EAccessDeniedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAccessDeniedException; overload;
    class function Instance: IAccessDeniedExceptionUnmarshaller; static;
  end;
  
implementation

{ TAccessDeniedExceptionUnmarshaller }

function TAccessDeniedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EAccessDeniedException;
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

function TAccessDeniedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EAccessDeniedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EAccessDeniedException;
begin
  UnmarshalledObject := EAccessDeniedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TAccessDeniedExceptionUnmarshaller.Create;
begin
  FInstance := TAccessDeniedExceptionUnmarshaller.Create;
end;

class function TAccessDeniedExceptionUnmarshaller.Instance: IAccessDeniedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
