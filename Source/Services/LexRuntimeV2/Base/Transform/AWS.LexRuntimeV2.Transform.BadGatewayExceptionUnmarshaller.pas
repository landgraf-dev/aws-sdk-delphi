unit AWS.LexRuntimeV2.Transform.BadGatewayExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.LexRuntimeV2.Model.BadGatewayException, 
  AWS.Internal.ErrorResponse;

type
  IBadGatewayExceptionUnmarshaller = IErrorResponseUnmarshaller<EBadGatewayException, TJsonUnmarshallerContext>;
  
  TBadGatewayExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBadGatewayException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IBadGatewayExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EBadGatewayException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EBadGatewayException; overload;
    class function Instance: IBadGatewayExceptionUnmarshaller; static;
  end;
  
implementation

{ TBadGatewayExceptionUnmarshaller }

function TBadGatewayExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EBadGatewayException;
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

function TBadGatewayExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EBadGatewayException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EBadGatewayException;
begin
  UnmarshalledObject := EBadGatewayException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TBadGatewayExceptionUnmarshaller.Create;
begin
  FInstance := TBadGatewayExceptionUnmarshaller.Create;
end;

class function TBadGatewayExceptionUnmarshaller.Instance: IBadGatewayExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
