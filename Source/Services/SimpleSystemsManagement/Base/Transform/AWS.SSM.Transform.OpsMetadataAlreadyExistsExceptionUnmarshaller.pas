unit AWS.SSM.Transform.OpsMetadataAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsMetadataAlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IOpsMetadataAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsMetadataAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TOpsMetadataAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsMetadataAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataAlreadyExistsException; overload;
    class function Instance: IOpsMetadataAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataAlreadyExistsExceptionUnmarshaller }

function TOpsMetadataAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataAlreadyExistsException;
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

function TOpsMetadataAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsMetadataAlreadyExistsException;
begin
  UnmarshalledObject := EOpsMetadataAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsMetadataAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TOpsMetadataAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TOpsMetadataAlreadyExistsExceptionUnmarshaller.Instance: IOpsMetadataAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
