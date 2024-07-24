unit AWS.SSM.Transform.InvalidAssociationVersionExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAssociationVersionException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAssociationVersionExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAssociationVersionException, TJsonUnmarshallerContext>;
  
  TInvalidAssociationVersionExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAssociationVersionException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAssociationVersionExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAssociationVersionException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAssociationVersionException; overload;
    class function Instance: IInvalidAssociationVersionExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAssociationVersionExceptionUnmarshaller }

function TInvalidAssociationVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAssociationVersionException;
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

function TInvalidAssociationVersionExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAssociationVersionException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAssociationVersionException;
begin
  UnmarshalledObject := EInvalidAssociationVersionException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAssociationVersionExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAssociationVersionExceptionUnmarshaller.Create;
end;

class function TInvalidAssociationVersionExceptionUnmarshaller.Instance: IInvalidAssociationVersionExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
