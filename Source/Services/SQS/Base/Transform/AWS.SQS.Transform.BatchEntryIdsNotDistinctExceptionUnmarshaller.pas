unit AWS.SQS.Transform.BatchEntryIdsNotDistinctExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SQS.Model.BatchEntryIdsNotDistinctException, 
  AWS.Internal.ErrorResponse;

type
  IBatchEntryIdsNotDistinctExceptionUnmarshaller = IErrorResponseUnmarshaller<EBatchEntryIdsNotDistinctException, TXmlUnmarshallerContext>;
  
  TBatchEntryIdsNotDistinctExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EBatchEntryIdsNotDistinctException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBatchEntryIdsNotDistinctExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EBatchEntryIdsNotDistinctException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBatchEntryIdsNotDistinctException; overload;
    class function Instance: IBatchEntryIdsNotDistinctExceptionUnmarshaller; static;
  end;
  
implementation

{ TBatchEntryIdsNotDistinctExceptionUnmarshaller }

function TBatchEntryIdsNotDistinctExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EBatchEntryIdsNotDistinctException;
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

function TBatchEntryIdsNotDistinctExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EBatchEntryIdsNotDistinctException;
var
  OriginalDepth: Integer;
  Response: EBatchEntryIdsNotDistinctException;
begin
  Response := EBatchEntryIdsNotDistinctException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
      end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TBatchEntryIdsNotDistinctExceptionUnmarshaller.Create;
begin
  FInstance := TBatchEntryIdsNotDistinctExceptionUnmarshaller.Create;
end;

class function TBatchEntryIdsNotDistinctExceptionUnmarshaller.Instance: IBatchEntryIdsNotDistinctExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
