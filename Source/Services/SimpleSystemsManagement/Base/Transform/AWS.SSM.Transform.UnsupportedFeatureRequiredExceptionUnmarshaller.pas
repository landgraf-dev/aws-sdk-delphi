unit AWS.SSM.Transform.UnsupportedFeatureRequiredExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedFeatureRequiredException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedFeatureRequiredExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedFeatureRequiredException, TJsonUnmarshallerContext>;
  
  TUnsupportedFeatureRequiredExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedFeatureRequiredException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedFeatureRequiredExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedFeatureRequiredException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedFeatureRequiredException; overload;
    class function Instance: IUnsupportedFeatureRequiredExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedFeatureRequiredExceptionUnmarshaller }

function TUnsupportedFeatureRequiredExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedFeatureRequiredException;
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

function TUnsupportedFeatureRequiredExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedFeatureRequiredException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedFeatureRequiredException;
begin
  UnmarshalledObject := EUnsupportedFeatureRequiredException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedFeatureRequiredExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedFeatureRequiredExceptionUnmarshaller.Create;
end;

class function TUnsupportedFeatureRequiredExceptionUnmarshaller.Instance: IUnsupportedFeatureRequiredExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
