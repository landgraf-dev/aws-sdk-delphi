unit AWS.Rekognition.Transform.InvalidImageFormatExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.InvalidImageFormatException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidImageFormatExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidImageFormatException, TJsonUnmarshallerContext>;
  
  TInvalidImageFormatExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidImageFormatException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidImageFormatExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidImageFormatException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidImageFormatException; overload;
    class function Instance: IInvalidImageFormatExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidImageFormatExceptionUnmarshaller }

function TInvalidImageFormatExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidImageFormatException;
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

function TInvalidImageFormatExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidImageFormatException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidImageFormatException;
begin
  UnmarshalledObject := EInvalidImageFormatException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidImageFormatExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidImageFormatExceptionUnmarshaller.Create;
end;

class function TInvalidImageFormatExceptionUnmarshaller.Instance: IInvalidImageFormatExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
