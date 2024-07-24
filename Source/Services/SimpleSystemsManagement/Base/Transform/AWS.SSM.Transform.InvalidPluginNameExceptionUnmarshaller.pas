unit AWS.SSM.Transform.InvalidPluginNameExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidPluginNameException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidPluginNameExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidPluginNameException, TJsonUnmarshallerContext>;
  
  TInvalidPluginNameExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidPluginNameException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidPluginNameExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPluginNameException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPluginNameException; overload;
    class function Instance: IInvalidPluginNameExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidPluginNameExceptionUnmarshaller }

function TInvalidPluginNameExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidPluginNameException;
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

function TInvalidPluginNameExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidPluginNameException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidPluginNameException;
begin
  UnmarshalledObject := EInvalidPluginNameException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidPluginNameExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidPluginNameExceptionUnmarshaller.Create;
end;

class function TInvalidPluginNameExceptionUnmarshaller.Instance: IInvalidPluginNameExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
