unit AWS.SSM.Transform.ResourceDataSyncConflictExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ResourceDataSyncConflictException, 
  AWS.Internal.ErrorResponse;

type
  IResourceDataSyncConflictExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceDataSyncConflictException, TJsonUnmarshallerContext>;
  
  TResourceDataSyncConflictExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceDataSyncConflictException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncConflictExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncConflictException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncConflictException; overload;
    class function Instance: IResourceDataSyncConflictExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncConflictExceptionUnmarshaller }

function TResourceDataSyncConflictExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncConflictException;
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

function TResourceDataSyncConflictExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncConflictException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceDataSyncConflictException;
begin
  UnmarshalledObject := EResourceDataSyncConflictException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceDataSyncConflictExceptionUnmarshaller.Create;
begin
  FInstance := TResourceDataSyncConflictExceptionUnmarshaller.Create;
end;

class function TResourceDataSyncConflictExceptionUnmarshaller.Instance: IResourceDataSyncConflictExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
