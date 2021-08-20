unit AWS.SNS.Transform.KMSNotFoundExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.KMSNotFoundException, 
  AWS.Internal.ErrorResponse;

type
  IKMSNotFoundExceptionUnmarshaller = IErrorResponseUnmarshaller<EKMSNotFoundException, TXmlUnmarshallerContext>;
  
  TKMSNotFoundExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<EKMSNotFoundException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IKMSNotFoundExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): EKMSNotFoundException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSNotFoundException; overload;
    class function Instance: IKMSNotFoundExceptionUnmarshaller; static;
  end;
  
implementation

{ TKMSNotFoundExceptionUnmarshaller }

function TKMSNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): EKMSNotFoundException;
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

function TKMSNotFoundExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): EKMSNotFoundException;
var
  OriginalDepth: Integer;
  Response: EKMSNotFoundException;
begin
  Response := EKMSNotFoundException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
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

class constructor TKMSNotFoundExceptionUnmarshaller.Create;
begin
  FInstance := TKMSNotFoundExceptionUnmarshaller.Create;
end;

class function TKMSNotFoundExceptionUnmarshaller.Instance: IKMSNotFoundExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
