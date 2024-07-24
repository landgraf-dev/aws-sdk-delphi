unit AWS.SSM.Transform.ResourceDataSyncCountExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ResourceDataSyncCountExceededException, 
  AWS.Internal.ErrorResponse;

type
  IResourceDataSyncCountExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceDataSyncCountExceededException, TJsonUnmarshallerContext>;
  
  TResourceDataSyncCountExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceDataSyncCountExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncCountExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncCountExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncCountExceededException; overload;
    class function Instance: IResourceDataSyncCountExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncCountExceededExceptionUnmarshaller }

function TResourceDataSyncCountExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncCountExceededException;
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

function TResourceDataSyncCountExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncCountExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceDataSyncCountExceededException;
begin
  UnmarshalledObject := EResourceDataSyncCountExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceDataSyncCountExceededExceptionUnmarshaller.Create;
begin
  FInstance := TResourceDataSyncCountExceededExceptionUnmarshaller.Create;
end;

class function TResourceDataSyncCountExceededExceptionUnmarshaller.Instance: IResourceDataSyncCountExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
