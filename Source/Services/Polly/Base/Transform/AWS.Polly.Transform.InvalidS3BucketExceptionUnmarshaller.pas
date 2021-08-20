unit AWS.Polly.Transform.InvalidS3BucketExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidS3BucketException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidS3BucketExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidS3BucketException, TJsonUnmarshallerContext>;
  
  TInvalidS3BucketExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidS3BucketException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidS3BucketExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidS3BucketException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3BucketException; overload;
    class function Instance: IInvalidS3BucketExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidS3BucketExceptionUnmarshaller }

function TInvalidS3BucketExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidS3BucketException;
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

function TInvalidS3BucketExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidS3BucketException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidS3BucketException;
begin
  UnmarshalledObject := EInvalidS3BucketException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidS3BucketExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidS3BucketExceptionUnmarshaller.Create;
end;

class function TInvalidS3BucketExceptionUnmarshaller.Instance: IInvalidS3BucketExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
