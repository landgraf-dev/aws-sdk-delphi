unit AWS.SSM.Transform.InvalidOutputFolderExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidOutputFolderException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidOutputFolderExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidOutputFolderException, TJsonUnmarshallerContext>;
  
  TInvalidOutputFolderExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidOutputFolderException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidOutputFolderExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidOutputFolderException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidOutputFolderException; overload;
    class function Instance: IInvalidOutputFolderExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidOutputFolderExceptionUnmarshaller }

function TInvalidOutputFolderExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidOutputFolderException;
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

function TInvalidOutputFolderExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidOutputFolderException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidOutputFolderException;
begin
  UnmarshalledObject := EInvalidOutputFolderException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidOutputFolderExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidOutputFolderExceptionUnmarshaller.Create;
end;

class function TInvalidOutputFolderExceptionUnmarshaller.Instance: IInvalidOutputFolderExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
