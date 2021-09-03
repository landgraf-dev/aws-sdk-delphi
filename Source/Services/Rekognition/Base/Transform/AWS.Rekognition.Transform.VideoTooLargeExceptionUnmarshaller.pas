unit AWS.Rekognition.Transform.VideoTooLargeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.VideoTooLargeException, 
  AWS.Internal.ErrorResponse;

type
  IVideoTooLargeExceptionUnmarshaller = IErrorResponseUnmarshaller<EVideoTooLargeException, TJsonUnmarshallerContext>;
  
  TVideoTooLargeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EVideoTooLargeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IVideoTooLargeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EVideoTooLargeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EVideoTooLargeException; overload;
    class function Instance: IVideoTooLargeExceptionUnmarshaller; static;
  end;
  
implementation

{ TVideoTooLargeExceptionUnmarshaller }

function TVideoTooLargeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EVideoTooLargeException;
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

function TVideoTooLargeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EVideoTooLargeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EVideoTooLargeException;
begin
  UnmarshalledObject := EVideoTooLargeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TVideoTooLargeExceptionUnmarshaller.Create;
begin
  FInstance := TVideoTooLargeExceptionUnmarshaller.Create;
end;

class function TVideoTooLargeExceptionUnmarshaller.Instance: IVideoTooLargeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
