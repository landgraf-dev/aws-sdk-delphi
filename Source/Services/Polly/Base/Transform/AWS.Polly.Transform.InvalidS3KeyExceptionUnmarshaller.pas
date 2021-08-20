unit AWS.Polly.Transform.InvalidS3KeyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidS3KeyException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidS3KeyExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidS3KeyException, TJsonUnmarshallerContext>;
  
  TInvalidS3KeyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidS3KeyException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidS3KeyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidS3KeyException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3KeyException; overload;
    class function Instance: IInvalidS3KeyExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidS3KeyExceptionUnmarshaller }

function TInvalidS3KeyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidS3KeyException;
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

function TInvalidS3KeyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3KeyException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidS3KeyException;
begin
  UnmarshalledObject := EInvalidS3KeyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidS3KeyExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidS3KeyExceptionUnmarshaller.Create;
end;

class function TInvalidS3KeyExceptionUnmarshaller.Instance: IInvalidS3KeyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
