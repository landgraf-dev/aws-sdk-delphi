unit AWS.SSM.Transform.ServiceSettingNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ServiceSettingNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IServiceSettingNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EServiceSettingNotFoundException, TJsonUnmarshallerContext>;
  
  TServiceSettingNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EServiceSettingNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IServiceSettingNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EServiceSettingNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceSettingNotFoundException; overload;
    class function Instance: IServiceSettingNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TServiceSettingNotFoundExceptionUnmarshaller }

function TServiceSettingNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EServiceSettingNotFoundException;
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

function TServiceSettingNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EServiceSettingNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EServiceSettingNotFoundException;
begin
  UnmarshalledObject := EServiceSettingNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TServiceSettingNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TServiceSettingNotFoundExceptionUnmarshaller.Create;
end;

class function TServiceSettingNotFoundExceptionUnmarshaller.Instance: IServiceSettingNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
