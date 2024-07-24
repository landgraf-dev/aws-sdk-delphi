unit AWS.SSM.Transform.StatusUnchangedExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.StatusUnchangedException, 
  AWS.Internal.ErrorResponse;

type
  IStatusUnchangedExceptionUnmarshaller = IErrorResponseUnmarshaller<EStatusUnchangedException, TJsonUnmarshallerContext>;
  
  TStatusUnchangedExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EStatusUnchangedException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IStatusUnchangedExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EStatusUnchangedException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EStatusUnchangedException; overload;
    class function Instance: IStatusUnchangedExceptionUnmarshaller; static;
  end;
  
implementation

{ TStatusUnchangedExceptionUnmarshaller }

function TStatusUnchangedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EStatusUnchangedException;
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

function TStatusUnchangedExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EStatusUnchangedException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EStatusUnchangedException;
begin
  UnmarshalledObject := EStatusUnchangedException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TStatusUnchangedExceptionUnmarshaller.Create;
begin
  FInstance := TStatusUnchangedExceptionUnmarshaller.Create;
end;

class function TStatusUnchangedExceptionUnmarshaller.Instance: IStatusUnchangedExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
