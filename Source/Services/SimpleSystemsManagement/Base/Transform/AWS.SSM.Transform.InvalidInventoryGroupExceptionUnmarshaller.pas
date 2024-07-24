unit AWS.SSM.Transform.InvalidInventoryGroupExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.InvalidInventoryGroupException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidInventoryGroupExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidInventoryGroupException, TJsonUnmarshallerContext>;
  
  TInvalidInventoryGroupExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidInventoryGroupException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidInventoryGroupExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInventoryGroupException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInventoryGroupException; overload;
    class function Instance: IInvalidInventoryGroupExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidInventoryGroupExceptionUnmarshaller }

function TInvalidInventoryGroupExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EInvalidInventoryGroupException;
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

function TInvalidInventoryGroupExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidInventoryGroupException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EInvalidInventoryGroupException;
begin
  UnmarshalledObject := EInvalidInventoryGroupException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidInventoryGroupExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidInventoryGroupExceptionUnmarshaller.Create;
end;

class function TInvalidInventoryGroupExceptionUnmarshaller.Instance: IInvalidInventoryGroupExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
