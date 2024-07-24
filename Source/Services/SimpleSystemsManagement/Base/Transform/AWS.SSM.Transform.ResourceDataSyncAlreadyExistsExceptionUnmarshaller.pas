unit AWS.SSM.Transform.ResourceDataSyncAlreadyExistsExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ResourceDataSyncAlreadyExistsException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResourceDataSyncAlreadyExistsExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceDataSyncAlreadyExistsException, TJsonUnmarshallerContext>;
  
  TResourceDataSyncAlreadyExistsExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceDataSyncAlreadyExistsException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncAlreadyExistsExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncAlreadyExistsException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncAlreadyExistsException; overload;
    class function Instance: IResourceDataSyncAlreadyExistsExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncAlreadyExistsExceptionUnmarshaller }

function TResourceDataSyncAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncAlreadyExistsException;
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

function TResourceDataSyncAlreadyExistsExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncAlreadyExistsException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceDataSyncAlreadyExistsException;
begin
  UnmarshalledObject := EResourceDataSyncAlreadyExistsException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('SyncName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncAlreadyExistsExceptionUnmarshaller.Create;
begin
  FInstance := TResourceDataSyncAlreadyExistsExceptionUnmarshaller.Create;
end;

class function TResourceDataSyncAlreadyExistsExceptionUnmarshaller.Instance: IResourceDataSyncAlreadyExistsExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
