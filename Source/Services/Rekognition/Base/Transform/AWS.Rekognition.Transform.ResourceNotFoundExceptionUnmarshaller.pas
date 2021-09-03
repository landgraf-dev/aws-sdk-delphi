unit AWS.Rekognition.Transform.ResourceNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.ResourceNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IResourceNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceNotFoundException, TJsonUnmarshallerContext>;
  
  TResourceNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceNotFoundException; overload;
    class function Instance: IResourceNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceNotFoundExceptionUnmarshaller }

function TResourceNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceNotFoundException;
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

function TResourceNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceNotFoundException;
begin
  UnmarshalledObject := EResourceNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TResourceNotFoundExceptionUnmarshaller.Create;
end;

class function TResourceNotFoundExceptionUnmarshaller.Instance: IResourceNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
