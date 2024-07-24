unit AWS.SSM.Transform.FeatureNotAvailableExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.FeatureNotAvailableException, 
  AWS.Internal.ErrorResponse;

type
  IFeatureNotAvailableExceptionUnmarshaller = IErrorResponseUnmarshaller<EFeatureNotAvailableException, TJsonUnmarshallerContext>;
  
  TFeatureNotAvailableExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EFeatureNotAvailableException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IFeatureNotAvailableExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EFeatureNotAvailableException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EFeatureNotAvailableException; overload;
    class function Instance: IFeatureNotAvailableExceptionUnmarshaller; static;
  end;
  
implementation

{ TFeatureNotAvailableExceptionUnmarshaller }

function TFeatureNotAvailableExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EFeatureNotAvailableException;
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

function TFeatureNotAvailableExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EFeatureNotAvailableException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EFeatureNotAvailableException;
begin
  UnmarshalledObject := EFeatureNotAvailableException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TFeatureNotAvailableExceptionUnmarshaller.Create;
begin
  FInstance := TFeatureNotAvailableExceptionUnmarshaller.Create;
end;

class function TFeatureNotAvailableExceptionUnmarshaller.Instance: IFeatureNotAvailableExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
