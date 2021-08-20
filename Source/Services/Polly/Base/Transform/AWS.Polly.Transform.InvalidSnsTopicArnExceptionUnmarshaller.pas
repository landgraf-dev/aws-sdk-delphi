unit AWS.Polly.Transform.InvalidSnsTopicArnExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidSnsTopicArnException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidSnsTopicArnExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidSnsTopicArnException, TJsonUnmarshallerContext>;
  
  TInvalidSnsTopicArnExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidSnsTopicArnException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidSnsTopicArnExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidSnsTopicArnException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSnsTopicArnException; overload;
    class function Instance: IInvalidSnsTopicArnExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidSnsTopicArnExceptionUnmarshaller }

function TInvalidSnsTopicArnExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidSnsTopicArnException;
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

function TInvalidSnsTopicArnExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSnsTopicArnException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidSnsTopicArnException;
begin
  UnmarshalledObject := EInvalidSnsTopicArnException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidSnsTopicArnExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidSnsTopicArnExceptionUnmarshaller.Create;
end;

class function TInvalidSnsTopicArnExceptionUnmarshaller.Instance: IInvalidSnsTopicArnExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
