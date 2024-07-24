unit AWS.SSM.Transform.InvalidTargetMapsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidTargetMapsException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidTargetMapsExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidTargetMapsException, TJsonUnmarshallerContext>;
  
  TInvalidTargetMapsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidTargetMapsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidTargetMapsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTargetMapsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTargetMapsException; overload;
    class function Instance: IInvalidTargetMapsExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidTargetMapsExceptionUnmarshaller }

function TInvalidTargetMapsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidTargetMapsException;
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

function TInvalidTargetMapsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidTargetMapsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidTargetMapsException;
begin
  UnmarshalledObject := EInvalidTargetMapsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidTargetMapsExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidTargetMapsExceptionUnmarshaller.Create;
end;

class function TInvalidTargetMapsExceptionUnmarshaller.Instance: IInvalidTargetMapsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
