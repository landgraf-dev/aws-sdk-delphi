unit AWS.SSM.Transform.OpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.OpsItemRelatedItemAssociationNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EOpsItemRelatedItemAssociationNotFoundException, TJsonUnmarshallerContext>;
  
  TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EOpsItemRelatedItemAssociationNotFoundException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemRelatedItemAssociationNotFoundException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemRelatedItemAssociationNotFoundException; overload;
    class function Instance: IOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller }

function TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EOpsItemRelatedItemAssociationNotFoundException;
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

function TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EOpsItemRelatedItemAssociationNotFoundException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EOpsItemRelatedItemAssociationNotFoundException;
begin
  UnmarshalledObject := EOpsItemRelatedItemAssociationNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller.Create;
end;

class function TOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller.Instance: IOpsItemRelatedItemAssociationNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
