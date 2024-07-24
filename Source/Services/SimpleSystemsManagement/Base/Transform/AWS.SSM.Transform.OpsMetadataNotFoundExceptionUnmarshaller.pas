unit AWS.SSM.Transform.OpsMetadataNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsMetadataNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IOpsMetadataNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsMetadataNotFoundException, TJsonUnmarshallerContext>;
  
  TOpsMetadataNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsMetadataNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsMetadataNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataNotFoundException; overload;
    class function Instance: IOpsMetadataNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsMetadataNotFoundExceptionUnmarshaller }

function TOpsMetadataNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsMetadataNotFoundException;
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

function TOpsMetadataNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsMetadataNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsMetadataNotFoundException;
begin
  UnmarshalledObject := EOpsMetadataNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsMetadataNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TOpsMetadataNotFoundExceptionUnmarshaller.Create;
end;

class function TOpsMetadataNotFoundExceptionUnmarshaller.Instance: IOpsMetadataNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
