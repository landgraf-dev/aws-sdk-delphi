unit AWS.SSM.Transform.ResourceDataSyncInvalidConfigurationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ResourceDataSyncInvalidConfigurationException, 
  AWS.Internal.ErrorResponse;

type
  IResourceDataSyncInvalidConfigurationExceptionUnmarshaller = IErrorResponseUnmarshaller<EResourceDataSyncInvalidConfigurationException, TJsonUnmarshallerContext>;
  
  TResourceDataSyncInvalidConfigurationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EResourceDataSyncInvalidConfigurationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IResourceDataSyncInvalidConfigurationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncInvalidConfigurationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncInvalidConfigurationException; overload;
    class function Instance: IResourceDataSyncInvalidConfigurationExceptionUnmarshaller; static;
  end;
  
implementation

{ TResourceDataSyncInvalidConfigurationExceptionUnmarshaller }

function TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EResourceDataSyncInvalidConfigurationException;
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

function TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EResourceDataSyncInvalidConfigurationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EResourceDataSyncInvalidConfigurationException;
begin
  UnmarshalledObject := EResourceDataSyncInvalidConfigurationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Create;
begin
  FInstance := TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Create;
end;

class function TResourceDataSyncInvalidConfigurationExceptionUnmarshaller.Instance: IResourceDataSyncInvalidConfigurationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
