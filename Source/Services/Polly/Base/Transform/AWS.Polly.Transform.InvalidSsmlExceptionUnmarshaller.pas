unit AWS.Polly.Transform.InvalidSsmlExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Polly.Model.InvalidSsmlException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidSsmlExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidSsmlException, TJsonUnmarshallerContext>;
  
  TInvalidSsmlExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidSsmlException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidSsmlExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidSsmlException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSsmlException; overload;
    class function Instance: IInvalidSsmlExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidSsmlExceptionUnmarshaller }

function TInvalidSsmlExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidSsmlException;
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

function TInvalidSsmlExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidSsmlException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidSsmlException;
begin
  UnmarshalledObject := EInvalidSsmlException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidSsmlExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidSsmlExceptionUnmarshaller.Create;
end;

class function TInvalidSsmlExceptionUnmarshaller.Instance: IInvalidSsmlExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
