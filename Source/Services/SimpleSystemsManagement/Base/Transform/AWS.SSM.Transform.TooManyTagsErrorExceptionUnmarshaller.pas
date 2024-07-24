unit AWS.SSM.Transform.TooManyTagsErrorExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.TooManyTagsErrorException, 
  AWS.Internal.ErrorResponse;

type
  ITooManyTagsErrorExceptionUnmarshaller = IErrorResponseUnmarshaller<ETooManyTagsErrorException, TJsonUnmarshallerContext>;
  
  TTooManyTagsErrorExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETooManyTagsErrorException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ITooManyTagsErrorExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): ETooManyTagsErrorException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyTagsErrorException; overload;
    class function Instance: ITooManyTagsErrorExceptionUnmarshaller; static;
  end;
  
implementation

{ TTooManyTagsErrorExceptionUnmarshaller }

function TTooManyTagsErrorExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): ETooManyTagsErrorException;
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

function TTooManyTagsErrorExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): ETooManyTagsErrorException;
var
  TargetDepth: Integer;
  UnmarshalledObject: ETooManyTagsErrorException;
begin
  UnmarshalledObject := ETooManyTagsErrorException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TTooManyTagsErrorExceptionUnmarshaller.Create;
begin
  FInstance := TTooManyTagsErrorExceptionUnmarshaller.Create;
end;

class function TTooManyTagsErrorExceptionUnmarshaller.Instance: ITooManyTagsErrorExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
