unit AWS.Rekognition.Transform.ImageTooLargeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.ImageTooLargeException, 
  AWS.Internal.ErrorResponse;

type
  IImageTooLargeExceptionUnmarshaller = IErrorResponseUnmarshaller<EImageTooLargeException, TJsonUnmarshallerContext>;
  
  TImageTooLargeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EImageTooLargeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IImageTooLargeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EImageTooLargeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EImageTooLargeException; overload;
    class function Instance: IImageTooLargeExceptionUnmarshaller; static;
  end;
  
implementation

{ TImageTooLargeExceptionUnmarshaller }

function TImageTooLargeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EImageTooLargeException;
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

function TImageTooLargeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EImageTooLargeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EImageTooLargeException;
begin
  UnmarshalledObject := EImageTooLargeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TImageTooLargeExceptionUnmarshaller.Create;
begin
  FInstance := TImageTooLargeExceptionUnmarshaller.Create;
end;

class function TImageTooLargeExceptionUnmarshaller.Instance: IImageTooLargeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
