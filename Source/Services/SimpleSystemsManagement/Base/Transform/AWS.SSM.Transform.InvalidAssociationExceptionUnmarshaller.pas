unit AWS.SSM.Transform.InvalidAssociationExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidAssociationException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidAssociationExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidAssociationException, TJsonUnmarshallerContext>;
  
  TInvalidAssociationExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidAssociationException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidAssociationExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAssociationException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAssociationException; overload;
    class function Instance: IInvalidAssociationExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidAssociationExceptionUnmarshaller }

function TInvalidAssociationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidAssociationException;
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

function TInvalidAssociationExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidAssociationException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidAssociationException;
begin
  UnmarshalledObject := EInvalidAssociationException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidAssociationExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidAssociationExceptionUnmarshaller.Create;
end;

class function TInvalidAssociationExceptionUnmarshaller.Instance: IInvalidAssociationExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
