unit AWS.SNS.Transform.EmptyBatchRequestExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.EmptyBatchRequestException, 
  AWS.Internal.ErrorResponse;

type
  IEmptyBatchRequestExceptionUnmarshaller = IErrorResponseUnmarshaller<EEmptyBatchRequestException, TXmlUnmarshallerContext>;
  
  TEmptyBatchRequestExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EEmptyBatchRequestException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IEmptyBatchRequestExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EEmptyBatchRequestException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEmptyBatchRequestException; overload;
    class function Instance: IEmptyBatchRequestExceptionUnmarshaller; static;
  end;
  
implementation

{ TEmptyBatchRequestExceptionUnmarshaller }

function TEmptyBatchRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EEmptyBatchRequestException;
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

function TEmptyBatchRequestExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EEmptyBatchRequestException;
var
  OriginalDepth: Integer;
  Response: EEmptyBatchRequestException;
begin
  Response := EEmptyBatchRequestException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TEmptyBatchRequestExceptionUnmarshaller.Create;
begin
  FInstance := TEmptyBatchRequestExceptionUnmarshaller.Create;
end;

class function TEmptyBatchRequestExceptionUnmarshaller.Instance: IEmptyBatchRequestExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
