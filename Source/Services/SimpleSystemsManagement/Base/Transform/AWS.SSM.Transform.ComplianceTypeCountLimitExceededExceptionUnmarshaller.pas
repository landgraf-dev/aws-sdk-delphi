unit AWS.SSM.Transform.ComplianceTypeCountLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.SSM.Model.ComplianceTypeCountLimitExceededException, 
  AWS.Internal.ErrorResponse;

type
  IComplianceTypeCountLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<EComplianceTypeCountLimitExceededException, TJsonUnmarshallerContext>;
  
  TComplianceTypeCountLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EComplianceTypeCountLimitExceededException, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: IComplianceTypeCountLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): EComplianceTypeCountLimitExceededException; overload;
    function Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EComplianceTypeCountLimitExceededException; overload;
    class function Instance: IComplianceTypeCountLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TComplianceTypeCountLimitExceededExceptionUnmarshaller }

function TComplianceTypeCountLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): EComplianceTypeCountLimitExceededException;
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

function TComplianceTypeCountLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext; AErrorResponse: TErrorResponse): EComplianceTypeCountLimitExceededException;
var
  TargetDepth: Integer;
  UnmarshalledObject: EComplianceTypeCountLimitExceededException;
begin
  UnmarshalledObject := EComplianceTypeCountLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TComplianceTypeCountLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TComplianceTypeCountLimitExceededExceptionUnmarshaller.Create;
end;

class function TComplianceTypeCountLimitExceededExceptionUnmarshaller.Instance: IComplianceTypeCountLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
