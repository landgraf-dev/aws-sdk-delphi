unit AWS.SSM.Transform.GetDefaultPatchBaselineResponseUnmarshaller;

interface

uses
  AWS.SSM.Model.GetDefaultPatchBaselineResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.JsonErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.SSM.Transform.InternalServerErrorExceptionUnmarshaller, 
  AWS.SSM.Exception;

type
  IGetDefaultPatchBaselineResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetDefaultPatchBaselineResponseUnmarshaller = class(TJsonResponseUnmarshaller, IGetDefaultPatchBaselineResponseUnmarshaller)
  strict private
    class var FInstance: IGetDefaultPatchBaselineResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetDefaultPatchBaselineResponseUnmarshaller; static;
  end;
  
implementation

{ TGetDefaultPatchBaselineResponseUnmarshaller }

function TGetDefaultPatchBaselineResponseUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetDefaultPatchBaselineResponse;
begin
  Response := TGetDefaultPatchBaselineResponse.Create;
  try
    AContext.Read;
    var TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BaselineId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.BaselineId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OperatingSystem', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        Response.OperatingSystem := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

function TGetDefaultPatchBaselineResponseUnmarshaller.UnmarshallException(AContext: TJsonUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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
        if ErrorResponse.Code = 'InternalServerErrorException' then
          Exit(TInternalServerErrorExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
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

class constructor TGetDefaultPatchBaselineResponseUnmarshaller.Create;
begin
  FInstance := TGetDefaultPatchBaselineResponseUnmarshaller.Create;
end;

class function TGetDefaultPatchBaselineResponseUnmarshaller.Instance: IGetDefaultPatchBaselineResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
