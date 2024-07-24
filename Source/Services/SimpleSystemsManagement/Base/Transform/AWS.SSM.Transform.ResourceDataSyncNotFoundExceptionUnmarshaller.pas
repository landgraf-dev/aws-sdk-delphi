unit AWS.SSM.Transform.ResourceDataSyncNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ResourceDataSyncNotFoundException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IResourceDataSyncNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceDataSyncNotFoundException, TJsonUnmarshallerContext>;
  
  TResourceDataSyncNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceDataSyncNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncNotFoundException; overload;
    class function Instance: IResourceDataSyncNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncNotFoundExceptionUnmarshaller }

function TResourceDataSyncNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncNotFoundException;
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

function TResourceDataSyncNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceDataSyncNotFoundException;
begin
  UnmarshalledObject := EResourceDataSyncNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    AContext.Read;
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('SyncName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SyncType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SyncType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TResourceDataSyncNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TResourceDataSyncNotFoundExceptionUnmarshaller.Create;
end;

class function TResourceDataSyncNotFoundExceptionUnmarshaller.Instance: IResourceDataSyncNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
