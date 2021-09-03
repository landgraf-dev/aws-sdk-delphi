unit AWS.Rekognition.Transform.InvalidPaginationTokenExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.InvalidPaginationTokenException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidPaginationTokenExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidPaginationTokenException, TJsonUnmarshallerContext>;
  
  TInvalidPaginationTokenExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidPaginationTokenException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidPaginationTokenExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPaginationTokenException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPaginationTokenException; overload;
    class function Instance: IInvalidPaginationTokenExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidPaginationTokenExceptionUnmarshaller }

function TInvalidPaginationTokenExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPaginationTokenException;
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

function TInvalidPaginationTokenExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPaginationTokenException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidPaginationTokenException;
begin
  UnmarshalledObject := EInvalidPaginationTokenException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidPaginationTokenExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidPaginationTokenExceptionUnmarshaller.Create;
end;

class function TInvalidPaginationTokenExceptionUnmarshaller.Instance: IInvalidPaginationTokenExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
