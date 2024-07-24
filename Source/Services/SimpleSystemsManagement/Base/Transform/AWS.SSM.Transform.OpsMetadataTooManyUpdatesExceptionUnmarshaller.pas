unit AWS.SSM.Transform.OpsMetadataTooManyUpdatesExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsMetadataTooManyUpdatesException, 
  AWS.Internal.ErrorResponse;

type
  IOpsMetadataTooManyUpdatesExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsMetadataTooManyUpdatesException, TJsonUnmarshallerContext>;
  
  TOpsMetadataTooManyUpdatesExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsMetadataTooManyUpdatesException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataTooManyUpdatesExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataTooManyUpdatesException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataTooManyUpdatesException; overload;
    class function Instance: IOpsMetadataTooManyUpdatesExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataTooManyUpdatesExceptionUnmarshaller }

function TOpsMetadataTooManyUpdatesExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataTooManyUpdatesException;
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

function TOpsMetadataTooManyUpdatesExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataTooManyUpdatesException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsMetadataTooManyUpdatesException;
begin
  UnmarshalledObject := EOpsMetadataTooManyUpdatesException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsMetadataTooManyUpdatesExceptionUnmarshaller.Create;
begin
  FInstance := TOpsMetadataTooManyUpdatesExceptionUnmarshaller.Create;
end;

class function TOpsMetadataTooManyUpdatesExceptionUnmarshaller.Instance: IOpsMetadataTooManyUpdatesExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
