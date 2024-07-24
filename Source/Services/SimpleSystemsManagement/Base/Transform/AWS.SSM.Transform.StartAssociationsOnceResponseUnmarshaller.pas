unit AWS.SSM.Transform.StartAssociationsOnceResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.StartAssociationsOnceResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.AssociationDoesNotExistExceptionUnmarshaller, 
  AWS.SSM.Transform.InvalidAssociationExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IStartAssociationsOnceResponseUnmarshaller = IResponseUnmarshaller;
  
  TStartAssociationsOnceResponseUnmarshaller = class(TJsonResponseUnmarshaller, IStartAssociationsOnceResponseUnmarshaller)
  strict private
    class var FInstance: IStartAssociationsOnceResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IStartAssociationsOnceResponseUnmarshaller; static;
  end;
  
implementation

{ TStartAssociationsOnceResponseUnmarshaller }

function TStartAssociationsOnceResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TStartAssociationsOnceResponse;
begin
  Response := TStartAssociationsOnceResponse.Create;
  try
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TStartAssociationsOnceResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TJsonUnmarshallerContext;
begin
  ErrorResponse := TJsonErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TJsonUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'AssociationDoesNotExistException' then
          Exit(TAssociationDoesNotExistExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
        if ErrorResponse.Code = 'InvalidAssociationException' then
          Exit(TInvalidAssociationExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonSimpleSystemsManagementException.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TStartAssociationsOnceResponseUnmarshaller.Create;
begin
  FInstance := TStartAssociationsOnceResponseUnmarshaller.Create;
end;

class function TStartAssociationsOnceResponseUnmarshaller.Instance: IStartAssociationsOnceResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
