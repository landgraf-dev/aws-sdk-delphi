unit AWS.S3Control.Transform.DeleteAccessPointForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IDeleteAccessPointForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TDeleteAccessPointForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IDeleteAccessPointForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IDeleteAccessPointForObjectLambdaResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IDeleteAccessPointForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TDeleteAccessPointForObjectLambdaResponseUnmarshaller }

function TDeleteAccessPointForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TDeleteAccessPointForObjectLambdaResponse;
begin
  Response := TDeleteAccessPointForObjectLambdaResponse.Create;
  try
    Result := Response;
  except
    Response.Free;
    raise;
  end;
end;

function TDeleteAccessPointForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
    Exit(EAmazonS3ControlException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TDeleteAccessPointForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TDeleteAccessPointForObjectLambdaResponseUnmarshaller.Create;
end;

class function TDeleteAccessPointForObjectLambdaResponseUnmarshaller.Instance: IDeleteAccessPointForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
