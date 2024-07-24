unit AWS.SSM.Transform.UnsupportedParameterTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedParameterTypeException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedParameterTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedParameterTypeException, TJsonUnmarshallerContext>;
  
  TUnsupportedParameterTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedParameterTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedParameterTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedParameterTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedParameterTypeException; overload;
    class function Instance: IUnsupportedParameterTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedParameterTypeExceptionUnmarshaller }

function TUnsupportedParameterTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedParameterTypeException;
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

function TUnsupportedParameterTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedParameterTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedParameterTypeException;
begin
  UnmarshalledObject := EUnsupportedParameterTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedParameterTypeExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedParameterTypeExceptionUnmarshaller.Create;
end;

class function TUnsupportedParameterTypeExceptionUnmarshaller.Instance: IUnsupportedParameterTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
