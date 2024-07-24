unit AWS.SSM.Transform.OpsMetadataInvalidArgumentExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsMetadataInvalidArgumentException, 
  AWS.Internal.ErrorResponse;

type
  IOpsMetadataInvalidArgumentExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsMetadataInvalidArgumentException, TJsonUnmarshallerContext>;
  
  TOpsMetadataInvalidArgumentExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsMetadataInvalidArgumentException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataInvalidArgumentExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataInvalidArgumentException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataInvalidArgumentException; overload;
    class function Instance: IOpsMetadataInvalidArgumentExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataInvalidArgumentExceptionUnmarshaller }

function TOpsMetadataInvalidArgumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataInvalidArgumentException;
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

function TOpsMetadataInvalidArgumentExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataInvalidArgumentException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsMetadataInvalidArgumentException;
begin
  UnmarshalledObject := EOpsMetadataInvalidArgumentException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsMetadataInvalidArgumentExceptionUnmarshaller.Create;
begin
  FInstance := TOpsMetadataInvalidArgumentExceptionUnmarshaller.Create;
end;

class function TOpsMetadataInvalidArgumentExceptionUnmarshaller.Instance: IOpsMetadataInvalidArgumentExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
