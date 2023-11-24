unit AWS.S3.Transform.WriteGetObjectResponseResponseUnmarshaller;

interface

uses
  AWS.S3.Model.WriteGetObjectResponseResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Exception;

type
  IWriteGetObjectResponseResponseUnmarshaller = IResponseUnmarshaller;
  
  TWriteGetObjectResponseResponseUnmarshaller = class(TXmlResponseUnmarshaller, IWriteGetObjectResponseResponseUnmarshaller)
  strict private
    class var FInstance: IWriteGetObjectResponseResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IWriteGetObjectResponseResponseUnmarshaller; static;
  end;
  
implementation

{ TWriteGetObjectResponseResponseUnmarshaller }

function TWriteGetObjectResponseResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TWriteGetObjectResponseResponse;
begin
  Response := TWriteGetObjectResponseResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TWriteGetObjectResponseResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonS3Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TWriteGetObjectResponseResponseUnmarshaller.Create;
begin
  FInstance := TWriteGetObjectResponseResponseUnmarshaller.Create;
end;

class function TWriteGetObjectResponseResponseUnmarshaller.Instance: IWriteGetObjectResponseResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
