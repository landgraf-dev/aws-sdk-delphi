unit AWS.Rekognition.Transform.ResourceAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.ResourceAlreadyExistsException, 
  AWS.Internal.ErrorResponse;

type
  IResourceAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TResourceAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceAlreadyExistsException; overload;
    class function Instance: IResourceAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceAlreadyExistsExceptionUnmarshaller }

function TResourceAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceAlreadyExistsException;
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

function TResourceAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceAlreadyExistsException;
begin
  UnmarshalledObject := EResourceAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TResourceAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TResourceAlreadyExistsExceptionUnmarshaller.Instance: IResourceAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
