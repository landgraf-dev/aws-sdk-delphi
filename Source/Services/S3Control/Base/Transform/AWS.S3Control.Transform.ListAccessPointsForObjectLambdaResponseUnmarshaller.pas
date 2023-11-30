unit AWS.S3Control.Transform.ListAccessPointsForObjectLambdaResponseUnmarshaller;

interface

uses
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3Control.Transform.ObjectLambdaAccessPointUnmarshaller, 
  AWS.S3Control.Model.ObjectLambdaAccessPoint, 
  AWS.Runtime.Exceptions, 
  System.SysUtils, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3Control.Exception;

type
  IListAccessPointsForObjectLambdaResponseUnmarshaller = IResponseUnmarshaller;
  
  TListAccessPointsForObjectLambdaResponseUnmarshaller = class(TXmlResponseUnmarshaller, IListAccessPointsForObjectLambdaResponseUnmarshaller)
  strict private
    class var FInstance: IListAccessPointsForObjectLambdaResponseUnmarshaller;
    class procedure UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListAccessPointsForObjectLambdaResponse); static;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IListAccessPointsForObjectLambdaResponseUnmarshaller; static;
  end;
  
implementation

{ TListAccessPointsForObjectLambdaResponseUnmarshaller }

function TListAccessPointsForObjectLambdaResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TListAccessPointsForObjectLambdaResponse;
begin
  Response := TListAccessPointsForObjectLambdaResponse.Create;
  try
    Result := Response;
    UnmarshallResult(AContext, Response);
  except
    Response.Free;
    raise;
  end;
end;

class procedure TListAccessPointsForObjectLambdaResponseUnmarshaller.UnmarshallResult(AContext: TXmlUnmarshallerContext; AResponse: TListAccessPointsForObjectLambdaResponse);
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
begin
  OriginalDepth := AContext.CurrentDepth;
  TargetDepth := OriginalDepth + 1;
  if AContext.IsStartOfDocument then
    Inc(TargetDepth, 1);
  while AContext.Read do
    if AContext.IsStartElement or AContext.IsAttribute then
    begin
      if AContext.TestExpression('NextToken', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.Instance;
        AResponse.NextToken := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ObjectLambdaAccessPointList/ObjectLambdaAccessPoint', TargetDepth) then
      begin
        var Unmarshaller := TObjectLambdaAccessPointUnmarshaller.Instance;
        AResponse.ObjectLambdaAccessPointList.Add(Unmarshaller.Unmarshall(AContext));
        Continue;
      end;
    end
    else
      if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
        Exit;
end;

function TListAccessPointsForObjectLambdaResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
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

class constructor TListAccessPointsForObjectLambdaResponseUnmarshaller.Create;
begin
  FInstance := TListAccessPointsForObjectLambdaResponseUnmarshaller.Create;
end;

class function TListAccessPointsForObjectLambdaResponseUnmarshaller.Instance: IListAccessPointsForObjectLambdaResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
