unit AWS.Textract.Transform.ProvisionedThroughputExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Textract.Model.ProvisionedThroughputExceededException, 
  AWS.Internal.ErrorResponse;

type
  IProvisionedThroughputExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EProvisionedThroughputExceededException, TJsonUnmarshallerContext>;
  
  TProvisionedThroughputExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EProvisionedThroughputExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IProvisionedThroughputExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EProvisionedThroughputExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EProvisionedThroughputExceededException; overload;
    class function Instance: IProvisionedThroughputExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TProvisionedThroughputExceededExceptionUnmarshaller }

function TProvisionedThroughputExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EProvisionedThroughputExceededException;
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

function TProvisionedThroughputExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EProvisionedThroughputExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EProvisionedThroughputExceededException;
begin
  UnmarshalledObject := EProvisionedThroughputExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TProvisionedThroughputExceededExceptionUnmarshaller.Create;
begin
  FInstance := TProvisionedThroughputExceededExceptionUnmarshaller.Create;
end;

class function TProvisionedThroughputExceededExceptionUnmarshaller.Instance: IProvisionedThroughputExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
