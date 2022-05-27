unit AWS.SNS.Transform.InvalidBatchEntryIdExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.InvalidBatchEntryIdException, 
  AWS.Internal.ErrorResponse;

type
  IInvalidBatchEntryIdExceptionUnmarshaller = IErrorResponseUnmarshaller<EInvalidBatchEntryIdException, TXmlUnmarshallerContext>;
  
  TInvalidBatchEntryIdExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EInvalidBatchEntryIdException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInvalidBatchEntryIdExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidBatchEntryIdException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidBatchEntryIdException; overload;
    class function Instance: IInvalidBatchEntryIdExceptionUnmarshaller; static;
  end;
  
implementation

{ TInvalidBatchEntryIdExceptionUnmarshaller }

function TInvalidBatchEntryIdExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EInvalidBatchEntryIdException;
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

function TInvalidBatchEntryIdExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EInvalidBatchEntryIdException;
var
  OriginalDepth: Integer;
  Response: EInvalidBatchEntryIdException;
begin
  Response := EInvalidBatchEntryIdException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TInvalidBatchEntryIdExceptionUnmarshaller.Create;
begin
  FInstance := TInvalidBatchEntryIdExceptionUnmarshaller.Create;
end;

class function TInvalidBatchEntryIdExceptionUnmarshaller.Instance: IInvalidBatchEntryIdExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
