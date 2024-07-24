unit AWS.SSM.Transform.InvalidInstanceInformationFilterValueExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidInstanceInformationFilterValueException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidInstanceInformationFilterValueExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidInstanceInformationFilterValueException, TJsonUnmarshallerContext>;
  
  TInvalidInstanceInformationFilterValueExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidInstanceInformationFilterValueException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidInstanceInformationFilterValueExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInstanceInformationFilterValueException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInstanceInformationFilterValueException; overload;
    class function Instance: IInvalidInstanceInformationFilterValueExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidInstanceInformationFilterValueExceptionUnmarshaller }

function TInvalidInstanceInformationFilterValueExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInstanceInformationFilterValueException;
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

function TInvalidInstanceInformationFilterValueExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInstanceInformationFilterValueException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidInstanceInformationFilterValueException;
begin
  UnmarshalledObject := EInvalidInstanceInformationFilterValueException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidInstanceInformationFilterValueExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidInstanceInformationFilterValueExceptionUnmarshaller.Create;
end;

class function TInvalidInstanceInformationFilterValueExceptionUnmarshaller.Instance: IInvalidInstanceInformationFilterValueExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
