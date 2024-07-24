unit AWS.SSM.Transform.UnsupportedCalendarExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.UnsupportedCalendarException, 
  AWS.Internal.ErrorResponse;

type
  IUnsupportedCalendarExceptionUnmarshaller = IErrorResponseUnmarshaller<EUnsupportedCalendarException, TJsonUnmarshallerContext>;
  
  TUnsupportedCalendarExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EUnsupportedCalendarException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IUnsupportedCalendarExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedCalendarException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedCalendarException; overload;
    class function Instance: IUnsupportedCalendarExceptionUnmarshaller; static;
  end;
  
implementation

{ TUnsupportedCalendarExceptionUnmarshaller }

function TUnsupportedCalendarExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EUnsupportedCalendarException;
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

function TUnsupportedCalendarExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EUnsupportedCalendarException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EUnsupportedCalendarException;
begin
  UnmarshalledObject := EUnsupportedCalendarException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TUnsupportedCalendarExceptionUnmarshaller.Create;
begin
  FInstance := TUnsupportedCalendarExceptionUnmarshaller.Create;
end;

class function TUnsupportedCalendarExceptionUnmarshaller.Instance: IUnsupportedCalendarExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
