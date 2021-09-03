unit AWS.Rekognition.Transform.InvalidS3ObjectExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.InvalidS3ObjectException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidS3ObjectExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidS3ObjectException, TJsonUnmarshallerContext>;
  
  TInvalidS3ObjectExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidS3ObjectException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidS3ObjectExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidS3ObjectException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3ObjectException; overload;
    class function Instance: IInvalidS3ObjectExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidS3ObjectExceptionUnmarshaller }

function TInvalidS3ObjectExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidS3ObjectException;
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

function TInvalidS3ObjectExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3ObjectException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidS3ObjectException;
begin
  UnmarshalledObject := EInvalidS3ObjectException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidS3ObjectExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidS3ObjectExceptionUnmarshaller.Create;
end;

class function TInvalidS3ObjectExceptionUnmarshaller.Instance: IInvalidS3ObjectExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
