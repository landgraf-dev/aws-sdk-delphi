unit AWS.Rekognition.Transform.ResourceInUseExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.ResourceInUseException, 
  AWS.Internal.ErrorResponse;

type
  IResourceInUseExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceInUseException, TJsonUnmarshallerContext>;
  
  TResourceInUseExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceInUseException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceInUseExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceInUseException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceInUseException; overload;
    class function Instance: IResourceInUseExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceInUseExceptionUnmarshaller }

function TResourceInUseExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceInUseException;
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

function TResourceInUseExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceInUseException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceInUseException;
begin
  UnmarshalledObject := EResourceInUseException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceInUseExceptionUnmarshaller.Create;
begin
  FInstance := TResourceInUseExceptionUnmarshaller.Create;
end;

class function TResourceInUseExceptionUnmarshaller.Instance: IResourceInUseExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
