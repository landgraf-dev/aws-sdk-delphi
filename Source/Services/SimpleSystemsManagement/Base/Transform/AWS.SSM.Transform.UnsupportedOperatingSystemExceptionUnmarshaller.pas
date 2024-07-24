unit AWS.SSM.Transform.UnsupportedOperatingSystemExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedOperatingSystemException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedOperatingSystemExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedOperatingSystemException, TJsonUnmarshallerContext>;
  
  TUnsupportedOperatingSystemExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedOperatingSystemException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedOperatingSystemExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedOperatingSystemException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedOperatingSystemException; overload;
    class function Instance: IUnsupportedOperatingSystemExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedOperatingSystemExceptionUnmarshaller }

function TUnsupportedOperatingSystemExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedOperatingSystemException;
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

function TUnsupportedOperatingSystemExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedOperatingSystemException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedOperatingSystemException;
begin
  UnmarshalledObject := EUnsupportedOperatingSystemException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedOperatingSystemExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedOperatingSystemExceptionUnmarshaller.Create;
end;

class function TUnsupportedOperatingSystemExceptionUnmarshaller.Instance: IUnsupportedOperatingSystemExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
