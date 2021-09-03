unit AWS.Rekognition.Transform.ResourceNotReadyExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Rekognition.Model.ResourceNotReadyException, 
  AWS.Internal.ErrorResponse;

type
  IResourceNotReadyExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceNotReadyException, TJsonUnmarshallerContext>;
  
  TResourceNotReadyExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceNotReadyException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceNotReadyExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceNotReadyException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceNotReadyException; overload;
    class function Instance: IResourceNotReadyExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceNotReadyExceptionUnmarshaller }

function TResourceNotReadyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceNotReadyException;
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

function TResourceNotReadyExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceNotReadyException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceNotReadyException;
begin
  UnmarshalledObject := EResourceNotReadyException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceNotReadyExceptionUnmarshaller.Create;
begin
  FInstance := TResourceNotReadyExceptionUnmarshaller.Create;
end;

class function TResourceNotReadyExceptionUnmarshaller.Instance: IResourceNotReadyExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
