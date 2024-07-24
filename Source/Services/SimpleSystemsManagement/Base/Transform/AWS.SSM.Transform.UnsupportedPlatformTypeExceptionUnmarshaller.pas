unit AWS.SSM.Transform.UnsupportedPlatformTypeExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedPlatformTypeException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedPlatformTypeExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedPlatformTypeException, TJsonUnmarshallerContext>;
  
  TUnsupportedPlatformTypeExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedPlatformTypeException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedPlatformTypeExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedPlatformTypeException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedPlatformTypeException; overload;
    class function Instance: IUnsupportedPlatformTypeExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedPlatformTypeExceptionUnmarshaller }

function TUnsupportedPlatformTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedPlatformTypeException;
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

function TUnsupportedPlatformTypeExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedPlatformTypeException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedPlatformTypeException;
begin
  UnmarshalledObject := EUnsupportedPlatformTypeException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedPlatformTypeExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedPlatformTypeExceptionUnmarshaller.Create;
end;

class function TUnsupportedPlatformTypeExceptionUnmarshaller.Instance: IUnsupportedPlatformTypeExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
